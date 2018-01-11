package info.brage.cursetool.commands

import com.fasterxml.jackson.core.JsonFactory
import com.fasterxml.jackson.databind.ObjectMapper
import com.fasterxml.jackson.dataformat.yaml.YAMLFactory
import com.fasterxml.jackson.module.kotlin.KotlinModule
import info.brage.cursetool.lib.Curse
import info.brage.cursetool.lib.Manifest
import info.brage.cursetool.lib.ModInfo
import info.brage.cursetool.lib.PageNotFound
import kotlinx.coroutines.experimental.CommonPool
import kotlinx.coroutines.experimental.async
import kotlinx.coroutines.experimental.runBlocking
import java.nio.file.FileSystems

data class CurseManifest(
        val minecraft: CurseMinecraft,
        val manifestType: String,
        val manifestVersion: Int,
        val name: String,
	val description: String?,
        val version: String,
        val author: String,
        val projectID: Int,
        val files: List<CurseMod>,
        val overrides: String
)

data class CurseMinecraft(
        val version: String,
	val libraries: String?,
        val modLoaders: List<CurseModLoaders>
)

data class CurseModLoaders(
        val id: String,
        val primary: Boolean
)

data class CurseMod(val projectID: Int, val required: Boolean, val fileID: Int)

fun Import(version: String, files: List<String>) {
    val fs = FileSystems.getDefault()
    val filter = Curse.filterVersion(version)

    val inputMapper = ObjectMapper(JsonFactory())
    inputMapper.registerModule(KotlinModule())

    val outputMapper = ObjectMapper(YAMLFactory())
    outputMapper.registerModule(KotlinModule())

    files.forEach {
        check(it.endsWith(".json"))
        val input = fs.getPath(it).toFile().bufferedReader().use {
            inputMapper.readValue(it, CurseManifest::class.java)
        }
        val outPath = it.replaceAfterLast(".", "yaml")
        runBlocking {
            outputMapper.writeValue(fs.getPath(outPath).toFile(), Manifest(
                    version = input.minecraft.version,
                    mods = input.files.map {
                        async(CommonPool) {
                            val bareModInfo = ModInfo(id = it.projectID, required = it.required)
                            val mod = try {
                                Curse.fillModInfo(filter, bareModInfo)
                            } catch (e: PageNotFound) {
                                println("Warning: Could not find project ID ${it.projectID}")
                                bareModInfo
                            }
                            val file = try {
                                listOf(Curse.getFileInfo(it.projectID, it.fileID))
                            } catch (e: PageNotFound) {
                                println("Warning: Did not find preferred file for project ${mod.id} (${mod.name})")
                                if (mod.files.isEmpty()) {
                                    println("  Nor anything else.")
                                }
                                mod.files.take(1)
                            }
                            mod.copy(files = file)
                        }
                    }.map { it.await() }.toSet()
            ))
        }
    }
}

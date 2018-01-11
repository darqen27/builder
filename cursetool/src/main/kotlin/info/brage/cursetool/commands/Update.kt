package info.brage.cursetool.commands

import info.brage.cursetool.lib.*
import kotlinx.coroutines.experimental.CommonPool
import kotlinx.coroutines.experimental.async
import java.nio.file.FileSystems


fun Update(files: List<String>) = kotlinx.coroutines.experimental.runBlocking {
    val fs = FileSystems.getDefault()
    files.forEach {
        // The user-supplied manifest.
        val path = fs.getPath(it)
        check(path.toString().endsWith(".yaml"), { "$path is not a .yaml file" })
        val manifest = loadFromManifest(path)
        // A map of all curse mods seen so far, by ID.
        val curseMods = HashMap<Int, ModInfo>()
        // All mods period.
        var mods = emptyList<ModInfo>()
        // Mods that are about to (or being) processed.
        var pending = manifest.mods
        // *Names* of seen mods, since we don't get dependencies by ID.
        var seen = emptySet<String>()

        val filters = manifest.version!!.let {
            val bits = it.split(".")
            val filters = if (bits.size == 3) arrayOf(bits, bits.take(2)) else arrayOf(bits)
            filters.map { Curse.filterVersion(it.joinToString(".")) }
        }

        while (pending.isNotEmpty()) {
            val expanded = pending.map {
                async(CommonPool) {
                    var filled = Curse.fillModInfo(filters[0], it)
                    for (filter in filters.drop(1)) {
                        if (filled.files.isNotEmpty()) break
                        filled = Curse.fillModInfo(filter, it)
                    }
                    filled.copy(
                            files = (if (it.files.isNotEmpty()) it.files else filled.files)
                                    .take(1)
                                    .map { Curse.fillFileInfo(path, it) }
                    )
                }
            }
            expanded.forEach {
                val mod = it.await()
                // Duplicate?
                if (mod.name!! in seen) {
                    println("Dropping duplicate mod ${mod.name}")
                } else {
                    // Add it to the list of seen mods.
                    if (mod.id != null) {
                        if (mod.id in curseMods) {
                            try {
                                curseMods[mod.id] = joinMods(curseMods[mod.id]!!, mod)
                            } catch (e: InconsistentModSetup) {
                                println("Dropping duplicate mod ${e.b}")
                            }
                        } else {
                            curseMods[mod.id] = mod
                        }
                    }
                    seen += mod.name
                    mods += mod
                }
            }
            pending = curseMods.flatMap {
                it.value.deps
                        .filter { it !in seen }
                        .map { ModInfo(name = it) }
            }.toSet()
        }

        NixWriter().write(
                manifest.copy(mods = mods.toSet()),
                fs.getPath(it.substringBeforeLast('.') + ".nix"))
    }
}
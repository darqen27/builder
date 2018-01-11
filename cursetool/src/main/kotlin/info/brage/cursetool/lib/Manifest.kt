package info.brage.cursetool.lib

import com.fasterxml.jackson.databind.ObjectMapper
import com.fasterxml.jackson.dataformat.yaml.YAMLFactory
import com.fasterxml.jackson.module.kotlin.KotlinModule
import org.apache.commons.httpclient.util.URIUtil
import java.io.BufferedWriter
import java.nio.file.Files
import java.nio.file.Path

data class Manifest(
        val version: String?,
        val mods: Set<ModInfo> = emptySet(),
        val imports: Set<Path> = emptySet()
)

data class ModInfo(
        val name: String? = null,
        val id: Int? = null,
        val title: String? = null,
        val files: List<FileInfo> = emptyList(),
        val side: Side = Side.both,
        val deps: Set<String> = emptySet(),
        val required: Boolean = true,
        val default: Boolean = true,
        val curse: Boolean = true
)

data class FileInfo(
        val name: String? = null,
        val id: Int? = null,
        val maturity: Maturity? = null,
        val filePageUrl: String? = null,
        val src: String? = null,
        val md5: String? = null)

enum class Maturity {
    release, beta, alpha
}

enum class Side {
    server, client, both
}

data class InconsistentModSetup(val a: ModInfo, val b: ModInfo) : Exception()

fun joinMods(a: ModInfo, b: ModInfo): ModInfo {
    fun <T> c(x: T?, y: T?): T? {
        if (x == null) return y
        if (y == null) return x
        if (x == y) return x
        throw InconsistentModSetup(a, b)
    }

    fun <T> d(x: T, y: T, default: T): T {
        if (x == y) return x
        if (x == default) return y
        if (y == default) return x
        throw InconsistentModSetup(a, b)
    }

    return ModInfo(
            name = c(a.name, b.name),
            id = c(a.id, b.id),
            title = c(a.title, b.title),
            files = d(a.files, b.files, emptyList()),
            side = d(a.side, b.side, Side.both),
            deps = d(a.deps, b.deps, emptySet()),
            required = d(a.required, b.required, true),
            default = d(a.default, b.default, true),
            curse = d(a.curse, b.curse, true)
    )
}

fun joinModSets(m1: Set<ModInfo>, m2: Set<ModInfo>): Set<ModInfo> {
    val combo = hashMapOf<Int, ModInfo>()
    val orphans = mutableSetOf<ModInfo>()
    m1.forEach { if (it.id == null) orphans.add(it) else combo.put(it.id, it) }
    m2.forEach {
        if (it.id == null) {
            orphans.add(it)
        } else if (it.id in combo) {
            combo[it.id] = joinMods(combo[it.id]!!, it)
        } else {
            combo[it.id] = it
        }
    }
    return (combo.values + orphans).toSet()
}

fun loadFromManifest(path: Path): Manifest {
    val mapper = ObjectMapper(YAMLFactory())
    mapper.registerModule(KotlinModule())

    var seen: Set<Path> = emptySet()
    var pending: Set<Path> = setOf(path)
    var manifest = Manifest(null)

    while (pending.isNotEmpty()) {
        val file = pending.first()
        pending = pending.minusElement(file)
        seen = seen.plusElement(file)
        val extras = Files.newBufferedReader(file).use {
            mapper.readValue(it, Manifest::class.java)
        }
        extras.imports
                .map { file.resolveSibling(it) }
                .minus(seen)
                .forEach { pending = pending.plusElement(it) }
        manifest = Manifest(
                version = joinVersions(manifest.version, extras.version),
                mods = joinModSets(manifest.mods, extras.mods),
                imports = manifest.imports + extras.imports
        )
    }
    return manifest
}

private fun joinVersions(v1: String?, v2: String?): String? {
    if (v1 != null && v2 != null && v1 != v2) {
        throw Exception("Incompatible version requests $v1 and $v2")
    } else if (v1 == null) {
        return v2
    } else {
        return v1
    }
}

/**
 * Writes manifest out to a .nix file.
 */
class NixWriter {
    var indentation = 0

    lateinit var w: BufferedWriter

    private fun BufferedWriter.line(l: String) {
        write(" ".repeat(indentation))
        write(l)
        newLine()
    }

    private fun indent(function: () -> Unit) {
        indentation += 2
        function()
        indentation -= 2
    }

    private fun escape(s: String) = s.replace("\"", "\\\"")

    private fun wrap(s: String) = "\"${escape(s)}\""

    private fun list(tag: String, l: Collection<Any>) {
        w.line("${wrap(tag)} = [${l.map { wrap(it.toString()) }.joinToString(" ")}];")
    }

    private fun string(tag: String, s: Any) {
        w.line("${wrap(tag)} = ${wrap(s.toString())};")
    }

    private fun raw(tag: String, r: Any) {
        w.line("${wrap(tag)} = $r;")
    }

    private fun mods(tag: String, mods: Set<ModInfo>) {
        w.line("${wrap(tag)} = {")
        indent {
            mods.sortedBy { it.name }.forEach {
                w.line("${wrap(it.name!!)} = {")
                indent {
                    string("title", it.title ?: it.name)
                    string("name", it.name)
                    if (it.id != null)
                        raw("id", it.id)
                    string("side", it.side)
                    raw("required", it.required)
                    raw("default", it.default)
                    list("deps", it.deps)
                    if (it.files.isNotEmpty()) {
                        val f = it.files.first()
                        val filename: String = (f.name ?: f.src!!.substringAfterLast("/"))
			    .replace("'", "_")
			string("filename", filename)
                        if (f.maturity != null) {
                            string("maturity", f.maturity)
                        }
                        string("encoded", URIUtil.encodePath(filename))
                        if (f.filePageUrl != null)
                            string("page", f.filePageUrl)
                        if (f.src != null) {
                            if (f.src.startsWith("http")) {
                                string("src", f.src)
                                string("type", "remote")
                            } else {
                                raw("src", f.src)
                                string("type", "local")
                            }
                        } else {
                            string("type", "missing")
                        }
                        if (f.md5 != null)
                            string("md5", f.md5)
                        else
                            string("md5", "missing")
                    } else {
                        string("type", "missing")
                    }
                }
                w.line("};")
            }
        }
        w.line("};")
    }

    fun write(manifest: Manifest, path: Path) {
        path.toFile().bufferedWriter().use {
            w = it
            w.write("{\n")
            indent {
                if (manifest.version != null)
                    string("version", manifest.version)
                list("imports", manifest.imports)
                mods("mods", manifest.mods)
            }
            w.write("}\n")
        }
    }
}

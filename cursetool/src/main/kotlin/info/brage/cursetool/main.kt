package info.brage.cursetool

import com.beust.jcommander.JCommander
import com.beust.jcommander.Parameter
import info.brage.cursetool.commands.Fetch
import info.brage.cursetool.commands.Import
import info.brage.cursetool.commands.Update
import java.lang.StringBuilder

/**
 * Primary entry points
 */
fun main(args: Array<String>) {
    val flags = Flags(args)

    if (flags.commands.isEmpty() || flags.help) {
        help(flags.usage)
    } else when (flags.commands[0]) {
        "fetch" -> Fetch(flags.version, flags.commands[1])
        "update" -> Update(flags.commands.drop(1))
        "import" -> Import(flags.version, flags.commands.drop(1))
    }
}

class Flags(val args: Array<String>) {
    @Parameter
    var commands: List<String> = ArrayList()

    @Parameter(names = arrayOf("--help"), help = true)
    var help = false

    @Parameter(names = arrayOf("--version"))
    var version = "1.10.2"

    val usage: String

    init {
        val jCommander = JCommander.newBuilder()
                .addObject(this)
                .build()
        usage = StringBuilder().apply { jCommander.usage(this) }.toString()
                .lines()
                .drop(1)
                .map { it.drop(2) }
                .joinToString("\n")
        jCommander.parse(*args)
    }
}

fun help(usage: String) {
    print("""Syntax: cursetool <operation> [flags]
            |
            |$usage
            |
            |Operations:
            |
            |  fetch <mod>:
            |       Fetches the most recent version of a
            |       single mod, excluding alphas.
            |
            |  update [yaml file(s)]:
            |       Write out the most recent versions of
            |       each mod in the given manifest(s),
            |       plus dependencies.
            |
            |  import [json file(s)]:
            |       Convert a Curseforge .json pack manifest to
            |       cursetool .yaml format.
""".trimMargin())
}

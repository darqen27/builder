package info.brage.cursetool.commands

import info.brage.cursetool.lib.Curse
import info.brage.cursetool.lib.Maturity
import info.brage.cursetool.lib.ModInfo
import java.nio.file.FileSystems


fun Fetch(version: String, mod: String) = kotlinx.coroutines.experimental.runBlocking {
    val info = Curse.fillModInfo(Curse.filterVersion(version), ModInfo(name = mod))
    val file = info.files.filter { it.maturity != Maturity.alpha }.firstOrNull()
    val base = FileSystems.getDefault().getPath(".")
    if (file == null) {
        println("No valid release found!")
    } else {
        Curse.download(Curse.fillFileInfo(base, file))
    }
}

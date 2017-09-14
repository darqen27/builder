import mods.appeng.Inscriber;

val siliconDust = <Eln:Eln.sharedItem:7696>;
val inscribedSilicon = <appliedenergistics2:item.ItemMultiMaterial:20>;
val siliconInscriber = <appliedenergistics2:item.ItemMultiMaterial:19>;

<ore:itemSilicon>.add(siliconDust);
Inscriber.addRecipe([siliconDust], siliconInscriber, null, inscribedSilicon, "Inscribe");

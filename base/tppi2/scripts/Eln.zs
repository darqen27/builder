import mods.appeng.Inscriber;

val siliconDust = <Eln:Eln.sharedItem:7696>;
val inscribedSilicon = <appliedenergistics2:item.ItemMultiMaterial:20>;
val siliconInscriber = <appliedenergistics2:item.ItemMultiMaterial:19>;

<ore:itemSilicon>.add(siliconDust);
Inscriber.addRecipe([siliconDust], siliconInscriber, null, inscribedSilicon, "Inscribe");


// Workaround brush bug
recipes.addShapeless(<Eln:Eln.sharedItem:7616>.withTag({life: 32}), [<minecraft:dye:0>, <Eln:Eln.sharedItem:7616>]);
recipes.addShapeless(<Eln:Eln.sharedItem:7617>.withTag({life: 32}), [<minecraft:dye:1>, <Eln:Eln.sharedItem:7617>]);
recipes.addShapeless(<Eln:Eln.sharedItem:7618>.withTag({life: 32}), [<minecraft:dye:2>, <Eln:Eln.sharedItem:7618>]);
recipes.addShapeless(<Eln:Eln.sharedItem:7619>.withTag({life: 32}), [<minecraft:dye:3>, <Eln:Eln.sharedItem:7619>]);
recipes.addShapeless(<Eln:Eln.sharedItem:7620>.withTag({life: 32}), [<minecraft:dye:4>, <Eln:Eln.sharedItem:7620>]);
recipes.addShapeless(<Eln:Eln.sharedItem:7621>.withTag({life: 32}), [<minecraft:dye:5>, <Eln:Eln.sharedItem:7621>]);
recipes.addShapeless(<Eln:Eln.sharedItem:7622>.withTag({life: 32}), [<minecraft:dye:6>, <Eln:Eln.sharedItem:7622>]);
recipes.addShapeless(<Eln:Eln.sharedItem:7623>.withTag({life: 32}), [<minecraft:dye:7>, <Eln:Eln.sharedItem:7623>]);
recipes.addShapeless(<Eln:Eln.sharedItem:7624>.withTag({life: 32}), [<minecraft:dye:8>, <Eln:Eln.sharedItem:7624>]);
recipes.addShapeless(<Eln:Eln.sharedItem:7625>.withTag({life: 32}), [<minecraft:dye:9>, <Eln:Eln.sharedItem:7625>]);
recipes.addShapeless(<Eln:Eln.sharedItem:7626>.withTag({life: 32}), [<minecraft:dye:10>, <Eln:Eln.sharedItem:7626>]);
recipes.addShapeless(<Eln:Eln.sharedItem:7627>.withTag({life: 32}), [<minecraft:dye:11>, <Eln:Eln.sharedItem:7627>]);
recipes.addShapeless(<Eln:Eln.sharedItem:7628>.withTag({life: 32}), [<minecraft:dye:12>, <Eln:Eln.sharedItem:7628>]);
recipes.addShapeless(<Eln:Eln.sharedItem:7629>.withTag({life: 32}), [<minecraft:dye:13>, <Eln:Eln.sharedItem:7629>]);
recipes.addShapeless(<Eln:Eln.sharedItem:7630>.withTag({life: 32}), [<minecraft:dye:14>, <Eln:Eln.sharedItem:7630>]);
recipes.addShapeless(<Eln:Eln.sharedItem:7631>.withTag({life: 32}), [<minecraft:dye:15>, <Eln:Eln.sharedItem:7631>]);

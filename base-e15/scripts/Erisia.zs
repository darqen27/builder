val iron = <ore:ingotIron>;
val ironCable = <ore:craftingWireIron>;
val copperCable = <ore:craftingWireCopper>;
val tinCable = <ore:craftingWireTin>;
val quartz = <ore:craftingQuartz>;
val redstone = <minecraft:redstone>;

// Remove the tree-tap.
recipes.remove(<Eln:Eln.SixNode:7424>);

// Add an early-game solar panel recipe.
val solarPanel = <Eln:Eln.TransparentNode:3073>;
recipes.remove(solarPanel);
recipes.addShaped(solarPanel,
  [[iron, iron, iron],
   [tinCable, <ore:plateSilicon>, tinCable],
   [iron, iron, iron]]);
recipes.addShaped(solarPanel,
  [[iron, iron, iron],
   [tinCable, <ore:craftingQuartz>, tinCable],
   [iron, iron, iron]]);

// And basic chip recipe.
recipes.addShaped(<Eln:Eln.sharedItem:7680>,
  [[redstone, redstone, redstone],
   [redstone, quartz, redstone],
   [redstone, redstone, redstone]]);

// Alternate, non-tungsten alloy dust recipes.
recipes.addShapeless(<Eln:Eln.sharedItem:9>*2,
  [<ore:dustNickel>, <ore:dustIron>, <ore:dustIron>, <ore:dustBismuth>]);
recipes.addShapeless(<Eln:Eln.sharedItem:9>*4,
  [<ore:dustNickel>, <ore:dustIron>, <ore:dustBismuth>, <ore:dustAluminium>]);

// Allow conversion from GT cables.
recipes.addShapeless(<Eln:Eln.SixNode:2048>, [ironCable]);
recipes.addShapeless(<Eln:Eln.SixNode:2052>, [tinCable]);
recipes.addShapeless(<Eln:Eln.SixNode:2056>, [copperCable]);
recipes.addShapeless(<Eln:Eln.SixNode:2060>, [copperCable, <ore:itemRubber>]);
recipes.addShapeless(<Eln:Eln.SixNode:2064>, [<ore:cableGt01Tungsten>]);

// Re-add bread, for CfB's sake.
furnace.addRecipe(<minecraft:bread>, <ore:foodDough>);

// Dimensional Doors recipes
recipes.remove(<dimdoors:Personal Dimensional Door Item>);
mods.botania.ElvenTrade.addRecipe(<dimdoors:Personal Dimensional Door Item>,
  [<dimdoors:Warp Door Item>]);
mods.botania.ManaInfusion.addAlchemy(<dimdoors:Stable Fabric Item>,
  <dimdoors:World Thread>*4, 50000);
mods.botania.ManaInfusion.addConjuration(<dimdoors:World Thread>*2,
  <dimdoors:World Thread>, 100000);
mods.botania.ManaInfusion.addInfusion(<dimdoors:Stabilized Rift Signature>,
  <dimdoors:Rift Signature>, 20000);
mods.botania.ElvenTrade.addRecipe(<dimdoors:Rift Signature>,
  [<dimdoors:World Thread>]);

// Plates.
mods.gregtech.PlateBender.addRecipe(<Eln:Eln.sharedItem:7691>, <Eln:Eln.sharedItem:519>, 600, 40);

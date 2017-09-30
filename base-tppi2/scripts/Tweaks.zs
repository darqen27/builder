// Fix missing oredict registrations.
<ore:plateIron>.add(<Railcraft:part.plate>);

// Add an alternate recipe for sheet iron.
val sheetMetalBlock = <ImmersiveEngineering:metalDecoration:10>;
recipes.remove(sheetMetalBlock);
recipes.addShaped(sheetMetalBlock*4, [
  [<ore:plateIron>, null, <ore:plateIron>],
  [null, null, null],
  [<ore:plateIron>, null, <ore:plateIron>]]);

// Antique atlas should be ~free, minimap mods are.
val atlas = <antiqueatlas:emptyAntiqueAtlas>;
recipes.remove(atlas);
recipes.addShapeless(atlas, [<minecraft:stick>, <minecraft:stick>]);

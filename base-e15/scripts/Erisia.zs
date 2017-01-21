val iron = <ore:ingotIron>;
val ironCable = <ore:craftingWireIron>;
val copperCable = <ore:craftingWireCopper>;
val tinCable = <ore:craftingWireTin>;

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

// Allow conversion from GT cables.
recipes.addShapeless(<Eln:Eln.SixNode:2048>, [ironCable]);
recipes.addShapeless(<Eln:Eln.SixNode:2052>, [tinCable]);
recipes.addShapeless(<Eln:Eln.SixNode:2056>, [copperCable]);
recipes.addShapeless(<Eln:Eln.SixNode:2060>, [copperCable, <ore:itemRubber>]);
recipes.addShapeless(<Eln:Eln.SixNode:2064>, [<ore:cableGt01Tungsten>]);

#Scannable

#=====Crafting Components
#Module
recipes.remove(<scannable:module_blank>);
recipes.addShaped(<scannable:module_blank>, [[<ore:dyeGreen>, <ore:dyeGreen>, <ore:dyeGreen>],[<minecraft:clay>, null, <minecraft:clay>], [<minecraft:clay>, null, <minecraft:clay>]]);

#Ore Module
recipes.remove(<scannable:module_ore_common>);
recipes.addShaped(<scannable:module_ore_common>, [[<scannable:module_blank>, <ore:blockCharcoal>, null],[null, null, null], [null, null, null]]);

#=====Tools

#Scanner
recipes.remove(<scannable:scanner>);
recipes.addShaped(<scannable:scanner>, [[<minecraft:clay>, null, <minecraft:clay>],[<minecraft:iron_bars>, <minecraft:glass>, <minecraft:iron_bars>], [<minecraft:wool>, <ore:blockCharcoal>, <minecraft:wool>]]);

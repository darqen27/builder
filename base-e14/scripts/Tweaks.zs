#fix various ores in the Magneticraft Crusher
mods.magneticraft.Crusher.addRecipe(<NuclearCraft:blockOre:7>, <Magneticraft:item.chunks:20>, <NuclearCraft:material:47>, 0.05, <NuclearCraft:material:69>, 0.01);
furnace.remove(<*>, <Magneticraft:item.chunks:20>);
furnace.addRecipe(<NuclearCraft:material:42> * 2, <Magneticraft:item.chunks:20>, 0.5);

mods.magneticraft.Grinder.addRecipe(<appliedenergistics2:tile.OreQuartz>, <appliedenergistics2:item.ItemMultiMaterial:2>, <appliedenergistics2:item.ItemMultiMaterial:2>, 1, <appliedenergistics2:item.ItemMultiMaterial:2>, 0.01);
mods.magneticraft.Grinder.addRecipe(<appliedenergistics2:tile.OreQuartzCharged>, <appliedenergistics2:item.ItemMultiMaterial:2>, <appliedenergistics2:item.ItemMultiMaterial:2>, 1, <appliedenergistics2:item.ItemMultiMaterial:2>, 0.01);
mods.magneticraft.Grinder.addRecipe(<appliedenergistics2:item.ItemMultiMaterial:1>, <appliedenergistics2:item.ItemMultiMaterial:2>, <appliedenergistics2:item.ItemMultiMaterial:2>, 0.01, <appliedenergistics2:item.ItemMultiMaterial:2>, 0.01);
mods.magneticraft.Grinder.addRecipe(<appliedenergistics2:item.ItemMultiMaterial>, <appliedenergistics2:item.ItemMultiMaterial:2>, <appliedenergistics2:item.ItemMultiMaterial:2>, 0.01, <appliedenergistics2:item.ItemMultiMaterial:2>, 0.01);
mods.magneticraft.Grinder.addRecipe(<appliedenergistics2:item.ItemMultiMaterial:7>, <appliedenergistics2:item.ItemMultiMaterial:8>, <appliedenergistics2:item.ItemMultiMaterial:8>, 0.01, <appliedenergistics2:item.ItemMultiMaterial:8>, 0.01);

#fix Nether Quartz dust ore dictionary
<ore:dustNetherQuartz>.add(<Magneticraft:item.dustQuartz>);
<ore:dustNetherQuartz>.add(<ImmersiveEngineering:metal:18>);
<ore:dustQuartz>.remove(<Magneticraft:item.dustQuartz>);
<ore:dustQuartz>.remove(<ImmersiveEngineering:metal:18>);
furnace.addRecipe(<appliedenergistics2:item.ItemMultiMaterial:5>, <ore:dustNetherQuartz>);

#fix Certus Quartz in IE Crusher
mods.immersiveengineering.Crusher.addRecipe(<appliedenergistics2:item.ItemMultiMaterial:2>, <appliedenergistics2:item.ItemMultiMaterial:1>, 6000, <appliedenergistics2:item.ItemMultiMaterial:2>, 0.01);
mods.immersiveengineering.Crusher.addRecipe(<appliedenergistics2:item.ItemMultiMaterial:2>, <appliedenergistics2:item.ItemMultiMaterial>, 6000, <appliedenergistics2:item.ItemMultiMaterial:2>, 0.01);
mods.immersiveengineering.Crusher.addRecipe(<appliedenergistics2:item.ItemMultiMaterial:2>, <appliedenergistics2:item.ItemMultiMaterial>, 6000, <appliedenergistics2:item.ItemMultiMaterial:2>, 0.01);
mods.immersiveengineering.Crusher.addRecipe(<appliedenergistics2:item.ItemMultiMaterial:8>, <appliedenergistics2:item.ItemMultiMaterial:7>, 6000, <appliedenergistics2:item.ItemMultiMaterial:8>, 0.01);

#fix Pneumaticraft Speed Upgrade
recipes.addShaped(<PneumaticCraft:machineUpgrade:5>, [[<ore:gemLapis>, <minecraft:sugar>, <ore:gemLapis>], [<minecraft:sugar>, <HydCraft:bucketLubricant>, <minecraft:sugar>], [<ore:gemLapis>, <minecraft:sugar>, <ore:gemLapis>]]); 

#add mineral veins for various ores/gems
//Excavator
//MineralString, MineralWeight, FailChance, OreDictStringArray, OreChanceArray, DimensionIDArray, isWhitelistOrBlacklist //true=blacklist; false=whitelist
#<ore:oreMeteoricIron>.add(<GalacticraftCore:item.meteoricIronRaw>);

mods.immersiveengineering.Excavator.addMineral("Tungsten", 20, 66, ["oreTungsten", "oreSalt"], [98, 2], [0], false);
mods.immersiveengineering.Excavator.addMineral("Emery", 10, 35, ["limestone", "oreEmery"], [88, 12], [0], false);
mods.immersiveengineering.Excavator.addMineral("OreRich", 35, 20, ["oreCopper", "oreTin", "oreCheese", "oreMeteoricIron"], [45, 45, 4, 1], [-28], false);
mods.immersiveengineering.Excavator.addMineral("OreRich", 35, 20, ["oreIron", "oreCopper", "oreTin", "oreDesh", "oreMeteoricIron"], [30, 30, 30, 5, 5], [-29], false);
mods.immersiveengineering.Excavator.addMineral("ElementalInfused", 10, 50, ["oreShardElemental", "oreShardFire", "oreShardWater", "oreShardEarth", "oreShardAir"], [60, 10, 10, 10, 10], [0], false);
mods.immersiveengineering.Excavator.addMineral("Tritanium", 30, 10, ["oreTritanium", "oreDilithium"], [99, 1], [0], false);
mods.immersiveengineering.Excavator.addMineral("GemMotherlode", 5, 75, ["oreChaos", "oreRuby", "oreGarnet", "oreTopaz", "oreHeliodor", "orePeridot", "oreBeryl", "oreAquamarine", "oreSapphire", "oreIolite", "oreAmethyst", "oreMorganite", "oreOnyx"], [76, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2], [0], false);
mods.immersiveengineering.Excavator.addMineral("FusionIsotopes", 20, 35, ["oreBoron", "oreLithium"], [50, 50], [0], false);
mods.immersiveengineering.Excavator.addMineral("RadioactiveOres", 20, 35, ["oreUranium", "oreThorium", "orePlutonium"], [65, 30, 5], [0], false);

#tooltips for MO isolinear circuits

<mo:isolinear_circuit:1>.addTooltip("Crafted with a Mk1 circuit and a gold ingot in an inscriber.");
<mo:isolinear_circuit:2>.addTooltip("Crafted with a Mk2 circuit and a diamond in an inscriber.");
<mo:isolinear_circuit:3>.addTooltip("Crafted with a Mk3 circuit and an emerald in an inscriber.");

#fix sawdust
mods.immersiveengineering.Crusher.addRecipe(<ThermalExpansion:material:512>, <ore:logWood>, 6000, <ThermalExpansion:material:512>, 1);

#fix oreDict tags because some people have weird ideas on how to spell aluminum 
<ore:dustAluminum>.add(<eng_toolbox:Dust:17>);

furnace.addRecipe(<ImmersiveEngineering:metal:1>, <Magneticraft:item.dust:13>, 0.5);

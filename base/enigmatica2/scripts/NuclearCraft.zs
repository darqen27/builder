import mods.jei.JEI.removeAndHide as rh;

# Custom recipes made by NillerMedDild
	print("--- loading NuclearCraft.zs ---");

# *======= Recipes =======*
# A slight buff to the Deuterium recipe
	mods.nuclearcraft.electrolyser.addRecipe(<liquid:heavywater> * 1000, <liquid:deuterium> * 500,  <liquid:deuterium> * 500, <liquid:oxygen> * 500, <liquid:tritium> * 50);
	mods.nuclearcraft.electrolyser.addRecipe(<liquid:ic2heavy_water> * 1000, <liquid:deuterium> * 500,  <liquid:deuterium> * 500, <liquid:oxygen> * 500, <liquid:tritium> * 50);
	mods.nuclearcraft.electrolyser.addRecipe(<liquid:water> * 1000, <liquid:hydrogen> * 500, <liquid:hydrogen> * 500,  <liquid:deuterium> * 50, <liquid:oxygen> * 500);
	mods.nuclearcraft.electrolyser.removeRecipeWithOutput(<liquid:deuterium> * 475,  <liquid:deuterium> * 475, <liquid:oxygen> * 500, <liquid:tritium> * 50);
	mods.nuclearcraft.electrolyser.removeRecipeWithOutput(<liquid:hydrogen> * 475,  <liquid:hydrogen> * 475, <liquid:deuterium> * 50, <liquid:oxygen> * 500);

	mods.nuclearcraft.alloy_furnace.addRecipe(<thermalfoundation:material:128> * 3, <thermalfoundation:material:129>, <thermalfoundation:material:163> * 4);
	mods.nuclearcraft.alloy_furnace.removeRecipeWithOutput(<nuclearcraft:alloy> * 4);
	mods.nuclearcraft.alloy_furnace.removeRecipeWithOutput(<ic2:resource:5> * 4);


# Steel
	mods.nuclearcraft.alloy_furnace.addRecipe(<minecraft:iron_ingot>, <ore:ingotGraphite:2> * 2, <thermalfoundation:material:160>);
	mods.nuclearcraft.alloy_furnace.removeRecipeWithOutput(<nuclearcraft:alloy:5>);
	mods.nuclearcraft.alloy_furnace.removeRecipeWithOutput(<ic2:ingot:5>);
	mods.nuclearcraft.alloy_furnace.removeRecipeWithOutput(<ic2:resource:8>);
	mods.nuclearcraft.alloy_furnace.removeRecipeWithOutput(<ic2:resource:8>);
	mods.nuclearcraft.alloy_furnace.removeRecipeWithOutput(<ic2:ingot:5> * 2);

// Pressurizer
	mods.nuclearcraft.pressurizer.addRecipe(<ore:ingotIron>, <thermalfoundation:material:32>);
	mods.nuclearcraft.pressurizer.addRecipe(<ore:ingotGold>, <thermalfoundation:material:33>);
	mods.nuclearcraft.pressurizer.addRecipe(<ore:ingotCopper>, <thermalfoundation:material:320>);
	mods.nuclearcraft.pressurizer.addRecipe(<ore:ingotTin>, <thermalfoundation:material:321>);
	mods.nuclearcraft.pressurizer.addRecipe(<ore:ingotLead>, <thermalfoundation:material:323>);
	mods.nuclearcraft.pressurizer.addRecipe(<ore:ingotBronze>, <thermalfoundation:material:355>);
	mods.nuclearcraft.pressurizer.addRecipe(<ore:ingotSteel>, <thermalfoundation:material:352>);

	mods.nuclearcraft.pressurizer.removeRecipeWithOutput(<ic2:plate>);
	mods.nuclearcraft.pressurizer.removeRecipeWithOutput(<ic2:plate:1>);
	mods.nuclearcraft.pressurizer.removeRecipeWithOutput(<ic2:plate:2>);
	mods.nuclearcraft.pressurizer.removeRecipeWithOutput(<ic2:plate:3>);
	mods.nuclearcraft.pressurizer.removeRecipeWithOutput(<ic2:plate:5>);
	mods.nuclearcraft.pressurizer.removeRecipeWithOutput(<ic2:plate:7>);
	mods.nuclearcraft.pressurizer.removeRecipeWithOutput(<ic2:plate:8>);
	
// Manufactory
	mods.nuclearcraft.manufactory.addRecipe(<minecraft:quartz>, <actuallyadditions:item_dust:5>);
	mods.nuclearcraft.manufactory.removeRecipeWithOutput(<nuclearcraft:gem_dust:2>);


# Rhodochrosite
	mods.actuallyadditions.AtomicReconstructor.addRecipe(<nuclearcraft:gem>, <actuallyadditions:item_crystal>, 5000);

# Beryllium Dust
	mods.mekanism.infuser.addRecipe("DIAMOND", 20, <thermalfoundation:material:768>, <nuclearcraft:dust:9>);

# Zirconium Dust
	mods.mekanism.infuser.addRecipe("DIAMOND", 20, <actuallyadditions:item_dust:5>, <nuclearcraft:dust:10>);

# Fluorite
	mods.actuallyadditions.AtomicReconstructor.addRecipe(<nuclearcraft:gem:2>, <actuallyadditions:item_crystal:1>, 5000);

# *======= Machine Integration =======*
	
//Manufactory:
//mods.nuclearcraft.manufactory.addRecipe(itemInput, itemOutput, processTime[optional]);
//mods.nuclearcraft.manufactory.removeRecipe(itemOutput);

//Isotope Separator:
//mods.nuclearcraft.isotope_separator.addRecipe(itemInput, itemOutput1, itemOutput2, processTime[optional]);
//mods.nuclearcraft.isotope_separator.removeRecipe(itemOutput1, itemOutput2);

//Decay Hastener:
//mods.nuclearcraft.decay_hastener.addRecipe(itemInput, itemOutput, processTime[optional]);
//mods.nuclearcraft.decay_hastener.removeRecipe(itemOutput);

//Fuel Reprocessor:
//mods.nuclearcraft.fuel_reprocessor.addRecipe(itemInput, itemOutput1, itemOutput2, itemOutput3, itemOutput4, processTime[optional]);
//mods.nuclearcraft.fuel_reprocessor.removeRecipe(itemOutput1, itemOutput2, itemOutput3, itemOutput4);

//Alloy Furnace:
//mods.nuclearcraft.alloy_furnace.addRecipe(itemInput1, itemInput2, itemOutput, processTime[optional]);
//mods.nuclearcraft.alloy_furnace.removeRecipe(itemOutput);

//Infuser:
//mods.nuclearcraft.infuser.addRecipe(itemInput, fluidInput, itemOutput, processTime[optional]);
//mods.nuclearcraft.infuser.removeRecipe(itemOutput);

//Melter:
//mods.nuclearcraft.melter.addRecipe(itemInput, fluidOutput, processTime[optional]);
//mods.nuclearcraft.melter.removeRecipe(fluidOutput);

//Supercooler:
//mods.nuclearcraft.supercooler.addRecipe(fluidInput, fluidOutput, processTime[optional]);
//mods.nuclearcraft.supercooler.removeRecipe(fluidOutput);

//Electrolyser:
//mods.nuclearcraft.electrolyser.addRecipe(fluidInput, fluidOutput1, fluidOutput2, fluidOutput3, fluidOutput4, processTime[optional]);
//mods.nuclearcraft.electrolyser.removeRecipe(fluidOutput1, fluidOutput2, fluidOutput3, fluidOutput4);

//Irradiator:
//mods.nuclearcraft.irradiator.addRecipe(fluidInput1, fluidInput2, fluidOutput1, fluidOutput2, processTime[optional]);
//mods.nuclearcraft.irradiator.removeRecipe(fluidOutput1, fluidOutput2);

//Ingot Former:
//mods.nuclearcraft.ingot_former.addRecipe(fluidInput, itemOutput, processTime[optional]);
//mods.nuclearcraft.ingot_former.removeRecipe(itemOutput);

//Pressurizer:
//mods.nuclearcraft.pressurizer.addRecipe(itemInput, itemOutput, processTime[optional]);
//mods.nuclearcraft.pressurizer.removeRecipe(itemOutput);

//Chemical Reactor:
//mods.nuclearcraft.chemical_reactor.addRecipe(fluidInput1, fluidInput2, fluidOutput1, fluidOutput2, processTime[optional]);
//mods.nuclearcraft.chemical_reactor.removeRecipe(fluidOutput1, fluidOutput2);

//Salt Mixer:
//mods.nuclearcraft.salt_mixer.addRecipe(fluidInput1, fluidInput2, fluidOutput, processTime[optional]);
//mods.nuclearcraft.salt_mixer.removeRecipe(fluidOutput);

//Crystallizer:
//mods.nuclearcraft.crystallizer.addRecipe(fluidInput, itemOutput, processTime[optional]);
//mods.nuclearcraft.crystallizer.removeRecipe(itemOutput);

//Dissolver:
//mods.nuclearcraft.dissolver.addRecipe(itemInput, fluidInput, fluidOutput, processTime[optional]);
//mods.nuclearcraft.dissolver.removeRecipe(fluidOutput);

//Fission:
//mods.nuclearcraft.fission.addRecipe(itemInput, itemOutput, baseTime, basePowerGen, baseHeatGen, guiName);
//mods.nuclearcraft.fission.removeRecipe(itemOutput);

//Fusion:
//mods.nuclearcraft.fusion.addRecipe(fluidInput1, fluidInput2, fluidOutput1, fluidOutput2, fluidOutput3, fluidOutput4, comboFuelTime, comboPowerGen, comboHeatVar);
//mods.nuclearcraft.fusion.removeRecipe(fluidOutput1, fluidOutput2, fluidOutput3, fluidOutput4);

# *======= Remove & Hide =======*
	
	rh(<nuclearcraft:ore>);
	rh(<nuclearcraft:ore:1>);
	rh(<nuclearcraft:ore:2>);
	rh(<nuclearcraft:ore:4>);
	rh(<nuclearcraft:shovel_tough>);
	rh(<nuclearcraft:pickaxe_tough>);
	rh(<nuclearcraft:sword_tough>);
	rh(<nuclearcraft:spaxelhoe_boron>);
	rh(<nuclearcraft:hoe_boron>);
	rh(<nuclearcraft:axe_boron>);
	rh(<nuclearcraft:shovel_boron>);
	rh(<nuclearcraft:pickaxe_boron>);
	rh(<nuclearcraft:sword_boron>);
	rh(<nuclearcraft:dust>);
	rh(<nuclearcraft:dust:2>);
	rh(<nuclearcraft:dust:1>);
	rh(<nuclearcraft:ingot:4>);
	rh(<nuclearcraft:ingot:2>);
	rh(<nuclearcraft:ingot:1>);
	rh(<nuclearcraft:dust:4>);
	rh(<nuclearcraft:alloy>);
	rh(<nuclearcraft:alloy:5>);
	rh(<nuclearcraft:ingot>);
	rh(<nuclearcraft:pickaxe_boron_nitride>);
	rh(<nuclearcraft:spaxelhoe_boron_nitride>);
	rh(<nuclearcraft:hoe_boron_nitride>);
	rh(<nuclearcraft:axe_boron_nitride>);
	rh(<nuclearcraft:shovel_boron_nitride>);
	rh(<nuclearcraft:sword_boron_nitride>);
	rh(<nuclearcraft:spaxelhoe_hard_carbon>);
	rh(<nuclearcraft:hoe_hard_carbon>);
	rh(<nuclearcraft:axe_hard_carbon>);
	rh(<nuclearcraft:shovel_hard_carbon>);
	rh(<nuclearcraft:pickaxe_hard_carbon>);
	rh(<nuclearcraft:sword_hard_carbon>);
	rh(<nuclearcraft:spaxelhoe_tough>);
	rh(<nuclearcraft:hoe_tough>);
	rh(<nuclearcraft:axe_tough>);

# *======= Recipes =======*

	
	print("--- NuclearCraft.zs initialized ---");
import mods.jei.JEI.removeAndHide as rh;
# Custom recipes made by NillerMedDild
	print("--- loading MiscRecipes.zs ---");

# *======= Variables =======*
	
	val wool = <minecraft:wool:*>;

# *======= Recipes =======*

# Lonsdaleite
	recipes.addShapedMirrored("Lonsdaleite", 
	<environmentaltech:lonsdaleite_crystal>, 
	[[null, <ore:gemQuartzBlack>, null],
	[<ore:gemQuartzBlack>, <ore:crystalLitherite>, <ore:gemQuartzBlack>], 
	[null, <ore:gemQuartzBlack>, null]]);

# Forester's Manual
	recipes.remove(<forestry:book_forester>);
	recipes.addShapeless("Foresters Manual", 
	<forestry:book_forester>, 
	[<minecraft:book>, <ore:treeSapling>, <ore:treeSapling>]);
	
# Ancient Warfare Iron Gear Set
	recipes.addShaped("Iron Gear Set", 
	<ancientwarfare:component:1>, 
	[[<ore:ingotIron>, null, <ore:ingotIron>],
	[null, <ore:ingotIron>, null], 
	[<ore:ingotIron>, null, <ore:ingotIron>]]);

# String
	recipes.removeShapeless(<minecraft:string> * 4, [wool]);
	recipes.removeShaped(<minecraft:string> * 4, [[wool, null, null],[null, null, null], [null, null, null]]);	

# Diamond Chip
	rh(<opencomputers:material:29>);
	rh(<extrabitmanipulation:diamond_nugget>);
	<ore:nuggetDiamond>.add(<opencomputers:material:29>);
	<ore:chipDiamond>.add(<thermalfoundation:material:16>);
	
# Titanium Ingot
	recipes.addShaped("Titanium Ingot", 
	<libvulpes:productingot:7>, 
	[[null, <ore:ingotSteel>, null],
	[<ore:ingotAluminum>, <ore:blockMagma>, <ore:ingotAluminum>], 
	[null, <ore:ingotSteel>, null]]);

# Chunkloader
	rh(<ic2:te:82>);
	
# Block of Charcoal
	rh(<gardenstuff:stone_block>);
	
# Block of Charcoal
	rh(<actuallyadditions:block_misc:5>);
	
# Wool dyeing
	recipes.addShaped("wool", <minecraft:wool> * 8, [[wool, wool, wool],[wool, <ore:dyeWhite>, wool], [wool, wool, wool]]);
	recipes.addShaped("wool1", <minecraft:wool:1> * 8, [[wool, wool, wool],[wool, <ore:dyeOrange>, wool], [wool, wool, wool]]);
	recipes.addShaped("wool2", <minecraft:wool:2> * 8, [[wool, wool, wool],[wool, <ore:dyeMagenta>, wool], [wool, wool, wool]]);
	recipes.addShaped("wool3", <minecraft:wool:3> * 8, [[wool, wool, wool],[wool, <ore:dyeLightBlue>, wool], [wool, wool, wool]]);
	recipes.addShaped("wool4", <minecraft:wool:4> * 8, [[wool, wool, wool],[wool, <ore:dyeYellow>, wool], [wool, wool, wool]]);
	recipes.addShaped("wool5", <minecraft:wool:5> * 8, [[wool, wool, wool],[wool, <ore:dyeLime>, wool], [wool, wool, wool]]);
	recipes.addShaped("wool6", <minecraft:wool:6> * 8, [[wool, wool, wool],[wool, <ore:dyePink>, wool], [wool, wool, wool]]);
	recipes.addShaped("wool7", <minecraft:wool:7> * 8, [[wool, wool, wool],[wool, <ore:dyeGray>, wool], [wool, wool, wool]]);
	recipes.addShaped("wool8", <minecraft:wool:8> * 8, [[wool, wool, wool],[wool, <ore:dyeLightGray>, wool], [wool, wool, wool]]);
	recipes.addShaped("wool9", <minecraft:wool:9> * 8, [[wool, wool, wool],[wool, <ore:dyeCyan>, wool], [wool, wool, wool]]);
	recipes.addShaped("wool10", <minecraft:wool:10> * 8, [[wool, wool, wool],[wool, <ore:dyePurple>, wool], [wool, wool, wool]]);
	recipes.addShaped("wool11", <minecraft:wool:11> * 8, [[wool, wool, wool],[wool, <ore:dyeBlue>, wool], [wool, wool, wool]]);
	recipes.addShaped("wool12", <minecraft:wool:12> * 8, [[wool, wool, wool],[wool, <ore:dyeBrown>, wool], [wool, wool, wool]]);
	recipes.addShaped("wool13", <minecraft:wool:13> * 8, [[wool, wool, wool],[wool, <ore:dyeGreen>, wool], [wool, wool, wool]]);
	recipes.addShaped("wool14", <minecraft:wool:14> * 8, [[wool, wool, wool],[wool, <ore:dyeRed>, wool], [wool, wool, wool]]);
	recipes.addShaped("wool15", <minecraft:wool:15> * 8, [[wool, wool, wool],[wool, <ore:dyeBlack>, wool], [wool, wool, wool]]);
	
# BoP Grass, Dirt, and Netherrack.
	recipes.addShaped("BoP Mycelial Netherrack", <biomesoplenty:grass:8> * 8, [[<ore:netherrack>, <ore:netherrack>, <ore:netherrack>],[<ore:netherrack>, <minecraft:mycelium>, <ore:netherrack>], [<ore:netherrack>, <ore:netherrack>, <ore:netherrack>]]);
	recipes.addShaped("BoP Flowering Grass", <biomesoplenty:grass:7> * 8, [[<minecraft:double_plant:*>, <ore:grass>, <minecraft:double_plant:*>],[<ore:grass>, <minecraft:red_flower:8>, <ore:grass>], [<minecraft:double_plant:*>, <ore:grass>, <minecraft:double_plant:*>]]);
	recipes.addShaped("BoP Overgrown Netherrack", <biomesoplenty:grass:6> * 8, [[<ore:netherrack>, <ore:netherrack>, <ore:netherrack>],[<ore:netherrack>, <ore:vine>, <ore:netherrack>], [<ore:netherrack>, <ore:netherrack>, <ore:netherrack>]]);
	recipes.addShaped("BoP Origin Grass", <biomesoplenty:grass:5> * 16, [[<ore:sand>, <ore:grass>, <ore:sand>],[<biomesoplenty:sapling_1>, <biomesoplenty:sapling_1>, <biomesoplenty:sapling_1>], [<ore:sand>, <ore:grass>, <ore:sand>]]);
	recipes.addShaped("BoP Silty Grass", <biomesoplenty:grass:4> * 8, [[<ore:sand>, <ore:grass>, <ore:sand>],[<ore:gravel>, <ore:dirt>, <ore:gravel>], [<ore:sand>, <ore:grass>, <ore:sand>]]);
	recipes.addShaped("BoP Sandy Grass", <biomesoplenty:grass:3> * 8, [[<ore:sand>, <ore:grass>, <ore:sand>],[<ore:grass>, <ore:dirt>, <ore:grass>], [<ore:sand>, <ore:grass>, <ore:sand>]]);
	recipes.addShaped("BoP Loamy Grass", <biomesoplenty:grass:2> * 8, [[<ore:grass>, <ore:grass>, <ore:grass>],[<ore:grass>, <ore:listAllwater>, <ore:grass>], [<ore:grass>, <ore:grass>, <ore:grass>]]);
	recipes.addShaped("BoP Silty Dirt", <biomesoplenty:dirt:2> * 8, [[<ore:sand>, <ore:dirt>, <ore:sand>],[<ore:gravel>, <ore:dirt>, <ore:gravel>], [<ore:sand>, <ore:dirt>, <ore:sand>]]);
	recipes.addShaped("BoP Sandy Dirt", <biomesoplenty:dirt:1> * 8, [[<ore:sand>, <ore:dirt>, <ore:sand>],[<ore:dirt>, <ore:dirt>, <ore:dirt>], [<ore:sand>, <ore:dirt>, <ore:sand>]]);
	recipes.addShaped("BoP Loamy Dirt", <biomesoplenty:dirt> * 8, [[<ore:dirt>, <ore:dirt>, <ore:dirt>],[<ore:dirt>, <ore:listAllwater>, <ore:dirt>], [<ore:dirt>, <ore:dirt>, <ore:dirt>]]);

# Nametag
	recipes.addShaped("Nametag", 
	<minecraft:name_tag>, 
	[[null, <ore:paper>, <ore:cropFlax>],
	[<ore:paper>, <ore:dyeBlack>, <ore:paper>], 
	[<ore:paper>, <ore:paper>, null]]);
	
# Elytra
	recipes.addShaped("Elytra", 
	<minecraft:elytra>, 
	[[<minecraft:banner:15>, <minecraft:leather_chestplate>.anyDamage(), <minecraft:banner:15>],
	[<minecraft:banner:15>, <minecraft:chorus_fruit_popped>, <minecraft:banner:15>], 
	[<actuallyadditions:item_crystal:2>, null, <actuallyadditions:item_crystal:2>]]);
	
# Natura Redwood Sapling
	recipes.addShaped("Natura Redwood Sapling", 
	<natura:redwood_sapling> * 49, 
	[[<natura:overworld_sapling2:2>, <natura:overworld_sapling2:3>, <natura:overworld_sapling2:1>],
	[<natura:overworld_sapling>, <ore:blockEmerald>, <natura:overworld_sapling2>], 
	[<natura:overworld_sapling:3>, <natura:overworld_sapling:2>, <natura:overworld_sapling:1>]]);

# Astral Sorcery Journal
	recipes.addShaped("Astral Sorcery Journal", 
	<astralsorcery:itemjournal>, 
	[[null, <ore:gemAquamarine>, null],
	[<ore:leather>, <minecraft:book>, <ore:leather>], 
	[null, <ore:leather>, null]]);

# Torchmaster Mega Torch
	recipes.remove(<torchmaster:mega_torch>);
	recipes.addShaped("Mega Torch", 
	<torchmaster:mega_torch>, 
	[[<immersiveengineering:metal_decoration2:4>, <immersiveengineering:metal_decoration2:4>, <immersiveengineering:metal_decoration2:4>],
	[<ore:blockDiamond>, <ore:logWood>, <ore:blockDiamond>], 
	[<ore:blockMetal>, <ore:logWood>, <ore:blockMetal>]]);

# Farming for Blockheads Market
	recipes.remove(<farmingforblockheads:market>);
	recipes.remove(<harvestcraft:market>);
	recipes.addShaped("Farming for Blockheads Market", 
	<farmingforblockheads:market>, 
	[[<ore:plankWood>, <ore:blockWool>, <ore:plankWood>],
	[<ore:logWood>, <ore:blockEmerald>, <ore:logWood>], 
	[<ore:logWood>, <ore:logWood>, <ore:logWood>]]);

# Extra Utilities Rainbow Generator
	recipes.remove(<extrautils2:rainbowgenerator>);
	recipes.addShaped("Rainbow Generator", 
	<extrautils2:rainbowgenerator>, 
	[[<extrautils2:opinium:4>, <extrautils2:rainbowgenerator:2>, <extrautils2:opinium:4>],
	[<extrautils2:ingredients:16>, <draconicevolution:draconium_capacitor:1>, <extrautils2:ingredients:16>], 
	[<extrautils2:opinium:4>, <extrautils2:rainbowgenerator:1>, <extrautils2:opinium:4>]]);
	
# Super Morph-O-Tool
	recipes.addShaped("Superwrench", 
	<morphtool:tool>.withTag({"morphtool:data": {extrautils2: {id: "extrautils2:wrench", Count: 1 as byte, Damage: 0 as short}, thermalfoundation: {id: "thermalfoundation:wrench", Count: 1 as byte, Damage: 0 as short}, actuallyadditions: {id: "actuallyadditions:item_laser_wrench", Count: 1 as byte, Damage: 0 as short}, chiselsandbits: {id: "chiselsandbits:wrench_wood", Count: 1 as byte, Damage: 0 as short}, ic2: {id: "ic2:wrench", Count: 1 as byte, Damage: 0 as short}, rftools: {id: "rftools:smartwrench", Count: 1 as byte, Damage: 0 as short}, forestry: {id: "forestry:wrench", Count: 1 as byte, Damage: 0 as short}, appliedenergistics2: {id: "appliedenergistics2:certus_quartz_wrench", Count: 1 as byte, Damage: 0 as short}, bigreactors: {id: "bigreactors:wrench", Count: 1 as byte, Damage: 0 as short}}}), 
	[[null, <ore:gearCopper>, null],
	[<ore:gearSilver>, <morphtool:tool>, <ore:gearTin>], 
	[null, <ore:gearLead>, null]]);
	
# Super Akashic Tome
	recipes.addShaped("Super Akashic Tome", 
	<akashictome:tome>.withTag({"akashictome:data": {tconstruct: {id: "tconstruct:book", Count: 1 as byte, tag: {"akashictome:definedMod": "tconstruct"}, Damage: 0 as short}, rftoolscontrol: {id: "rftoolscontrol:rftoolscontrol_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "rftoolscontrol"}, Damage: 0 as short}, immersiveengineering: {id: "immersiveengineering:tool", Count: 1 as byte, tag: {"akashictome:definedMod": "immersiveengineering"}, Damage: 3 as short}, cookingforblockheads1: {id: "cookingforblockheads:recipe_book", Count: 1 as byte, tag: {"akashictome:definedMod": "cookingforblockheads1"}, Damage: 1 as short}, rftools: {id: "rftoolsdim:rftoolsdim_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "rftools"}, Damage: 0 as short}, cookingforblockheads2: {id: "cookingforblockheads:recipe_book", Count: 1 as byte, tag: {"akashictome:definedMod": "cookingforblockheads2"}, Damage: 2 as short}, rftools1: {id: "rftools:rftools_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "rftools1"}, Damage: 0 as short}, rustic: {id: "rustic:book", Count: 1 as byte, tag: {"akashictome:definedMod": "rustic"}, Damage: 0 as short}, spiceoflife: {id: "spiceoflife:bookfoodjournal", Count: 1 as byte, tag: {"akashictome:definedMod": "spiceoflife"}, Damage: 0 as short}, extrautils2: {id: "extrautils2:book", Count: 1 as byte, tag: {"akashictome:definedMod": "extrautils2"}, Damage: 0 as short}, thermalfoundation: {id: "thermalfoundation:tome", Count: 1 as byte, tag: {"akashictome:definedMod": "thermalfoundation"}, Damage: 0 as short}, actuallyadditions: {id: "actuallyadditions:item_booklet", Count: 1 as byte, tag: {"akashictome:definedMod": "actuallyadditions"}, Damage: 0 as short}, cookingforblockheads: {id: "cookingforblockheads:recipe_book", Count: 1 as byte, tag: {"akashictome:definedMod": "cookingforblockheads"}, Damage: 0 as short}, xnet: {id: "xnet:xnet_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "xnet"}, Damage: 0 as short}}}), 
	[[<ore:paper>, <ore:bookshelf>, <ore:paper>],
	[<extrautils2:decorativesolidwood:1>, <akashictome:tome>, <extrautils2:decorativesolidwood:1>], 
	[<ore:paper>, <ore:bookshelf>, <ore:paper>]]);
	
# Pam's Lavender Shortbread
	recipes.remove(<harvestcraft:lavendershortbreaditem>);
	recipes.addShapeless("Pam's Harvestcraft Lavender Shortbread",
	<harvestcraft:lavendershortbreaditem>, 
	[<ore:toolBakeware>, <ore:foodDough>, <ore:flowerLavender>]);
	
# Minecraft Boats from oreDict planks
	recipes.addShaped("Boat", 
	<minecraft:boat>, 
	[[<ore:plankWood>, null, <ore:plankWood>], 
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);
	
# WirelessCharger Wireless Charger ThermalExpansion
	recipes.remove(<wificharge:wirelesscharger>);
	recipes.addShaped("WirelessCharger Wireless Charger ThermalExpansion",
	<wificharge:wirelesscharger>, 
	[[<ore:plateSignalum>, <ore:plateSignalum>, <ore:plateSignalum>],
	[<ore:plateSignalum>, <thermalexpansion:frame>, <ore:plateSignalum>], 
	[<minecraft:comparator>, <ore:blockRedstone>, <minecraft:comparator>]]);

# WirelessCharger Wireless Charger Mekanism
	recipes.addShaped("WirelessCharger Wireless Charger Mekanism",
	<wificharge:wirelesscharger>, 
	[[<ore:alloyElite>, <ore:alloyElite>, <ore:alloyElite>],
	[<ore:circuitElite>, <mekanism:basicblock:8>, <ore:circuitElite>], 
	[<minecraft:comparator>, <ore:blockRedstone>, <minecraft:comparator>]]);

# WirelessCharger Personal Charger ThermalExpansion
	recipes.remove(<wificharge:personalcharger>);
	recipes.addShaped("WirelessCharger Personal Charger ThermalExpansion",
	<wificharge:personalcharger>, 
	[[<ore:plateEnderium>, <ore:plateEnderium>, <ore:plateEnderium>],
	[<ore:plateEnderium>, <wificharge:wirelesscharger>, <ore:plateEnderium>], 
	[<ore:gearInvar>, <minecraft:compass>, <ore:gearInvar>]]);

# WirelessCharger Personal Charger Mekanism
	recipes.addShaped("WirelessCharger Personal Charger Mekanism",
	<wificharge:personalcharger>, 
	[[<ore:alloyUltimate>, <ore:alloyUltimate>, <ore:alloyUltimate>],
	[<ore:circuitUltimate>, <wificharge:wirelesscharger>, <ore:circuitUltimate>], 
	[<minecraft:compass>, <mekanism:energycube>, <minecraft:compass>]]);

# Minecolonies Builders Wand
	recipes.remove(<minecolonies:sceptergold>);
	recipes.addShapedMirrored("Minecolonies Builder's Wand", 
	<minecolonies:sceptergold>, 
	[[null, null, <ore:ingotGold>],
	[null, <ore:stickWood>, null], 
	[<ore:stickWood>, null, null]]);


# *======= Shapeless Recipes =======*	

	recipes.addShapeless("Wrought Iron", <gardenstuff:material:4>, [<ore:ingotIron>, <minecraft:flint>, <minecraft:flint>]);
	recipes.addShapeless("chest2chest", <minecraft:chest> * 2, [<ore:chest>, <ore:chest>]);
	recipes.addShapeless("slate", <rustic:slate> * 4, [<ore:stoneBasalt>, <ore:stoneBasalt>, <ore:stoneBasalt>, <ore:stoneLimestone>]);
	recipes.addShapeless("TE Bronze", <thermalfoundation:material:163> * 4, [<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotTin>]);
	recipes.addShapeless("Overgrown Stone1", <biomesoplenty:grass:1>, [<ore:materialStoneTool>, <minecraft:tallgrass:1>]);
	recipes.addShapeless("Overgrown Stone2", <biomesoplenty:grass:1>, [<ore:materialStoneTool>, <ore:grass>]);
	recipes.addShapeless("Overgrown Stone3", <biomesoplenty:grass:1>, [<ore:materialStoneTool>, <ore:vine>]);
	
# *======= Metal Nuggets =======*

	rh(<immersiveengineering:metal:29>);
	rh(<embers:nugget_iron>);
	rh(<gardenstuff:material>);
	rh(<embers:nugget_copper>);
	rh(<embers:nugget_lead>);
	rh(<embers:nugget_silver>);
	rh(<embers:nugget_aluminum>);
	rh(<embers:nugget_bronze>);
	rh(<embers:nugget_electrum>);
	rh(<embers:nugget_nickel>);
	rh(<embers:nugget_tin>);
	rh(<immersiveengineering:metal:20>);
	rh(<immersiveengineering:metal:21>);
	rh(<immersiveengineering:metal:22>);
	rh(<immersiveengineering:metal:23>);
	rh(<immersiveengineering:metal:24>);
	rh(<immersiveengineering:metal:26>);
	rh(<immersiveengineering:metal:27>);
	rh(<immersiveengineering:metal:28>);
	rh(<plustic:invarnugget>);
	
# *======= Metal Gears =======*

	rh(<forestry:gear_tin>);
	rh(<forestry:gear_bronze>);
	rh(<forestry:gear_copper>);	
	rh(<libvulpes:productgear:6>);
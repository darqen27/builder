// --- Created by Kehaan ---
// recipes.remove(x);
// x.addTooltip(format.green("This item can be bought at the x"));
// mods.harvestfestival.Shops.addPurchasable("harvestfestival:x", x, y);

// --- HFReader ---
recipes.remove(<harvestreader:cropreader>);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general", <harvestreader:cropreader>, 1000);
<harvestreader:cropreader>.addTooltip(format.green("This item can be bought at Jenni"));
<harvestreader:cropreader>.addTooltip(format.green("Right click on a crop, to get info about it"));

// --- Decocraft ---
recipes.remove(<props:props:508>);
recipes.remove(<props:clay>);
recipes.remove(<props:clay:1>);
recipes.remove(<props:clay:2>);

mods.harvestfestival.Shops.addPurchasableToBuilder(<props:props:508>, 0, 0, 5000);
mods.harvestfestival.Shops.addPurchasableToBuilder(<props:clay>, 0, 0, 10);
mods.harvestfestival.Shops.addPurchasableToBuilder(<props:clay:1>, 0, 0, 10);
mods.harvestfestival.Shops.addPurchasableToBuilder(<props:clay:2>, 0, 0, 10);

<props:props:508>.addTooltip(format.green("This item can be bought at Yulif"));
<props:clay>.addTooltip(format.green("This item can be bought at Yulif"));
<props:clay:1>.addTooltip(format.green("This item can be bought at Yulif"));
<props:clay:2>.addTooltip(format.green("This item can be bought at Yulif"));

// --- Immersive Engineering ---
recipes.remove(<immersiveengineering:material:8>);
recipes.remove(<immersiveengineering:connector>);
recipes.remove(<immersiveengineering:connector:2>);
recipes.remove(<immersiveengineering:connector:4>);
recipes.remove(<immersiveengineering:wirecoil>);
recipes.remove(<immersiveengineering:wirecoil:1>);
recipes.remove(<immersiveengineering:wirecoil:2>);
recipes.remove(<immersiveengineering:drillhead:1>);
recipes.remove(<immersiveengineering:metal:3>);
recipes.remove(<immersiveengineering:metal:2>);
recipes.remove(<immersiveengineering:metal>);
recipes.remove(<immersiveengineering:metal:1>);
recipes.remove(<immersiveengineering:metal:5>);
recipes.remove(<immersiveengineering:metal:4>);
recipes.remove(<immersiveengineering:metalDecoration0>);
recipes.remove(<immersiveengineering:metalDecoration0:1>);
recipes.remove(<immersiveengineering:metalDecoration0:2>);
recipes.remove(<immersiveengineering:woodenDevice0:2>);
recipes.remove(<immersiveengineering:tool:1>);
recipes.remove(<immersiveengineering:tool>);
recipes.remove(<immersiveengineering:tool:2>);
recipes.remove(<immersiveengineering:stoneDecoration:1>);
recipes.remove(<immersiveengineering:metalDecoration0:3>);

<immersiveengineering:material:8>.addTooltip(format.green("This item can be bought at the General Store"));
<immersiveengineering:connector>.addTooltip(format.green("This item can be bought at the General Store"));
<immersiveengineering:connector:2>.addTooltip(format.green("This item can be bought at the General Store"));
<immersiveengineering:connector:4>.addTooltip(format.green("This item can be bought at the General Store"));
<immersiveengineering:wirecoil>.addTooltip(format.green("This item can be bought at the General Store"));
<immersiveengineering:wirecoil:1>.addTooltip(format.green("This item can be bought at the General Store"));
<immersiveengineering:wirecoil:2>.addTooltip(format.green("This item can be bought at the General Store"));
<immersiveengineering:metalDecoration0>.addTooltip(format.green("This item can be bought at the General Store"));
<immersiveengineering:metalDecoration0:1>.addTooltip(format.green("This item can be bought at the General Store"));
<immersiveengineering:metalDecoration0:2>.addTooltip(format.green("This item can be bought at the General Store"));
<immersiveengineering:woodenDevice0:2>.addTooltip(format.green("This item can be bought at the General Store"));
<immersiveengineering:tool:1>.addTooltip(format.green("This item can be bought at the General Store"));
<immersiveengineering:tool>.addTooltip(format.green("This item can be bought at the General Store"));
<immersiveengineering:tool:2>.addTooltip(format.green("This item can be bought at the General Store"));
<immersiveengineering:metal:3>.addTooltip(format.green("This item can be bought at the BlackSmith"));
<immersiveengineering:metal:2>.addTooltip(format.green("This item can be bought at the BlackSmith"));
<immersiveengineering:metal>.addTooltip(format.green("This item can be bought at the BlackSmith"));
<immersiveengineering:metal:1>.addTooltip(format.green("This item can be bought at the BlackSmith"));
<immersiveengineering:metal:5>.addTooltip(format.green("This item can be bought at the BlackSmith"));
<immersiveengineering:metal:4>.addTooltip(format.green("This item can be bought at the BlackSmith"));
<immersiveengineering:ore>.addTooltip(format.green("This item can be bought at the BlackSmith"));
<immersiveengineering:ore:1>.addTooltip(format.green("Does not spawn at the world. Use the BlackSmith"));
<immersiveengineering:ore:2>.addTooltip(format.green("Does not spawn at the world. Use the BlackSmith"));
<immersiveengineering:ore:3>.addTooltip(format.green("Does not spawn at the world. Use the BlackSmith"));
<immersiveengineering:ore:4>.addTooltip(format.green("Does not spawn at the world. Use the BlackSmith"));
<immersiveengineering:ore:5>.addTooltip(format.green("Does not spawn at the world. Use the BlackSmith"));
<immersiveengineering:stoneDecoration:1>.addTooltip(format.green("This item can be bought at the Black Smith"));
<immersiveengineering:drillhead:1>.addTooltip(format.green("This item can be bought at the Mining Hut"));
<immersiveengineering:metalDecoration0:3>.addTooltip(format.green("This item can be bought at the BlackSmith"));

mods.harvestfestival.Shops.addPurchasable("harvestfestival:general", <immersiveengineering:material:8>, 500);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general",<immersiveengineering:connector>, 500);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general",<immersiveengineering:connector:2>, 500);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general",<immersiveengineering:connector:4>, 500);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general",<immersiveengineering:wirecoil>, 500);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general",<immersiveengineering:wirecoil:1>, 500);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general",<immersiveengineering:wirecoil:2>, 500);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general",<immersiveengineering:metalDecoration0>, 500);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general",<immersiveengineering:metalDecoration0:1>, 500);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general",<immersiveengineering:metalDecoration0:2>, 500);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general",<immersiveengineering:woodenDevice0:2>, 500);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general",<immersiveengineering:tool>, 2500);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general",<immersiveengineering:tool:2>, 2500);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:miner",<immersiveengineering:drillhead:1>, 10000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:blacksmith", <immersiveengineering:metal:3>, 100);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:blacksmith", <immersiveengineering:metal:2>, 100);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:blacksmith", <immersiveengineering:metal>, 100);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:blacksmith", <immersiveengineering:metal:1>, 100);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:blacksmith", <immersiveengineering:metal:5>, 100);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:blacksmith", <immersiveengineering:metal:4>, 100);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:blacksmith", <immersiveengineering:stoneDecoration:1>, 1000);

mods.harvestfestival.Shops.addPurchasable("harvestfestival:blacksmith", <immersiveengineering:metalDecoration0:3>, 2500);

// RailCraft
recipes.remove(<railcraft:borehead_iron>);
<railcraft:borehead_iron>.addTooltip(format.green("This item can be bought at the Mining Hut"));
mods.harvestfestival.Shops.addPurchasable("harvestfestival:miner", <railcraft:borehead_iron>, 100000);

// Psi

recipes.remove(<psi:programmer>);
recipes.remove(<psi:cadAssembler>);
recipes.remove(<psi:cadAssembly>);
recipes.remove(<psi:cadAssembly:1>);
<psi:programmer>.addTooltip(format.green("This item can be bought at the General Store"));
<psi:cadAssembler>.addTooltip(format.green("This item can be bought at the General Store"));
<psi:cadAssembly>.addTooltip(format.green("This item can be bought at the General Store"));
<psi:cadAssembly:1>.addTooltip(format.green("This item can be bought at the General Store"));
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general", <psi:programmer>, 100000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general", <psi:cadAssembler>, 100000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general", <psi:cadAssembly>, 5000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general", <psi:cadAssembly:1>, 5000);

// SoulShard
recipes.remove(<soulshardstow:BlockCage>);
<soulshardstow:BlockCage>.addTooltip(format.green("This item can be bought at the BlackSmith"));
mods.harvestfestival.Shops.addPurchasable("harvestfestival:blacksmith", <soulshardstow:BlockCage>, 1000000);

// StorageDrawers

recipes.remove(<storagedrawers:controller>);
recipes.remove(<storagedrawers:compDrawers>);
recipes.remove(<storagedrawers:tape>);
recipes.remove(<storagedrawers:upgradeTemplate>);

<storagedrawers:tape>.addTooltip(format.green("This item can be bought at the General Store"));
<storagedrawers:controller>.addTooltip(format.green("This item can be bought at the BlackSmith"));
<storagedrawers:compDrawers>.addTooltip(format.green("This item can be bought at the BlackSmith"));
<storagedrawers:upgradeTemplate>.addTooltip(format.green("This item can be bought at the General Store"));

mods.harvestfestival.Shops.addPurchasable("harvestfestival:blacksmith", <storagedrawers:controller>, 5000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:blacksmith", <storagedrawers:compDrawers>, 5000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general", <storagedrawers:tape>, 250);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general", <storagedrawers:upgradeTemplate>, 500);

// Forestry
recipes.remove(<forestry:sturdyMachine>);
recipes.remove(<forestry:scoop>);
recipes.remove(<forestry:smoker>);
recipes.remove(<forestry:grafter>);
recipes.remove(<forestry:ingotBronze>);
recipes.remove(<forestry:ingotTin>);
recipes.remove(<forestry:ffarm>);

mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <forestry:ffarm>.withTag({FarmBlock: 0}), 2000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <forestry:ffarm>.withTag({FarmBlock: 1}), 2000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <forestry:ffarm>.withTag({FarmBlock: 2}), 2000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <forestry:ffarm>.withTag({FarmBlock: 3}), 2000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <forestry:ffarm>.withTag({FarmBlock: 4}), 2000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <forestry:ffarm>.withTag({FarmBlock: 5}), 2000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <forestry:ffarm>.withTag({FarmBlock: 6}), 2000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <forestry:ffarm>.withTag({FarmBlock: 7}), 2000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <forestry:ffarm>.withTag({FarmBlock: 8}), 2000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <forestry:ffarm>.withTag({FarmBlock: 9}), 2000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <forestry:ffarm>.withTag({FarmBlock: 10}), 2000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:poultry", <forestry:ffarm>.withTag({FarmBlock: 11}), 2000);

mods.harvestfestival.Shops.addPurchasable("harvestfestival:blacksmith", <forestry:ingotTin>, 100);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:blacksmith", <forestry:sturdyMachine>, 20000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general", <forestry:scoop>, 2000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general", <forestry:smoker>, 2000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general", <forestry:grafter>, 2000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:miner", <forestry:resources>, 100);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:blacksmith", <forestry:ingotBronze>, 100);

<forestry:resources>.addTooltip(format.green("This item can be bought at the Mining Hut"));
<forestry:sturdyMachine>.addTooltip(format.green("This item can be bought at the BlackSmith"));
<forestry:scoop>.addTooltip(format.green("This item can be bought at the General Store"));
<forestry:smoker>.addTooltip(format.green("This item can be bought at the General Store"));
<forestry:grafter>.addTooltip(format.green("This item can be bought at the General Store"));
<forestry:ingotBronze>.addTooltip(format.green("This item can be bought at the BlackSmith"));
<forestry:ingotTin>.addTooltip(format.green("This item can be bought at the BlackSmith"));
<forestry:resources:2>.addTooltip(format.green("Does not spawn at the world. Use the BlackSmith"));

<forestry:ffarm>.addTooltip(format.green("This item can be bought at the Poultry Farm (Cant be used for Crops"));

recipes.remove(<forestry:mailbox>);
recipes.remove(<forestry:stamps>);
recipes.remove(<forestry:stamps:1>);
recipes.remove(<forestry:bee_house>);

mods.harvestfestival.Shops.addPurchasable("harvestfestival:general", <forestry:bee_house>, 10000);
<forestry:bee_house>.addTooltip(format.green("This item can be bought at the General Store"));

mods.harvestfestival.Shops.addPurchasable("harvestfestival:cafe", <forestry:mailbox>, 5000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:cafe", <forestry:stamps>, 200);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:cafe", <forestry:stamps:1>, 350);
<forestry:mailbox>.addTooltip(format.green("This item can be bought at Cafe"));
<forestry:stamps>.addTooltip(format.green("This item can be bought at Cafe"));
<forestry:stamps:1>.addTooltip(format.green("This item can be bought at Cafe"));

recipes.remove(<forestry:minerBag>);
<forestry:minerBag>.addTooltip(format.green("This item can be bought at Mining Hut"));
mods.harvestfestival.Shops.addPurchasable("harvestfestival:miner", <forestry:minerBag>, 25000);

// Botania

recipes.remove(<botania:altar>);

mods.harvestfestival.Shops.addShopToNPC("katlin", "Gadgets", "Hello, i have a small shop with gadgets?!", "friday,5000,16000;monday,5000,16000;tuesday,5000,16000", "If you want to see what i sell, come back friday, monday and tuesday between 05:00 to 16:00");
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <botania:altar>, 100000);
<botania:altar>.addTooltip(format.green("This item can be bought at Katlin in the Cafe"));

recipes.remove(<botania:pestleAndMortar>);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general", <botania:pestleAndMortar>, 2500);
<botania:pestleAndMortar>.addTooltip(format.green("This item can be bought at the General Store"));

// Tough As Nails

mods.harvestfestival.Shops.addShopToNPC("thomas", "Church", "Welcome to the Church!", "monday,1000,7000;tuesday,1000,7000;wednesday,1000,7000", "My small shop is open monday-wednesday between 01:00 and 07:00");
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:church", <toughasnails:lifeblood_crystal>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:church", <biomesoplenty:sapling_1:7>, 5000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:church", <botania:tinyPotato>, 1000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:church", <botania:cosmetic:30>, 500);

<toughasnails:lifeblood_crystal>.addTooltip(format.green("This item can be bought at the Church"));
<biomesoplenty:sapling_1:7>.addTooltip(format.green("This item can be bought at the Church"));
<botania:tinyPotato>.addTooltip(format.green("This item can be bought at the Church too"));
<botania:cosmetic:30>.addTooltip(format.green("This item can be bought at the Church too"));

// Super Circuit Maker
recipes.remove(<rscircuits:screwdriver>);
recipes.remove(<rscircuits:multimeter>);

mods.harvestfestival.Shops.addPurchasable("harvestfestival:general", <rscircuits:screwdriver>, 5000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general", <rscircuits:multimeter>, 5000);

<rscircuits:screwdriver>.addTooltip(format.green("This item can be bought at the General Store"));
<rscircuits:multimeter>.addTooltip(format.green("This item can be bought at the General Store"));

// SpiceOfLife
recipes.remove(<spiceoflife:lunchbag>);
recipes.remove(<spiceoflife:lunchbox>);

mods.harvestfestival.Shops.addPurchasable("harvestfestival:cafe", <spiceoflife:lunchbox>, 2000);
<spiceoflife:lunchbox>.addTooltip(format.green("This item can be bought at Cafe"));
mods.harvestfestival.Shops.addPurchasable("harvestfestival:cafe", <spiceoflife:lunchbag>, 2000);
<spiceoflife:lunchbag>.addTooltip(format.green("This item can be bought at Cafe"));

// Aquaculture
recipes.remove(<aquaculture:fishing_rod>);
recipes.remove(<aquaculture:iron_fishing_rod>);
recipes.remove(<aquaculture:gold_fishing_rod>);
recipes.remove(<aquaculture:diamond_fishing_rod>);

mods.harvestfestival.Shops.adjustPurchasable("harvestfestival:baitshop", "aquaculture_iron_fishing_rod", 1500);
mods.harvestfestival.Shops.adjustPurchasable("harvestfestival:baitshop", "aquaculture_gold_fishing_rod", 1000);
mods.harvestfestival.Shops.adjustPurchasable("harvestfestival:baitshop", "aquaculture_diamond_fishing_rod", 5000);

<aquaculture:fishing_rod>.addTooltip(format.green("This item can be bought at the Fishing Hut"));
<aquaculture:iron_fishing_rod>.addTooltip(format.green("This item can be bought at the Fishing Hut"));
<aquaculture:gold_fishing_rod>.addTooltip(format.green("This item can be bought at the Fishing Hut"));
<aquaculture:diamond_fishing_rod>.addTooltip(format.green("This item can be bought at the Fishing Hut"));

// Chisel And Bits
recipes.remove(<chiselsandbits:chisel_stone>);
recipes.remove(<chiselsandbits:chisel_iron>);
recipes.remove(<chiselsandbits:chisel_gold>);
recipes.remove(<chiselsandbits:chisel_diamond>);
recipes.remove(<chiselsandbits:bitsaw_diamond>);

<chiselsandbits:chisel_stone>.addTooltip(format.green("See Diamond Chisel instead"));
<chiselsandbits:chisel_iron>.addTooltip(format.green("See Diamond Chisel instead"));
<chiselsandbits:chisel_gold>.addTooltip(format.green("See Diamond Chisel instead"));
<chiselsandbits:chisel_diamond>.addTooltip(format.green("This item can be bought at the General Store"));
<chiselsandbits:bitsaw_diamond>.addTooltip(format.green("This item can be bought at the General Store"));

mods.harvestfestival.Shops.addPurchasable("harvestfestival:general", <chiselsandbits:chisel_diamond>, 2500);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:general", <chiselsandbits:bitsaw_diamond>, 2500);

// --- Cyclic ---
recipes.remove(<cyclicmagic:tool_warp_home>);
recipes.remove(<cyclicmagic:sprout_seed>);
recipes.remove(<cyclicmagic:tool_auto_torch>);
recipes.remove(<cyclicmagic:sleeping_mat>);
recipes.remove(<cyclicmagic:book_ender>);
recipes.remove(<cyclicmagic:apple_emerald>);
recipes.remove(<cyclicmagic:tool_mount>);
recipes.remove(<cyclicmagic:ender_pearl_mounted>);
recipes.remove(<cyclicmagic:uncrafting_block>);
recipes.remove(<cyclicmagic:chest_sack_empty>);
recipes.remove(<cyclicmagic:storage_bag>);
recipes.remove(<cyclicmagic:sack_ender>);
recipes.remove(<cyclicmagic:horse_upgrade_speed>);
recipes.remove(<cyclicmagic:horse_upgrade_variant>);
recipes.remove(<cyclicmagic:horse_upgrade_jump>);
recipes.remove(<cyclicmagic:horse_upgrade_health>);
recipes.remove(<cyclicmagic:horse_upgrade_type>);
recipes.remove(<cyclicmagic:block_fishing>);
recipes.remove(<cyclicmagic:ender_fishing>);
recipes.remove(<cyclicmagic:glove_climb>);
recipes.remove(<cyclicmagic:ender_blaze>);
recipes.remove(<cyclicmagic:ender_lightning>);
recipes.remove(<cyclicmagic:fire_killer>);
recipes.remove(<cyclicmagic:ender_water>);
recipes.remove(<cyclicmagic:glowing_chorus>);

recipes.remove(<cyclicmagic:block_shears>);
recipes.remove(<cyclicmagic:plate_vector>);
recipes.remove(<cyclicmagic:purple_boots>);
recipes.remove(<cyclicmagic:purple_leggings>);
recipes.remove(<cyclicmagic:password_remote>);
recipes.remove(<cyclicmagic:ender_dungeon>);
recipes.remove(<cyclicmagic:purple_helmet>);
recipes.remove(<cyclicmagic:purple_chestplate>);
recipes.remove(<cyclicmagic:ender_wool>);
recipes.remove(<cyclicmagic:mattock>);
recipes.remove(<cyclicmagic:tool_trade>);

<cyclicmagic:tool_warp_home>.addTooltip(format.green("This item can be bought at Katlin in the Cafe"));
<cyclicmagic:sprout_seed>.addTooltip(format.green("This item can be bought at Katlin in the Cafe"));
<cyclicmagic:tool_auto_torch>.addTooltip(format.green("This item can be bought at Katlin in the Cafe"));
<cyclicmagic:sleeping_mat>.addTooltip(format.green("This item can be bought at Katlin in the Cafe"));
<cyclicmagic:book_ender>.addTooltip(format.green("This item can be bought at Katlin in the Cafe"));
<cyclicmagic:apple_emerald>.addTooltip(format.green("This item can be bought at Katlin in the Cafe"));
<cyclicmagic:tool_mount>.addTooltip(format.green("This item can be bought at Katlin in the Cafe"));
<cyclicmagic:ender_pearl_mounted>.addTooltip(format.green("This item can be bought at Katlin in the Cafe"));
<cyclicmagic:uncrafting_block>.addTooltip(format.green("This item can be bought at Katlin in the Cafe"));
<cyclicmagic:chest_sack_empty>.addTooltip(format.green("This item can be bought at Katlin in the Cafe"));
<cyclicmagic:storage_bag>.addTooltip(format.green("This item can be bought at Katlin in the Cafe"));
<cyclicmagic:sack_ender>.addTooltip(format.green("This item can be bought at Katlin in the Cafe"));
<cyclicmagic:horse_upgrade_speed>.addTooltip(format.green("This item can be bought at the Animal Ranch"));
<cyclicmagic:horse_upgrade_variant>.addTooltip(format.green("This item can be bought at the Animal Ranch"));
<cyclicmagic:horse_upgrade_jump>.addTooltip(format.green("This item can be bought at the Animal Ranch"));
<cyclicmagic:horse_upgrade_health>.addTooltip(format.green("This item can be bought at the Animal Ranch"));
<cyclicmagic:horse_upgrade_type>.addTooltip(format.green("This item can be bought at the Animal Ranch"));
<cyclicmagic:block_fishing>.addTooltip(format.green("This item can be bought at the Baitshop"));
<cyclicmagic:ender_fishing>.addTooltip(format.green("This item can be bought at the Baitshop"));
<cyclicmagic:glove_climb>.addTooltip(format.green("This item can be bought at Katlin in the Cafe"));
<cyclicmagic:ender_blaze>.addTooltip(format.green("This item can be bought at Katlin in the Cafe"));
<cyclicmagic:ender_lightning>.addTooltip(format.green("This item can be bought at Katlin in the Cafe"));
<cyclicmagic:fire_killer>.addTooltip(format.green("This item can be bought at Katlin in the Cafe"));
<cyclicmagic:ender_water>.addTooltip(format.green("This item can be bought at Katlin in the Cafe"));
<cyclicmagic:glowing_chorus>.addTooltip(format.green("This item can be bought at Katlin in the Cafe"));
<toughasnails:canteen>.addTooltip(format.green("This item can be bought at Katlin in the Cafe"));

<cyclicmagic:block_shears>.addTooltip(format.green("This item can be bought at Katlin in the Cafe"));
<cyclicmagic:plate_vector>.addTooltip(format.green("This item can be bought at Katlin in the Cafe"));
<cyclicmagic:purple_boots>.addTooltip(format.green("This item can be bought at Katlin in the Cafe"));
<cyclicmagic:purple_leggings>.addTooltip(format.green("This item can be bought at Katlin in the Cafe"));
<cyclicmagic:password_remote>.addTooltip(format.green("This item can be bought at Katlin in the Cafe"));
<cyclicmagic:ender_dungeon>.addTooltip(format.green("This item can be bought at Katlin in the Cafe"));
<cyclicmagic:purple_helmet>.addTooltip(format.green("This item can be bought at Katlin in the Cafe"));
<cyclicmagic:purple_chestplate>.addTooltip(format.green("This item can be bought at Katlin in the Cafe"));
<cyclicmagic:ender_wool>.addTooltip(format.green("This item can be bought at Katlin in the Cafe"));
<cyclicmagic:mattock>.addTooltip(format.green("This item can be bought at Katlin in the Cafe"));
<cyclicmagic:tool_trade>.addTooltip(format.green("This item can be bought at Katlin in the Cafe"));

mods.harvestfestival.Shops.addPurchasable("harvestfestival:barn",<cyclicmagic:horse_upgrade_speed>, 500);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:barn",<cyclicmagic:horse_upgrade_variant>, 500);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:barn",<cyclicmagic:horse_upgrade_jump>, 500);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:barn",<cyclicmagic:horse_upgrade_health>, 500);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:barn",<cyclicmagic:horse_upgrade_type>, 500);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:tool_warp_home>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:sprout_seed>, 500);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:tool_auto_torch>, 2500);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:sleeping_mat>, 4000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:book_ender>, 25000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:apple_emerald>, 7500);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:tool_mount>, 2000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:ender_pearl_mounted>, 5000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:uncrafting_block>, 50000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:chest_sack_empty>, 5000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:storage_bag>, 75000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:sack_ender>, 100000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:baitshop", <cyclicmagic:block_fishing>, 75000);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:baitshop", <cyclicmagic:ender_fishing>, 2500);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:glove_climb>, 5000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:ender_blaze>, 250);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:ender_lightning>, 250);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:fire_killer>, 5000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:ender_water>, 250);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:glowing_chorus>, 750);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <toughasnails:canteen>, 1000);

mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:block_shears>, 50000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:plate_vector>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:purple_boots>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:purple_leggings>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:password_remote>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:ender_dungeon>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:purple_helmet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:purple_chestplate>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:ender_wool>, 2500);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:mattock>, 50000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:tool_trade>, 25000);

recipes.remove(<cyclicmagic:dynamite_mining>);
<cyclicmagic:dynamite_mining>.addTooltip(format.green("This item can be bought at the Mining Hut"));
mods.harvestfestival.Shops.addPurchasable("harvestfestival:miner", <cyclicmagic:dynamite_mining>, 500);
recipes.remove(<cyclicmagic:dynamite_safe>);
<cyclicmagic:dynamite_safe>.addTooltip(format.green("This item can be bought at the Mining Hut"));
mods.harvestfestival.Shops.addPurchasable("harvestfestival:miner", <cyclicmagic:dynamite_safe>, 500);

recipes.remove(<cyclicmagic:ender_tnt_1>);
<cyclicmagic:ender_tnt_1>.addTooltip(format.green("This item can be bought at the Mining Hut"));
mods.harvestfestival.Shops.addPurchasable("harvestfestival:miner", <cyclicmagic:ender_tnt_1>, 100);

recipes.remove(<cyclicmagic:magic_net>);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:magic_net>, 500);
<cyclicmagic:magic_net>.addTooltip(format.green("This item can be bought at Katlin in the Cafe"));
recipes.remove(<cyclicmagic:exp_pylon>);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:gadgets", <cyclicmagic:exp_pylon>, 25000);
<cyclicmagic:exp_pylon>.addTooltip(format.green("This item can be bought at Katlin in the Cafe"));

// Refined Storage
recipes.remove(<refinedstorage:quartz_enriched_iron>);
recipes.remove(<refinedstorage:machine_casing>);

<refinedstorage:quartz_enriched_iron>.addTooltip(format.green("This item can be bought at the BlackSmith"));
<refinedstorage:machine_casing>.addTooltip(format.green("This item can be bought at the BlackSmith"));

mods.harvestfestival.Shops.addPurchasable("harvestfestival:blacksmith", <refinedstorage:quartz_enriched_iron>, 100);
mods.harvestfestival.Shops.addPurchasable("harvestfestival:blacksmith", <refinedstorage:machine_casing>, 25000);

// --- Bibliocraft ---

recipes.remove(<bibliocraft:LampGold>);
recipes.remove(<bibliocraft:LampIron>);
recipes.remove(<bibliocraft:LanternGold>);
recipes.remove(<bibliocraft:LanternIron>);
recipes.remove(<bibliocraft:FramingSaw>);
recipes.remove(<bibliocraft:TypesettingTable>);
recipes.remove(<bibliocraft:PrintingPress>);
recipes.remove(<bibliocraft:BiblioClipboard>);
recipes.remove(<bibliocraft:Bookcase>);
recipes.remove(<bibliocraft:Shelf>);
recipes.remove(<bibliocraft:PotionShelf>);
recipes.remove(<bibliocraft:ToolRack>);
recipes.remove(<bibliocraft:Table>);
recipes.remove(<bibliocraft:Desk>);
recipes.remove(<bibliocraft:FramedChest>);
recipes.remove(<bibliocraft:Seat>);
recipes.remove(<bibliocraft:Case>);
recipes.remove(<bibliocraft:FancyWorkbench>);
recipes.remove(<bibliocraft:Label>);
recipes.remove(<bibliocraft:Clock>);
recipes.remove(<bibliocraft:ArmorStand>);
recipes.remove(<bibliocraft:Bell>);

<bibliocraft:LampGold>.addTooltip(format.green("This item can be bought at Yulif"));
<bibliocraft:LampIron>.addTooltip(format.green("This item can be bought at Yulif"));
<bibliocraft:LanternGold>.addTooltip(format.green("This item can be bought at Yulif"));
<bibliocraft:LanternIron>.addTooltip(format.green("This item can be bought at Yulif"));
<bibliocraft:FramingSaw>.addTooltip(format.green("This item can be bought at Yulif"));
<bibliocraft:TypesettingTable>.addTooltip(format.green("This item can be bought at Yulif"));
<bibliocraft:PrintingPress>.addTooltip(format.green("This item can be bought at Yulif"));
<bibliocraft:BiblioClipboard>.addTooltip(format.green("This item can be bought at Yulif"));
<bibliocraft:Bookcase>.addTooltip(format.green("This item can be bought at Yulif"));
<bibliocraft:Shelf>.addTooltip(format.green("This item can be bought at Yulif"));
<bibliocraft:PotionShelf>.addTooltip(format.green("This item can be bought at Yulif"));
<bibliocraft:ToolRack>.addTooltip(format.green("This item can be bought at Yulif"));
<bibliocraft:Desk>.addTooltip(format.green("This item can be bought at Yulif"));
<bibliocraft:Table>.addTooltip(format.green("This item can be bought at Yulif"));
<bibliocraft:FramedChest>.addTooltip(format.green("This item can be bought at Yulif"));
<bibliocraft:Seat>.addTooltip(format.green("This item can be bought at Yulif"));
<bibliocraft:Case>.addTooltip(format.green("This item can be bought at Yulif"));
<bibliocraft:FancyWorkbench>.addTooltip(format.green("This item can be bought at Yulif"));
<bibliocraft:Label>.addTooltip(format.green("This item can be bought at Yulif"));
<bibliocraft:Clock>.addTooltip(format.green("This item can be bought at Yulif"));
<bibliocraft:ArmorStand>.addTooltip(format.green("This item can be bought at Yulif"));
<bibliocraft:Bell>.addTooltip(format.green("This item can be bought at Yulif"));

mods.harvestfestival.Shops.addPurchasableToBuilder(<bibliocraft:LampGold>, 0, 0, 500);
mods.harvestfestival.Shops.addPurchasableToBuilder(<bibliocraft:LampIron>, 0, 0, 500);
mods.harvestfestival.Shops.addPurchasableToBuilder(<bibliocraft:LanternGold>, 0, 0, 500);
mods.harvestfestival.Shops.addPurchasableToBuilder(<bibliocraft:LanternIron>, 0, 0, 500);
mods.harvestfestival.Shops.addPurchasableToBuilder(<bibliocraft:FramingSaw>, 1, 0, 500);
mods.harvestfestival.Shops.addPurchasableToBuilder(<bibliocraft:TypesettingTable>, 0, 0, 2000);
mods.harvestfestival.Shops.addPurchasableToBuilder(<bibliocraft:PrintingPress>, 0, 0, 2000);
mods.harvestfestival.Shops.addPurchasableToBuilder(<bibliocraft:BiblioClipboard>, 0, 0, 500);
mods.harvestfestival.Shops.addPurchasableToBuilder(<bibliocraft:Bookcase>, 6, 0, 500);
mods.harvestfestival.Shops.addPurchasableToBuilder(<bibliocraft:Shelf>, 6, 0, 500);
mods.harvestfestival.Shops.addPurchasableToBuilder(<bibliocraft:PotionShelf>, 3, 0, 500);
mods.harvestfestival.Shops.addPurchasableToBuilder(<bibliocraft:ToolRack>, 3, 0, 500);
mods.harvestfestival.Shops.addPurchasableToBuilder(<bibliocraft:Desk>, 32, 0, 500);
mods.harvestfestival.Shops.addPurchasableToBuilder(<bibliocraft:Table>, 16, 0, 500);
mods.harvestfestival.Shops.addPurchasableToBuilder(<bibliocraft:FramedChest>, 16, 0, 500);
mods.harvestfestival.Shops.addPurchasableToBuilder(<bibliocraft:Seat>, 6, 0, 500);
mods.harvestfestival.Shops.addPurchasableToBuilder(<bibliocraft:Case>, 6, 0, 500);
mods.harvestfestival.Shops.addPurchasableToBuilder(<bibliocraft:FancyWorkbench>, 16, 0, 500);
mods.harvestfestival.Shops.addPurchasableToBuilder(<bibliocraft:Label>, 2, 0, 500);
mods.harvestfestival.Shops.addPurchasableToBuilder(<bibliocraft:Clock>, 32, 0, 500);
mods.harvestfestival.Shops.addPurchasableToBuilder(<bibliocraft:ArmorStand>, 16, 0, 500);
mods.harvestfestival.Shops.addPurchasableToBuilder(<bibliocraft:Bell>, 16, 0, 250);

// --- InventoryPets ---

recipes.remove(<inventorypets:cow_pet>);
recipes.remove(<inventorypets:sheep_pet>);
recipes.remove(<inventorypets:pig_pet>);
recipes.remove(<inventorypets:squid_pet>);
recipes.remove(<inventorypets:ocelot_pet>);
recipes.remove(<inventorypets:mooshroom_pet>);
recipes.remove(<inventorypets:ghast_pet>);
recipes.remove(<inventorypets:spider_pet>);
recipes.remove(<inventorypets:iron_golem_pet>);
recipes.remove(<inventorypets:snow_golem_pet>);
recipes.remove(<inventorypets:enderman_pet>);
recipes.remove(<inventorypets:creeper_pet>);
recipes.remove(<inventorypets:magma_cube_pet>);
recipes.remove(<inventorypets:wither_pet>);
recipes.remove(<inventorypets:blaze_pet>);
recipes.remove(<inventorypets:bed_pet>);
recipes.remove(<inventorypets:chest_pet>);
recipes.remove(<inventorypets:double_chest_pet>);
recipes.remove(<inventorypets:ender_chest_pet>);
recipes.remove(<inventorypets:furnace_pet>);
recipes.remove(<inventorypets:crafting_table_pet>);
recipes.remove(<inventorypets:enchanting_table_pet>);
recipes.remove(<inventorypets:jukebox_pet>);
recipes.remove(<inventorypets:brewing_stand_pet>);
recipes.remove(<inventorypets:nether_portal_pet>);
recipes.remove(<inventorypets:sponge_pet>);
recipes.remove(<inventorypets:purplicious_cow_pet>);
recipes.remove(<inventorypets:mickerson_pet>);
recipes.remove(<inventorypets:pingot_pet>);
recipes.remove(<inventorypets:qcm_pet>);
recipes.remove(<inventorypets:banana_pet>);
recipes.remove(<inventorypets:loot_pet>);
recipes.remove(<inventorypets:slime_pet>);
recipes.remove(<inventorypets:cloud_pet>);
recipes.remove(<inventorypets:pufferfish_pet>);
recipes.remove(<inventorypets:black_hole_pet>);
recipes.remove(<inventorypets:quiver_pet>);
recipes.remove(<inventorypets:pacman_pet>);
recipes.remove(<inventorypets:cheetah_pet>);
recipes.remove(<inventorypets:house_pet>);
recipes.remove(<inventorypets:silverfish_pet>);
recipes.remove(<inventorypets:wolf_pet>);
recipes.remove(<inventorypets:apple_pet>);
recipes.remove(<inventorypets:shield_pet>);
recipes.remove(<inventorypets:heart_pet>);
recipes.remove(<inventorypets:moon_pet>);
recipes.remove(<inventorypets:dubstep_pet>);
recipes.remove(<inventorypets:juggernaut_pet>);
recipes.remove(<inventorypets:illuminati_pet>.withTag({slowDelay: 6000}));
recipes.remove(<inventorypets:grave_pet>);
recipes.remove(<inventorypets:easter_egg>);

mods.harvestfestival.Shops.addShopToNPC("candice", "Petshop", "Hello, i have a small store with pets, want to buy some?!", "monday,10000,13000;tuesday,10000,13000;Wednesday,5000,13000;Thursday,10000,13000;Friday,10000,13000;Saturday,10000,13000", "If you want to see what i sell, come back monday to saturday between 10:00 to 13:00");
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:cow_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:sheep_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:pig_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:squid_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:ocelot_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:mooshroom_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:ghast_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:spider_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:iron_golem_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:snow_golem_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:enderman_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:creeper_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:magma_cube_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:wither_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:blaze_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:bed_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:chest_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:double_chest_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:ender_chest_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:furnace_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:crafting_table_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:enchanting_table_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:jukebox_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:brewing_stand_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:nether_portal_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:sponge_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:purplicious_cow_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:mickerson_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:pingot_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:qcm_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:banana_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:loot_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:slime_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:cloud_pet>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:pufferfish_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:black_hole_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:quiver_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:pacman_pet>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:cheetah_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:house_pet>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:silverfish_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:wolf_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:apple_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:shield_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:heart_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:moon_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:dubstep_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:juggernaut_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:illuminati_pet>.withTag({slowDelay: 6000}), 1000000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:grave_pet>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:petshop", <inventorypets:easter_egg>, 25000);

<inventorypets:cow_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:sheep_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:pig_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:squid_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:ocelot_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:mooshroom_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:ghast_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:spider_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:iron_golem_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:snow_golem_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:enderman_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:creeper_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:magma_cube_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:wither_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:blaze_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:bed_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:chest_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:double_chest_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:ender_chest_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:furnace_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:crafting_table_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:enchanting_table_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:jukebox_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:brewing_stand_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:nether_portal_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:sponge_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:purplicious_cow_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:mickerson_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:pingot_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:qcm_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:banana_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:loot_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:slime_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:cloud_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:pufferfish_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:black_hole_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:quiver_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:pacman_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:cheetah_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:house_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:silverfish_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:wolf_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:apple_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:shield_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:heart_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:moon_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:dubstep_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:juggernaut_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:illuminati_pet>.withTag({slowDelay: 6000}).addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:grave_pet>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));
<inventorypets:easter_egg>.addTooltip(format.green("This item can be bought at Candice at the Animal Ranch"));

// ChanceCube
recipes.remove(<chancecubes:chance_Cube>);

mods.harvestfestival.Shops.addPurchasable("MineTweaker3:church", <chancecubes:chance_Cube>, 1000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:church", <chancecubes:giant_Chance_Cube>, 5000);
<chancecubes:giant_Chance_Cube>.addTooltip(format.green("This item can be bought at Tomas at the Church"));
<chancecubes:chance_Cube>.addTooltip(format.green("This item can be bought at Tomas at the Church"));

// --- SoggyMustaches Transportation ---

recipes.remove(<soggytransportation:Car>);
recipes.remove(<soggytransportation:WhiteBike>);
recipes.remove(<soggytransportation:UFO>);
recipes.remove(<soggytransportation:Glider>);
recipes.remove(<soggytransportation:HotAirBalloon>);
recipes.remove(<soggytransportation:Helicopter>);
recipes.remove(<soggytransportation:RainbowCar>);
recipes.remove(<soggytransportation:PoliceCar>);
recipes.remove(<soggytransportation:Truck>);
recipes.remove(<soggytransportation:Rocket>);
recipes.remove(<soggytransportation:Flintmobile>);
recipes.remove(<soggytransportation:DirtBike>);
recipes.remove(<soggytransportation:Taxi>);
recipes.remove(<soggytransportation:CoolCar>);
recipes.remove(<soggytransportation:BumperCar>);
recipes.remove(<soggytransportation:SoggyMobile>);
recipes.remove(<soggytransportation:Moon>);
recipes.remove(<soggytransportation:Snowmobile>);
recipes.remove(<soggytransportation:Ambulance>);
recipes.remove(<soggytransportation:HorseCarriage>);
recipes.remove(<soggytransportation:Jeep>);
recipes.remove(<soggytransportation:HorseWagon>);
recipes.remove(<soggytransportation:GolfCart>);
recipes.remove(<soggytransportation:DuneBuggy>);
recipes.remove(<soggytransportation:Forklift>);
recipes.remove(<soggytransportation:Earth>);
recipes.remove(<soggytransportation:BasketBike>);
recipes.remove(<soggytransportation:ElectricScooter>);
recipes.remove(<soggytransportation:GiantHamsterBall>);
recipes.remove(<soggytransportation:FancyCar>);
recipes.remove(<soggytransportation:Wagon>);
recipes.remove(<soggytransportation:Unicycle>);
recipes.remove(<soggytransportation:Motorcycle>);
recipes.remove(<soggytransportation:Hovercraft>);
recipes.remove(<soggytransportation:PatJen>);
recipes.remove(<soggytransportation:WheelBarrel>);
recipes.remove(<soggytransportation:GlassBall>);
recipes.remove(<soggytransportation:BlueBike>);
recipes.remove(<soggytransportation:Bike>);
recipes.remove(<soggytransportation:Biplane>);

mods.harvestfestival.Shops.addShopToNPC("girafi", "mechanic", "I used to be an adventurer, but then i decided to become a mechanic.", "thursday,1000,14000;friday,1000,14000;saturday,1000,14000;sunday,1000,14000", "My small workshop only opens thursday to sunday between 01:00 and 14:00.");
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:Car>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:WhiteBike>, 1000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:UFO>, 1000000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:Glider>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:HotAirBalloon>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:Helicopter>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:RainbowCar>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:PoliceCar>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:Truck>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:Rocket>, 1000000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:Flintmobile>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:DirtBike>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:Taxi>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:CoolCar>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:BumperCar>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:SoggyMobile>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:church", <soggytransportation:Moon>, 1000000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:Snowmobile>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:Ambulance>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:HorseCarriage>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:Jeep>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:HorseWagon>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:GolfCart>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:DuneBuggy>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:Forklift>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:church", <soggytransportation:Earth>, 1000000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:BasketBike>, 1000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:ElectricScooter>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:GiantHamsterBall>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:FancyCar>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:Wagon>, 10000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:Unicycle>, 1000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:Motorcycle>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:Hovercraft>, 1000000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:WheelBarrel>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:GlassBall>, 100000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:BlueBike>, 1000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:Bike>, 1000);
mods.harvestfestival.Shops.addPurchasable("MineTweaker3:mechanic", <soggytransportation:Biplane>, 100000);

<soggytransportation:Car>.addTooltip(format.green("This item can be bought at Johan at the General Store"));
<soggytransportation:WhiteBike>.addTooltip(format.green("This item can be bought at Johan at the General Store"));
<soggytransportation:UFO>.addTooltip(format.green("This item can be bought at Johan at the General Store"));
<soggytransportation:Glider>.addTooltip(format.green("This item can be bought at Johan at the General Store"));
<soggytransportation:HotAirBalloon>.addTooltip(format.green("This item can be bought at Johan at the General Store"));
<soggytransportation:Helicopter>.addTooltip(format.green("This item can be bought at Johan at the General Store"));
<soggytransportation:RainbowCar>.addTooltip(format.green("This item can be bought at Johan at the General Store"));
<soggytransportation:PoliceCar>.addTooltip(format.green("This item can be bought at Johan at the General Store"));
<soggytransportation:Truck>.addTooltip(format.green("This item can be bought at Johan at the General Store"));
<soggytransportation:Rocket>.addTooltip(format.green("This item can be bought at Johan at the General Store"));
<soggytransportation:Flintmobile>.addTooltip(format.green("This item can be bought at Johan at the General Store"));
<soggytransportation:DirtBike>.addTooltip(format.green("This item can be bought at Johan at the General Store"));
<soggytransportation:Taxi>.addTooltip(format.green("This item can be bought at Johan at the General Store"));
<soggytransportation:CoolCar>.addTooltip(format.green("This item can be bought at Johan at the General Store"));
<soggytransportation:BumperCar>.addTooltip(format.green("This item can be bought at Johan at the General Store"));
<soggytransportation:SoggyMobile>.addTooltip(format.green("This item can be bought at Johan at the General Store"));
<soggytransportation:Moon>.addTooltip(format.green("This item can be bought at Tomas at the Church"));
<soggytransportation:Snowmobile>.addTooltip(format.green("This item can be bought at Johan at the General Store"));
<soggytransportation:Ambulance>.addTooltip(format.green("This item can be bought at Johan at the General Store"));
<soggytransportation:HorseCarriage>.addTooltip(format.green("This item can be bought at Johan at the General Store"));
<soggytransportation:Jeep>.addTooltip(format.green("This item can be bought at Johan at the General Store"));
<soggytransportation:HorseWagon>.addTooltip(format.green("This item can be bought at Johan at the General Store"));
<soggytransportation:GolfCart>.addTooltip(format.green("This item can be bought at Johan at the General Store"));
<soggytransportation:DuneBuggy>.addTooltip(format.green("This item can be bought at Johan at the General Store"));
<soggytransportation:Forklift>.addTooltip(format.green("This item can be bought at Johan at the General Store"));
<soggytransportation:Earth>.addTooltip(format.green("This item can be bought at Tomas at the Church"));
<soggytransportation:BasketBike>.addTooltip(format.green("This item can be bought at Johan at the General Store"));
<soggytransportation:ElectricScooter>.addTooltip(format.green("This item can be bought at Johan at the General Store"));
<soggytransportation:GiantHamsterBall>.addTooltip(format.green("This item can be bought at Johan at the General Store"));
<soggytransportation:FancyCar>.addTooltip(format.green("This item can be bought at Johan at the General Store"));
<soggytransportation:Wagon>.addTooltip(format.green("This item can be bought at Johan at the General Store"));
<soggytransportation:Unicycle>.addTooltip(format.green("This item can be bought at Johan at the General Store"));
<soggytransportation:Motorcycle>.addTooltip(format.green("This item can be bought at Johan at the General Store"));
<soggytransportation:Hovercraft>.addTooltip(format.green("This item can be bought at Johan at the General Store"));
<soggytransportation:WheelBarrel>.addTooltip(format.green("This item can be bought at Johan at the General Store"));
<soggytransportation:GlassBall>.addTooltip(format.green("This item can be bought at Johan at the General Store"));
<soggytransportation:BlueBike>.addTooltip(format.green("This item can be bought at Johan at the General Store"));
<soggytransportation:Bike>.addTooltip(format.green("This item can be bought at Johan at the General Store"));
<soggytransportation:Biplane>.addTooltip(format.green("This item can be bought at Johan at the General Store"));
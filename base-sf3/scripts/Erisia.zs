# AE2 Press Crafting Recipes
recipes.addShaped(
  <appliedenergistics2:material:19>,
  [[<ore:ingotAluminum>, <ore:itemSilicon>, <ore:ingotAluminum>],
   [<ore:itemSilicon>, <ore:blockIron>, <ore:itemSilicon>],
   [<ore:ingotAluminum>, <ore:itemSilicon>, <ore:ingotAluminum>]]);
<appliedenergistics2:material:19>.addTooltip(format.yellow("Meteorites Disabled! Presses are craftable!"));

recipes.addShaped(
  <appliedenergistics2:material:13>,
  [[<ore:ingotAluminum>, <minecraft:quartz>, <ore:ingotAluminum>],
   [<minecraft:quartz>, <ore:blockIron>, <minecraft:quartz>],
   [<ore:ingotAluminum>, <minecraft:quartz>, <ore:ingotAluminum>]]);
<appliedenergistics2:material:13>.addTooltip(format.yellow("Meteorites Disabled! Presses are craftable!"));

recipes.addShaped(
  <appliedenergistics2:material:15>,
  [[<ore:ingotAluminum>, <minecraft:gold_ingot>, <ore:ingotAluminum>],
   [<minecraft:gold_ingot>, <ore:blockIron>, <minecraft:gold_ingot>],
   [<ore:ingotAluminum>, <minecraft:gold_ingot>, <ore:ingotAluminum>]]);
<appliedenergistics2:material:15>.addTooltip(format.yellow("Meteorites Disabled! Presses are craftable!"));

recipes.addShaped(
  <appliedenergistics2:material:14>,
  [[<ore:ingotAluminum>, <ore:gemDiamond>, <ore:ingotAluminum>],
   [<ore:gemDiamond>, <ore:blockIron>, <ore:gemDiamond>],
   [<ore:ingotAluminum>, <ore:gemDiamond>, <ore:ingotAluminum>]]);
<appliedenergistics2:material:14>.addTooltip(format.yellow("Meteorites Disabled! Presses are craftable!"));

# Remove AE2 Compass and add a tool tip
recipes.remove(<appliedenergistics2:sky_compass>);
<appliedenergistics2:sky_compass>.addTooltip(format.yellow("Meteorites Disabled! Presses are craftable!"));

# AE2 Skystone recipe
recipes.addShaped(
  <appliedenergistics2:sky_stone_block> * 8,
  [[<ore:obsidian>, <ore:blockCoal>, <ore:obsidian>],
   [<ore:blockCoal>, <ore:stone>, <ore:blockCoal>],
   [<ore:obsidian>, <ore:blockCoal>, <ore:obsidian>]]);

# AE2 crystal recipes
val certus = <appliedenergistics2:material>;
val charged = <appliedenergistics2:material:1>;
val skydust = <appliedenergistics2:material:45>;
recipes.addShaped(charged,
  [[skydust, <minecraft:redstone>, skydust],
   [<minecraft:redstone>, <ore:crystalNetherQuartz>, <minecraft:redstone>],
   [skydust, <minecraft:redstone>, skydust]]);
recipes.addShaped(certus,
  [[null, <minecraft:redstone>, null],
   [<minecraft:redstone>, <ore:crystalNetherQuartz>, <minecraft:redstone>],
   [null, <minecraft:redstone>, null]]);


# Disable Refined Storage

recipes.remove(<refinedstorage:machine_casing>);
recipes.remove(<refinedstorage:solderer>);
recipes.remove(<refinedstorage:wireless_transmitter>);
recipes.remove(<refinedstorage:grid>);
recipes.remove(<refinedstorage:wireless_grid>);
recipes.remove(<refinedstorage:wireless_crafting_monitor>);
recipes.remove(<refinedstorage:crafter>);
recipes.remove(<refinedstorage:destructor>);
recipes.remove(<refinedstorage:constructor>);
recipes.remove(<refinedstorage:detector>);
recipes.remove(<refinedstorage:storage_part:1>);
recipes.remove(<refinedstorage:storage_part:2>);
recipes.remove(<refinedstorage:storage_part:3>);
recipes.remove(<refinedstorage:upgrade:4>);
recipes.remove(<refinedstorage:grid_filter>);
recipes.remove(<refinedstorage:network_card>);
recipes.remove(<refinedstorage:network_transmitter>);
recipes.remove(<refinedstorage:network_receiver>);
recipes.remove(<refinedstorage:disk_manipulator>);
recipes.remove(<refinedstorage:wrench>);
recipes.remove(<refinedstorage:controller>);
recipes.remove(<refinedstorage:cable>);
recipes.remove(<refinedstorage:processing_pattern_encoder>);
recipes.remove(<refinedstorage:external_storage>);
recipes.remove(<refinedstorage:storage_part>);
recipes.remove(<refinedstorage:fluid_storage_part>);
recipes.remove(<refinedstorage:fluid_storage_part:1>);
recipes.remove(<refinedstorage:fluid_storage_part:2>);
recipes.remove(<refinedstorage:fluid_storage_part:3>);
recipes.remove(<refinedstorage:storage_housing>);
recipes.remove(<refinedstorage:storage_disk>);
recipes.remove(<refinedstorage:storage_disk:1>);
recipes.remove(<refinedstorage:storage_disk:2>);
recipes.remove(<refinedstorage:storage_disk:3>);
recipes.remove(<refinedstorage:fluid_storage_disk>);
recipes.remove(<refinedstorage:fluid_storage_disk:1>);
recipes.remove(<refinedstorage:fluid_storage_disk:2>);
recipes.remove(<refinedstorage:fluid_storage_disk:3>);
recipes.remove(<refinedstorage:pattern>);
recipes.remove(<refinedstorage:upgrade>);
recipes.remove(<refinedstorage:crafting_monitor>);
recipes.remove(<rebornstorage:multicrafter>);
recipes.remove(<rebornstorage:multicrafter:1>);
recipes.remove(<rebornstorage:multicrafter:2>);
recipes.remove(<rebornstorage:multicrafter:3>);
recipes.remove(<mysticalagriculture:quartz_enriched_iron_seeds>);
recipes.remove(<refinedstorage:quartz_enriched_iron>);
recipes.remove(<refinedstorage:quartz_enriched_iron>);
recipes.remove(<refinedstorage:relay>);
recipes.remove(<refinedstorage:importer>);
recipes.remove(<refinedstorage:exporter>);
recipes.remove(<refinedstorage:core>);
recipes.remove(<refinedstorage:core:1>);
recipes.remove(<refinedstorage:storage_disk>);
recipes.remove(<refinedstorage:storage_disk:1>);
recipes.remove(<refinedstorage:storage_disk:2>);
recipes.remove(<refinedstorage:storage_disk:3>);
recipes.remove(<refinedstorage:fluid_storage_disk>);
recipes.remove(<refinedstorage:fluid_storage_disk:1>);
recipes.remove(<refinedstorage:fluid_storage_disk:2>);
recipes.remove(<refinedstorage:fluid_storage_disk:3>);
recipes.remove(<refinedstorage:quartz_enriched_iron>);
recipes.remove(<refinedstorage:disk_drive>);
recipes.remove(<refinedstorage:grid:1>);
recipes.remove(<refinedstorage:grid:2>);
recipes.remove(<refinedstorage:grid:3>);
recipes.remove(<refinedstorage:interface>);
recipes.remove(<refinedstorage:quartz_enriched_iron>);
recipes.remove(<refinedstorage:disk_drive>);
recipes.remove(<refinedstorage:grid:1>);
recipes.remove(<refinedstorage:grid:2>);
recipes.remove(<refinedstorage:grid:3>);
recipes.remove(<refinedstorage:interface>);

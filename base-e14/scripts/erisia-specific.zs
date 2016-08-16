import mods.botania.ManaInfusion;
import mods.botania.RuneAltar;
import mods.botania.Lexicon;
 
val bone = <minecraft:bone>;
val rawBeef = <minecraft:beef>;
val gunpowder = <minecraft:gunpowder>;
val fish = <ore:fish>;
val spawnWolf = <minecraft:spawn_egg:95>;
val spawnOcelot = <minecraft:spawn_egg:98>;
val egg = <minecraft:egg>;
 
RuneAltar.addRecipe(spawnWolf, [bone, bone, rawBeef, rawBeef, egg], 22000);
RuneAltar.addRecipe(spawnOcelot, [gunpowder, gunpowder, fish, fish, egg], 22000);

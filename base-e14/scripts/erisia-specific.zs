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

#add wolf and ocelot spawn egg recipes 
RuneAltar.addRecipe(spawnWolf, [bone, bone, rawBeef, rawBeef, egg], 22000);
RuneAltar.addRecipe(spawnOcelot, [gunpowder, gunpowder, fish, fish, egg], 22000);

### Now let's make angel ring a bit more work to craft
val angelRingInvisible = <ExtraUtilities:angelRing:0>;
val anyAngelRing = <ExtraUtilities:angelRing:*>;

val flugelTiara = <Botania:flightTiara:*>;
val dawnInscriptionTool = <AWWayofTime:dawnScribeTool>;
val ecMagicalWings = <essentialcraft:magicalWings>;

#disable Shaped angel ring original recipes - leaving shapeless recipes to craft decorative variants
recipes.removeShaped(anyAngelRing);

recipes.addShaped(angelRingInvisible,[[flugelTiara,null,flugelTiara],[dawnInscriptionTool,null,dawnInscriptionTool],[null,ecMagicalWings,null]]);

### Now Healing axe troll
val healingAxe = <ExtraUtilities:defoliageAxe>;
val unstableBlock = <ore:blockUnstable>;
val soulRunicPlate = <AWWayofTime:bloodMagicBaseItems:30>;
val gaiaGuardianHead = <Botania:gaiaHead>;

recipes.remove(healingAxe);
recipes.addShaped(healingAxe,[[unstableBlock,gaiaGuardianHead,unstableBlock],[null,soulRunicPlate,null],[null,soulRunicPlate,null]]);


### Diamond nugget conflicts.
recipes.remove(<Translocator:diamondNugget>);
recipes.addShapeless(<Translocator:diamondNugget>*9,
  [<minecraft:diamond>, <minecraft:flint>]);


val wool = <ore:blockWool>;

# Curtains conflict with Malisis Doors vs ExU
recipes.remove(<ExtraUtilities:curtains>);
recipes.addShaped(<ExtraUtilities:curtains>*12,
  [[wool,wool,wool],[wool,wool,wool]]);

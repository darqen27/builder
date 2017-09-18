
// The default recipes are too cheap.
// Lean on Botania to make custom DimDoors a thing.
recipes.remove(<dimdoors:Personal Dimensional Door Item>);
mods.botania.ElvenTrade.addRecipe(<dimdoors:Personal Dimensional Door Item>,
  [<dimdoors:Warp Door Item>]);
mods.botania.ManaInfusion.addAlchemy(<dimdoors:Stable Fabric Item>,
  <dimdoors:World Thread>*4, 50000);
mods.botania.ManaInfusion.addConjuration(<dimdoors:World Thread>*2,
  <dimdoors:World Thread>, 100000);
mods.botania.ManaInfusion.addInfusion(<dimdoors:Stabilized Rift Signature>,
  <dimdoors:Rift Signature>, 20000);
mods.botania.ElvenTrade.addRecipe(<dimdoors:Rift Signature>,
  [<dimdoors:World Thread>]);


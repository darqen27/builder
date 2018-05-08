// import crafttweaker.item.IItemStack;

// val miner = <bedrockores:bedrock_miner>;
// val light = <immersiveengineering:metal_decoration0:4>;
// val heavy = <immersiveengineering:metal_decoration0:5>;
// val dynamo = <immersiveengineering:metal_device1:2>;
// val drill = <immersiveengineering:drillhead>;
// val scaffolding = <immersiveengineering:metal_decoration1:5>;

// recipes.remove(miner);

// recipes.addShaped(miner,
//   [[scaffolding, light, scaffolding],
//    [scaffolding, dynamo, scaffolding],
//    [heavy, drill, heavy]]);
   
// // Iridium conversion between TE and IC2.
// recipes.addShapeless(<ic2:misc_resource:2>, [<ore:nuggetIridium>]);

// // Non-chisel crafting of Xtones.
// val xtones = [<xtones:agon>, <xtones:azur>, <xtones:bitt>, <xtones:cray>, <xtones:fort>, <xtones:glaxx>, <xtones:iszm>, <xtones:jelt>, <xtones:korp>, <xtones:kryp>, <xtones:lair>, <xtones:lamp_flat>, <xtones:lave>, <xtones:mint>, <xtones:myst>, <xtones:reds>, <xtones:reed>, <xtones:roen>, <xtones:sols>, <xtones:sync>, <xtones:tank>, <xtones:vect>, <xtones:vena>, <xtones:zane>, <xtones:zech>, <xtones:zest>, <xtones:zeta>, <xtones:zion>, <xtones:zkul>, <xtones:zoea>, <xtones:zome>, <xtones:zone>, <xtones:zorg>, <xtones:ztyl>, <xtones:zyth>] as IItemStack[];

// for i, xtone in xtones {
//   val def = xtone.definition;
//   for j in 0 to 15 {
//     val input = def.makeStack(j);
//     recipes.addShapeless(def.makeStack(j+1)*9, [
//       input, input, input, input, input, input, input, input, input
//     ]);
//   }
//   val input = def.makeStack(15);
//   recipes.addShapeless(def.makeStack(0)*9, [
//     input, input, input, input, input, input, input, input, input
//   ]);
// }

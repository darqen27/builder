import minetweaker.item.IItemStack;

var str = <minecraft:string>;
var hemp = <betterwithmods:material:3>;
var rope = <betterwithmods:rope>;

recipes.remove(str);
recipes.addShaped(str,
  [[null,null,null],
   [hemp,hemp,hemp],
   [null,null,null]]);
recipes.remove(rope);
recipes.addShaped(rope,
  [[null, hemp, null],
   [null, hemp, null],
   [null, hemp, null]]);

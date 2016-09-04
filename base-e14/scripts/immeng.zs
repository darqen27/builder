# Fix the sheet metal recipe conflict.
val i = <ore:plateIron>;
recipes.remove(<ImmersiveEngineering:metalDecoration:10>);
recipes.addShaped(<ImmersiveEngineering:metalDecoration:10>*4, [[i,null,i],[null,null,null],[i,null,i]]);

# Make Railcraft tanks craftable with ore-dicted plates.

val i = <ore:plateIron>;
val s = <ore:plateSteel>;
val p = <ore:paneGlassColorless>;
val l = <minecraft:lever>;

recipes.remove(<Railcraft:machine.beta:0>);
recipes.remove(<Railcraft:machine.beta:1>);
recipes.remove(<Railcraft:machine.beta:2>);
recipes.remove(<Railcraft:machine.beta:13>);
recipes.remove(<Railcraft:machine.beta:14>);
recipes.remove(<Railcraft:machine.beta:15>);

recipes.addShaped(<Railcraft:machine.beta:0>*8,
  [[i,i,null],[i,i,null],[null,null,null]]);
recipes.addShaped(<Railcraft:machine.beta:1>*8,
  [[p,i,p],[i,p,i],[p,i,p]]);
recipes.addShaped(<Railcraft:machine.beta:2>*8,
  [[i,i,i],[i,l,i],[i,i,i]]);

recipes.addShaped(<Railcraft:machine.beta:13>*8,
  [[s,s,null],[s,s,null],[null,null,null]]);
recipes.addShaped(<Railcraft:machine.beta:14>*8,
  [[p,s,p],[s,p,s],[p,s,p]]);
recipes.addShaped(<Railcraft:machine.beta:15>*8,
  [[s,s,s],[s,l,s],[s,s,s]]);

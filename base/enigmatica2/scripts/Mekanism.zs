import mods.jei.JEI.removeAndHide as rh;

# Custom recipes made by NillerMedDild
	print("--- loading Mekanism.zs ---");
	
# *======= Removals =======*

# Removing Anchor Upgrade
	recipes.remove(<mekanism:anchorupgrade>);

# Removing bronze tools
	rh(<mekanismtools:bronzepickaxe>);
	rh(<mekanismtools:bronzeaxe>);
	rh(<mekanismtools:bronzeshovel>);
	rh(<mekanismtools:bronzehoe>);
	rh(<mekanismtools:bronzesword>);
	
# Updating the Bronze Paxel recipe
	recipes.remove(<mekanismtools:bronzepaxel>);
	recipes.addShaped("Mekanism Bronze Paxel", 
	<mekanismtools:bronzepaxel>, 
	[[<thermalfoundation:tool.axe_bronze>, <thermalfoundation:tool.pickaxe_bronze>, <thermalfoundation:tool.shovel_bronze>],
	[null, <ore:stickWood>, null], 
	[null, <ore:stickWood>, null]]);
	
# Removing bronze armor
	rh(<mekanismtools:bronzehelmet>);
	rh(<mekanismtools:bronzeboots>);
	rh(<mekanismtools:bronzeleggings>);
	rh(<mekanismtools:bronzechestplate>);
	
# Removing steel tools
	rh(<mekanismtools:steelpickaxe>);
	rh(<mekanismtools:steelaxe>);
	rh(<mekanismtools:steelshovel>);
	rh(<mekanismtools:steelhoe>);
	rh(<mekanismtools:steelsword>);
	
# Updating the Steel Paxel recipe
	recipes.remove(<mekanismtools:steelpaxel>);
	recipes.addShaped("Mekanism Steel Paxel", 
	<mekanismtools:steelpaxel>, 
	[[<thermalfoundation:tool.axe_steel>, <thermalfoundation:tool.pickaxe_steel>, <thermalfoundation:tool.shovel_steel>],
	[null, <ore:stickWood>, null], 
	[null, <ore:stickWood>, null]]);
	
# Removing steel armor
	rh(<mekanismtools:steelhelmet>);
	rh(<mekanismtools:steelboots>);
	rh(<mekanismtools:steelleggings>);
	rh(<mekanismtools:steelchestplate>);



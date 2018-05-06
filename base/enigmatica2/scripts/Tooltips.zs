# Custom recipes made by NillerMedDild
	print("--- loading Tooltips.zs ---");

# *======= Variables =======*

	var metallurgic = format.red("(Only obtainable through the Metallurgic Infuser)");
	var atomicReconstructor = format.red("(Only obtainable through the Atomic Reconstructor)");

# *======= Adding Tooltips =======*
	
	# Bibliocraft Clipboard
	<bibliocraft:biblioclipboard>.addTooltip(format.red("(Removed due to instability issues)"));
	
	<libvulpes:productingot:7>.addTooltip(format.red("(Craftable)"));

	<natura:redwood_sapling>.addTooltip("Caution: This tree is insanely big!");

	<mekanism:anchorupgrade>.addTooltip(format.red("Disabled. Use FTBUtilities Chunk Loading."));

	<harvestcraft:market>.addTooltip(format.red("Disabled. Use the Market from Farming For Blockheads."));
		
# NuclearCraft materials

	<nuclearcraft:gem>.addTooltip(atomicReconstructor);
	<nuclearcraft:gem:2>.addTooltip(atomicReconstructor);
	
	<nuclearcraft:dust:9>.addTooltip(metallurgic);
	<nuclearcraft:dust:10>.addTooltip(metallurgic);

# *======= Name Changes =======*
	
# Custom recipes made by NillerMedDild
	print("--- loading OreDict.zs ---");

# *======= Variables =======*
	
# Various stones
	val stonemarble = <ore:stoneMarble>;
	val stonemarblepolished = <ore:stoneMarblePolished>;
	val andesite = <ore:stoneAndesite>;
	val diorite = <ore:stoneDiorite>;
	val granite = <ore:stoneGranite>;
	val sandstone = <ore:sandstone>;
	val basalt = <ore:stoneBasalt>;
	val limestone = <ore:stoneLimestone>;
	
	/*
# Railcraft stones
	val bloodstained = <ore:stoneBloodstained>;
	val frostbound = <ore:stoneFrostbound>;
	val infernal = <ore:stoneInfernal>;
	val quarried = <ore:stoneQuarried>;
	val sandy = <ore:stoneSandy>;
	val redsandy = <ore:stoneRedsandy>;
	val nether = <ore:stoneNether>;
	val rednether = <ore:stoneRednether>;
	val abyssal = <ore:stoneAbyssal>;
	val bleachedbone = <ore:stoneBleachedbone>;
	val pearlized = <ore:stonePearlized>;
	*/
	
# Forestry gears
	val gearTin = <ore:gearTin>;
	val gearCopper = <ore:gearCopper>;
	val gearBronze = <ore:gearBronze>;	
		
# *======= Assorted OreDictionary =======*

#Marble
	stonemarblepolished.add(<astralsorcery:blockmarble>);
	stonemarblepolished.add(<astralsorcery:blockmarble:1>);
	stonemarblepolished.add(<astralsorcery:blockmarble:2>);
	stonemarblepolished.add(<astralsorcery:blockmarble:3>);
	stonemarblepolished.add(<astralsorcery:blockmarble:4>);
	stonemarblepolished.add(<astralsorcery:blockmarble:5>);
	stonemarblepolished.add(<astralsorcery:blockmarble:6>);
	
# Removing gears from JEI "cycling"
	gearTin.remove(<forestry:gear_tin>);
	gearCopper.remove(<forestry:gear_copper>);
	gearBronze.remove(<forestry:gear_bronze>);
	
# Immersive Tech Salt
	<ore:itemSalt>.add(<immersivetech:material>);
	<ore:foodSalt>.add(<immersivetech:material>);
	<ore:dustSalt>.add(<immersivetech:material>);
	
# *======= Quark Specific Oredict =======*

	stonemarble.add(<quark:world_stone_bricks:4>);
	stonemarble.add(<quark:marble:1>);
	
	sandstone.add(<quark:sandstone_new>);
	sandstone.add(<quark:sandstone_new:1>);
	sandstone.add(<quark:sandstone_new:2>);
	sandstone.add(<quark:sandstone_new:3>);
	
	diorite.add(<quark:world_stone_bricks:1>);
	andesite.add(<quark:world_stone_bricks:2>);
	granite.add(<quark:world_stone_bricks>);
	
	basalt.add(<quark:world_stone_bricks:3>);
	
	limestone.add(<quark:limestone:1>);
	limestone.add(<quark:world_stone_bricks:5>);

# *======= Railcraft Specific Oredict =======*
/*
	diorite.add(<railcraft:brick_diorite>);
	diorite.add(<railcraft:brick_diorite:1>);
	diorite.add(<railcraft:brick_diorite:3>);
	diorite.add(<railcraft:brick_diorite:4>);
	diorite.add(<railcraft:brick_diorite:5>);
	
	andesite.add(<railcraft:brick_andesite>);
	andesite.add(<railcraft:brick_andesite:1>);
	andesite.add(<railcraft:brick_andesite:3>);
	andesite.add(<railcraft:brick_andesite:4>);
	andesite.add(<railcraft:brick_andesite:5>);
	
	granite.add(<railcraft:brick_granite>);
	granite.add(<railcraft:brick_granite:1>);
	granite.add(<railcraft:brick_granite:3>);
	granite.add(<railcraft:brick_granite:4>);
	granite.add(<railcraft:brick_granite:5>);
	
	bloodstained.add(<railcraft:brick_bloodstained>);
	bloodstained.add(<railcraft:brick_bloodstained:1>);
	bloodstained.add(<railcraft:brick_bloodstained:2>);
	bloodstained.add(<railcraft:brick_bloodstained:3>);
	bloodstained.add(<railcraft:brick_bloodstained:4>);
	bloodstained.add(<railcraft:brick_bloodstained:5>);

	frostbound.add(<railcraft:brick_frostbound>);
	frostbound.add(<railcraft:brick_frostbound:1>);
	frostbound.add(<railcraft:brick_frostbound:2>);
	frostbound.add(<railcraft:brick_frostbound:3>);
	frostbound.add(<railcraft:brick_frostbound:4>);
	frostbound.add(<railcraft:brick_frostbound:5>);
	
	infernal.add(<railcraft:brick_infernal>);
	infernal.add(<railcraft:brick_infernal:1>);
	infernal.add(<railcraft:brick_infernal:2>);
	infernal.add(<railcraft:brick_infernal:3>);
	infernal.add(<railcraft:brick_infernal:4>);
	infernal.add(<railcraft:brick_infernal:5>);

	quarried.add(<railcraft:brick_quarried>);
	quarried.add(<railcraft:brick_quarried:1>);
	quarried.add(<railcraft:brick_quarried:2>);
	quarried.add(<railcraft:brick_quarried:3>);
	quarried.add(<railcraft:brick_quarried:4>);
	quarried.add(<railcraft:brick_quarried:5>);

	sandy.add(<railcraft:brick_sandy>);
	sandy.add(<railcraft:brick_sandy:1>);
	sandy.add(<railcraft:brick_sandy:2>);
	sandy.add(<railcraft:brick_sandy:3>);
	sandy.add(<railcraft:brick_sandy:4>);
	sandy.add(<railcraft:brick_sandy:5>);

	redsandy.add(<railcraft:brick_red_sandy>);
	redsandy.add(<railcraft:brick_red_sandy:1>);
	redsandy.add(<railcraft:brick_red_sandy:2>);
	redsandy.add(<railcraft:brick_red_sandy:3>);
	redsandy.add(<railcraft:brick_red_sandy:4>);
	redsandy.add(<railcraft:brick_red_sandy:5>);

	nether.add(<railcraft:brick_nether:1>);
	nether.add(<railcraft:brick_nether:2>);
	nether.add(<railcraft:brick_nether:3>);
	nether.add(<railcraft:brick_nether:4>);
	nether.add(<railcraft:brick_nether:5>);
	
	rednether.add(<railcraft:brick_red_nether:1>);
	rednether.add(<railcraft:brick_red_nether:2>);
	rednether.add(<railcraft:brick_red_nether:3>);
	rednether.add(<railcraft:brick_red_nether:4>);
	rednether.add(<railcraft:brick_red_nether:5>);

	abyssal.add(<railcraft:brick_abyssal>);
	abyssal.add(<railcraft:brick_abyssal:1>);
	abyssal.add(<railcraft:brick_abyssal:2>);
	abyssal.add(<railcraft:brick_abyssal:3>);
	abyssal.add(<railcraft:brick_abyssal:4>);
	abyssal.add(<railcraft:brick_abyssal:5>);
	
	bleachedbone.add(<railcraft:brick_bleachedbone>);
	bleachedbone.add(<railcraft:brick_bleachedbone:1>);
	bleachedbone.add(<railcraft:brick_bleachedbone:2>);
	bleachedbone.add(<railcraft:brick_bleachedbone:3>);
	bleachedbone.add(<railcraft:brick_bleachedbone:4>);
	bleachedbone.add(<railcraft:brick_bleachedbone:5>);
	
	pearlized.add(<railcraft:brick_pearlized>);
	pearlized.add(<railcraft:brick_pearlized:1>);
	pearlized.add(<railcraft:brick_pearlized:2>);
	pearlized.add(<railcraft:brick_pearlized:3>);
	pearlized.add(<railcraft:brick_pearlized:4>);
	pearlized.add(<railcraft:brick_pearlized:5>);
	
*/
	

	
	
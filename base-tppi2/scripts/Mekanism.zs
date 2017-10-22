recipes.remove(<Mekanism:AtomicDisassembler>);

val fullEnergyTablet = <Mekanism:EnergyTablet>.withTag({electricity: 1000000.0});
val fullDisassembler = <Mekanism:AtomicDisassembler>.withTag({electricity: 1000000.0});
val atomicAlloy = <Mekanism:AtomicAlloy>;
val disassemblyCore = <TPPITweaks:tppiMaterial:1>;
val refinedObsidian = <Mekanism:Ingot>;

recipes.addShaped(fullDisassembler, [
	[atomicAlloy, fullEnergyTablet, atomicAlloy],
	[atomicAlloy, disassemblyCore, atomicAlloy],
	[null, refinedObsidian, null]]);
	
val digitalMiner = <Mekanism:MachineBlock:4>;
val fullRobit = <Mekanism:Robit>.withTag({electricity:100000.0});
val imbuedCircuit = <TPPITweaks:tppiMaterial:3>;
val steelCasing = <Mekanism:BasicBlock:8>;
val logisticalSorter = <Mekanism:MachineBlock:15>;

recipes.remove(digitalMiner);

recipes.addShaped(digitalMiner, [
	[atomicAlloy, imbuedCircuit, atomicAlloy],
	[logisticalSorter, fullRobit, logisticalSorter],
	[steelCasing, fullDisassembler, steelCasing]]);
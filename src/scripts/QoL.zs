#OreDict
var plateSteel = <ore:plateSteel>;
var plateAluminium = <ore:plateAluminium>;
var plateTin = <ore:plateTin>;
var ingotIron = <ore:ingotIron>;
var ingotGold = <ore:ingotGold>;
var ingotLead = <ore:ingotLead>;
var ingotBronze = <ore:ingotBronze>;
var ingotTin = <ore:ingotTin>;
var ingotCopper = <ore:ingotCopper>;
var ingotSteel = <ore:ingotSteel>;
var furnace = <ore:craftingFurnace>;

var OxygenCollector = <GalacticraftCore:tile.oxygenCollector>;
var OxygenCompressor = <GalacticraftCore:tile.oxygenCompressor>;
var OxygenDecompressor = <GalacticraftCore:tile.oxygenCompressor:4>;
var OxygenDistributor = <GalacticraftCore:tile.distributor>;
var OxygenSealer = <GalacticraftCore:tile.sealer>;
var OxygenDetector = <GalacticraftCore:tile.oxygenDetector>;
var ElectricFurnace = <GalacticraftCore:tile.machineTiered:4>;
var ElectricArcFurnace = <GalacticraftCore:tile.machineTiered:12>;
var AdvancedWafer = <GalacticraftCore:item.basicItem:14>;
var heavyPlating = <GalacticraftCore:item.heavyPlating>;
var OxygenFan = <GalacticraftCore:item.airFan>;
var OxygenVent = <GalacticraftCore:item.airVent>;
var OxygenConcentrator = <GalacticraftCore:item.oxygenConcentrator>;



var FluidCell = <IC2:itemFluidCell>;


##############
#Galacticraft#
##############
#Electric Arc Furnace
#recipes.removeShaped(ElectricArcFurnace);
recipes.addShaped(ElectricArcFurnace, [[heavyPlating, heavyPlating, heavyPlating], 
                                       [heavyPlating, ElectricFurnace, heavyPlating], 
                                       [ingotSteel, AdvancedWafer, ingotSteel]]);  
#Electric Furnace
#recipes.removeShaped(ElectricFurnace);
recipes.addShaped(ElectricFurnace, [[plateSteel, plateSteel, plateSteel],
                               [plateSteel, furnace, plateSteel],
                               [plateAluminium, AdvancedWafer, plateAluminium]]);
#Oxygen Collector
recipes.removeShaped(OxygenCollector);
recipes.addShaped(OxygenCollector, [[plateSteel, plateSteel, plateSteel],
                                    [OxygenFan, FluidCell, OxygenVent],
                                    [plateAluminium, OxygenConcentrator, plateAluminium]]);
#Oxygen Vent
recipes.removeShaped(OxygenVent);
recipes.addShaped(OxygenVent, [[plateTin, plateTin, null],
                               [plateTin, plateSteel, null],
                               [null, null, null]]);



#MeteoricIron OreDict Fixes
<ore:ingotMeteoricIron>.remove(<GalacticraftCore:item.meteoricIronIngot>);
<ore:ingotMeteoricIron>.remove(<gregtech:gt.metaitem.01:11340>);
ingotSteel.add(<GalacticraftCore:item.meteoricIronIngot>);
ingotSteel.add(<gregtech:gt.metaitem.01:11340>);

#Compressed Ingots Added To OreDict
<ore:plateAluminium>.add(<GalacticraftCore:item.basicItem:8>);
<ore:compressedAluminum>.remove(<GalacticraftCore:item.basicItem:8>);
<ore:plateSteel>.add(<GalacticraftCore:item.basicItem:9>);
<ore:compressedSteel>.remove(<GalacticraftCore:item.basicItem:9>);




##########
#GregTech#
##########

#GregTech Plates
var GTplateIron = <gregtech:gt.metaitem.01:17032>;
var GTplateGold = <gregtech:gt.metaitem.01:17086>;
var GTplateLead = <gregtech:gt.metaitem.01:17089>;
var GTplateBronze = <gregtech:gt.metaitem.01:17300>;
var GTplateTin = <gregtech:gt.metaitem.01:17057>;
var GTplateCopper = <gregtech:gt.metaitem.01:17035>;
var GTplateLapis = <gregtech:gt.metaitem.01:17526>;
var GTplateObsidian = <gregtech:gt.metaitem.01:17804>;
var GTplateSilver = <gregtech:gt.metaitem.01:17054>;
var GTplateSteel = <gregtech:gt.metaitem.01:17305>;

#Utility Variables
var hammer = <ore:craftingToolHardHammer>;


#############################
#Quality of Life Improvments#
#############################

#Shapeless Plate Recipes
recipes.addShapeless(GTplateIron, [ingotIron, ingotIron, hammer]);
recipes.addShapeless(GTplateGold, [ingotGold, ingotGold, hammer]);
recipes.addShapeless(GTplateLead, [ingotLead, ingotLead, hammer]);
recipes.addShapeless(GTplateBronze, [ingotBronze, ingotBronze, hammer]);
recipes.addShapeless(GTplateTin, [ingotTin, ingotTin, hammer]);
recipes.addShapeless(GTplateCopper, [ingotCopper, ingotCopper, hammer]);
recipes.addShapeless(GTplateSteel, [ingotSteel, ingotSteel, hammer]);

#QoL Recipe Removal
recipes.removeShaped(<ore:plateIron>);
recipes.removeShaped(<ore:plateGold>);
recipes.removeShaped(<ore:plateLead>);
recipes.removeShaped(<ore:plateBronze>);
recipes.removeShaped(<ore:plateTin>);
recipes.removeShaped(<ore:plateCopper>);
recipes.removeShaped(<ore:plateSteel>);


#Need To Verify What it takes to craft these
#recipes.removeShaped(<ore:plateLapis>);
#recipes.removeShaped(<ore:plateObsidian>);

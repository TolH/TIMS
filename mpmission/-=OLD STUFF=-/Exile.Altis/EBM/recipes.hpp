/*Turn APEX Buildings on by removing the "//" at the beginning of the line.
But be careful! People who don't have the APEX DLC can not see the Buildings! They can walk through them!!!!*/

//#define USE_APEX_Buildings 1


#ifdef USE_APEX_Buildings

class BarrierbunkergreenBig: Exile_AbstractCraftingRecipe//V0.2.8
{
	name = "Barrierbunker Green Big APEX";
	pictureItem = "Land_HBarrier_01_big_tower_green_F_Kit";
	returnedItems[] = 
	{
		{1,"Land_HBarrier_01_big_tower_green_F_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{3, "Exile_Item_Sand"},
		{5, "Exile_Item_WoodPlank"},
		{2, "Exile_Item_Woodlog"}
	};
	tools[] =
	{
		"Exile_Item_Shovel",
		"Exile_Item_Pliers"
	};
	requiresConcreteMixer = 1;
	category = "Buildings";
};

class BagbunkergreenBig: Exile_AbstractCraftingRecipe//V0.2.8
{
	name = "Bagbunker Green Big APEX";
	pictureItem = "Land_Bagbunker_01_large_green_F_Kit";
	returnedItems[] = 
	{
		{1,"Land_Bagbunker_01_large_green_F_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{3, "Exile_Item_Sand"},
		{5, "Exile_Item_WoodPlank"},
		{2, "Exile_Item_Rope"}
	};
	tools[] =
	{
		"Exile_Item_Shovel",
		"Exile_Item_Pliers"
	};
	requiresConcreteMixer = 1;
	category = "Buildings";
};


class SandbagshortGreen: Exile_AbstractCraftingRecipe//V0.2.8
{
	name = "Sandbagshort Green APEX";
	pictureItem = "Land_Bagfence_01_short_green_F_Kit";
	returnedItems[] = 
	{
		{1,"Land_Bagfence_01_short_green_F_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{1, "Exile_Item_Sand"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "Walls";
};

class SandbaglongGreen: Exile_AbstractCraftingRecipe//V0.2.8
{
	name = "Sandbaglong Green APEX";
	pictureItem = "Land_Bagfence_01_long_green_F_Kit";
	returnedItems[] = 
	{
		{1,"Land_Bagfence_01_long_green_F_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{2, "Exile_Item_Sand"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "Walls";
};
/*
class Petroglyphwall02: Exile_AbstractCraftingRecipe//V0.2.8
{
	name = "Petroglyphwall02 APEX";
	pictureItem = "Land_PetroglyphWall_02_F_Kit";
	returnedItems[] = 
	{
		{1,"Land_PetroglyphWall_02_F_Kit"},
		{1,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 0;
	components[] = 
	{
		{2, "Exile_Item_Cement"},
		{2, "Exile_Item_Sand"},
		{1, "Exile_Item_WaterCanisterDirtyWater"},
		{1, "Exile_Item_FuelCanisterFull"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "Walls";
};

class Petroglyphwall01: Exile_AbstractCraftingRecipe//V0.2.8
{
	name = "Petroglyphwall01 APEX";
	pictureItem = "Land_PetroglyphWall_01_F_Kit";
	returnedItems[] = 
	{
		{1,"Land_PetroglyphWall_01_F_Kit"},
		{1,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 0;
	components[] = 
	{
		{2, "Exile_Item_Cement"},
		{2, "Exile_Item_Sand"},
		{1, "Exile_Item_WaterCanisterDirtyWater"},
		{1, "Exile_Item_FuelCanisterFull"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "Walls";
};
*/
class IRtent02: Exile_AbstractCraftingRecipe//V0.2.8
{
	name = "IR Tent 02 APEX";
	pictureItem = "Land_IRMaskingCover_02_F_Kit";
	returnedItems[] = 
	{
		{1,"Land_IRMaskingCover_02_F_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{3, "Exile_Item_JunkMetal"},
		{3, "Exile_Item_Rope"}
	};
	tools[] =
	{
		"Exile_Item_Pliers"
	};
	requiresConcreteMixer = 1;
	category = "Tents";
};

class IRtent01: Exile_AbstractCraftingRecipe//V0.2.8
{
	name = "IR Tent 01 APEX";
	pictureItem = "Land_IRMaskingCover_01_F_Kit";
	returnedItems[] = 
	{
		{1,"Land_IRMaskingCover_01_F_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{3, "Exile_Item_JunkMetal"},
		{3, "Exile_Item_Rope"}
	};
	tools[] =
	{
		"Exile_Item_Pliers"
	};
	requiresConcreteMixer = 1;
	category = "Tents";
};
/*
class Breakwater02: Exile_AbstractCraftingRecipe//V0.2.8
{
	name = "Breakwater02 APEX";
	pictureItem = "Land_Breakwater_02_F_Kit";
	returnedItems[] = 
	{
		{1,"Land_Breakwater_02_F_Kit"},
		{2,"Exile_Item_WaterCanisterEmpty"},
		{2,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 0;
	components[] = 
	{
		{3, "Exile_Item_Cement"},
		{3, "Exile_Item_Sand"},
		{2, "Exile_Item_WaterCanisterDirtyWater"},
		{2, "Exile_Item_FuelCanisterFull"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "Walls";
};

class Breakwater01: Exile_AbstractCraftingRecipe//V0.2.8
{
	name = "Breakwater01 APEX";
	pictureItem = "Land_Breakwater_01_F_Kit";
	returnedItems[] = 
	{
		{1,"Land_Breakwater_01_F_Kit"},
		{2,"Exile_Item_WaterCanisterEmpty"},
		{2,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 0;
	components[] = 
	{
		{3, "Exile_Item_Cement"},
		{3, "Exile_Item_Sand"},
		{2, "Exile_Item_WaterCanisterDirtyWater"},
		{2, "Exile_Item_FuelCanisterFull"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "Walls";
};

class BasaltwallGate: Exile_AbstractCraftingRecipe//V0.2.8
{
	name = "Basaltwall Gate APEX";
	pictureItem = "Land_BasaltWall_01_gate_F_Kit";
	returnedItems[] = 
	{
		{1,"Land_BasaltWall_01_gate_F_Kit"},
		{1,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 0;
	components[] = 
	{
		{2, "Exile_Item_Cement"},
		{2, "Exile_Item_Sand"},
		{1, "Exile_Item_WaterCanisterDirtyWater"},
		{1, "Exile_Item_FuelCanisterFull"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "Walls";
};

class Basaltwall8m: Exile_AbstractCraftingRecipe//V0.2.8
{
	name = "Basaltwall 8m APEX";
	pictureItem = "Land_BasaltWall_01_8m_F_Kit";
	returnedItems[] = 
	{
		{1,"Land_BasaltWall_01_8m_F_Kit"},
		{1,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 0;
	components[] = 
	{
		{2, "Exile_Item_Cement"},
		{2, "Exile_Item_Sand"},
		{1, "Exile_Item_WaterCanisterDirtyWater"},
		{1, "Exile_Item_FuelCanisterFull"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "Walls";
};

class Basaltwall4m: Exile_AbstractCraftingRecipe//V0.2.8
{
	name = "Basaltwall 4m APEX";
	pictureItem = "Land_BasaltWall_01_4m_F_Kit";
	returnedItems[] = 
	{
		{1,"Land_BasaltWall_01_4m_F_Kit"},
		{1,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 0;
	components[] = 
	{
		{2, "Exile_Item_Cement"},
		{2, "Exile_Item_Sand"},
		{1, "Exile_Item_WaterCanisterDirtyWater"},
		{1, "Exile_Item_FuelCanisterFull"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "Walls";
};
*/
class Airport01hangarAPEX: Exile_AbstractCraftingRecipe //V0.2.8
{
	name = "Airport Hangar APEX";
	pictureItem = "Land_Airport_01_hangar_F_Kit";
	returnedItems[] = 
	{
		{1,"Land_Airport_01_hangar_F_Kit"},
	};
	requiresFire = 1;
	components[] = 
	{
		{3, "Exile_Item_MetalBoard"},
		{2, "Exile_Item_MetalPole"},
		{4, "Exile_Item_MetalScrews"},
		{4, "Exile_Item_JunkMetal"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver",
		"Exile_Item_Grinder",
		"Exile_Item_Hammer"
	};
	category = "Buildings";
};
/*
class GarageShelterAPEX: Exile_AbstractCraftingRecipe //V0.2.7
{
	name = "Garage Shelter APEX";
	pictureItem = "Land_GarageShelter_01_F_Kit";
	returnedItems[] = 
	{
		{1,"Land_GarageShelter_01_F_Kit"},
	};
	requiresFire = 1;
	components[] = 
	{
		{10, "Exile_Item_WoodPlank"},
		{4, "Exile_Item_Woodlog"},
		{2, "Exile_Item_MetalScrews"},
		{2, "Exile_Item_JunkMetal"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver",
		"Exile_Item_Grinder",
		"Exile_Item_Hammer"
	};
	category = "Buildings";
};

class BigBunkerAPEX: Exile_AbstractCraftingRecipe
{
	name = "Big Bunker APEX";
	pictureItem = "Land_PillboxBunker_01_big_F_Kit";
	returnedItems[] = 
	{
		{1,"Land_PillboxBunker_01_big_F_Kit"},
		{2,"Exile_Item_WaterCanisterEmpty"},
		{2,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 0;
	components[] = 
	{
		{5, "Exile_Item_Cement"},
		{5, "Exile_Item_Sand"},
		{2, "Exile_Item_WaterCanisterDirtyWater"},
		{2, "Exile_Item_FuelCanisterFull"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "Buildings";
};
class BigBunkerRectangleAPEX: Exile_AbstractCraftingRecipe
{
	name = "Big Bunker Rectangle APEX";
	pictureItem = "Land_PillboxBunker_01_rectangle_F_Kit";
	returnedItems[] = 
	{
		{1,"Land_PillboxBunker_01_rectangle_F_Kit"},
		{2,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 0;
	components[] = 
	{
		{4, "Exile_Item_Cement"},
		{3, "Exile_Item_Sand"},
		{2, "Exile_Item_WaterCanisterDirtyWater"},
		{1, "Exile_Item_FuelCanisterFull"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "Buildings";
};
class BigBunkerHexAPEX: Exile_AbstractCraftingRecipe
{
	name = "Big Bunker Hexagonal APEX";
	pictureItem = "Land_PillboxBunker_01_hex_F_Kit";
	returnedItems[] = 
	{
		{1,"Land_PillboxBunker_01_hex_F_Kit"},
		{2,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 0;
	components[] = 
	{
		{4, "Exile_Item_Cement"},
		{3, "Exile_Item_Sand"},
		{2, "Exile_Item_WaterCanisterDirtyWater"},
		{1, "Exile_Item_FuelCanisterFull"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "Buildings";
};
class Bunkerwall3mAPEX: Exile_AbstractCraftingRecipe
{
	name = "Bunkerwall 3m APEX";
	pictureItem = "Land_PillboxWall_01_3m_F_Kit";
	returnedItems[] = 
	{
		{1,"Land_PillboxWall_01_3m_F_Kit"},
		{1,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 0;
	components[] = 
	{
		{1, "Exile_Item_Cement"},
		{1, "Exile_Item_Sand"},
		{1, "Exile_Item_WaterCanisterDirtyWater"},
		{1, "Exile_Item_FuelCanisterFull"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "Walls";
};
class Bunkerwall6mAPEX: Exile_AbstractCraftingRecipe
{
	name = "Bunkerwall 6m APEX";
	pictureItem = "Land_PillboxWall_01_6m_F_Kit";
	returnedItems[] = 
	{
		{1,"Land_PillboxWall_01_6m_F_Kit"},
		{1,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 0;
	components[] = 
	{
		{2, "Exile_Item_Cement"},
		{2, "Exile_Item_Sand"},
		{1, "Exile_Item_WaterCanisterDirtyWater"},
		{1, "Exile_Item_FuelCanisterFull"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "Walls";
};
class AirportControltowerAPEX: Exile_AbstractCraftingRecipe
{
	name = "Airport Controltower APEX";
	pictureItem = "Land_Airport_01_controlTower_F_Kit";
	returnedItems[] = 
	{
		{1,"Land_Airport_01_controlTower_F_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{2, "Exile_Item_MetalBoard"},
		{2, "Exile_Item_JunkMetal"},
		{2, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Shovel",
		"Exile_Item_Grinder",
		"Exile_Item_Screwdriver"
	};
	requiresConcreteMixer = 0;
	category = "Buildings";
};
*/
class Barrier3greenAPEX: Exile_AbstractCraftingRecipe
{
	name = "Barrier3 green APEX";
	pictureItem = "Land_HBarrier_01_line_3_green_F_Kit";
	returnedItems[] = 
	{
		{1,"Land_HBarrier_01_line_3_green_F_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{2, "Exile_Item_Sand"},
		{2, "Exile_Item_MetalWire"}
	};
	tools[] =
	{
		"Exile_Item_Pliers"
	};
	requiresConcreteMixer = 0;
	category = "Walls";
};
class Barrier5greenAPEX: Exile_AbstractCraftingRecipe
{
	name = "Barrier5 green APEX";
	pictureItem = "Land_HBarrier_01_line_5_green_F_Kit";
	returnedItems[] = 
	{
		{1,"Land_HBarrier_01_line_5_green_F_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{4, "Exile_Item_Sand"},
		{4, "Exile_Item_MetalWire"}
	};
	tools[] =
	{
		"Exile_Item_Pliers"
	};
	requiresConcreteMixer = 0;
	category = "Walls";
};
class SandbagtowerGreenAPEX: Exile_AbstractCraftingRecipe
{
	name = "Sandbagtower green APEX";
	pictureItem = "Land_HBarrier_01_big_tower_green_F_Kit";
	returnedItems[] = 
	{
		{1,"Land_HBarrier_01_big_tower_green_F_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{4, "Exile_Item_Sand"},
		{4, "Exile_Item_JunkMetal"}
	};
	tools[] =
	{
		"Exile_Item_Pliers",
		"Exile_Item_Grinder"
	};
	requiresConcreteMixer = 0;
	category = "Buildings";
};
/*
class TrenchForestAPEX: Exile_AbstractCraftingRecipe
{
	name = "Trench Forest APEX";
	pictureItem = "Land_trench_01_forest_F_Kit";
	returnedItems[] = 
	{
		{1,"Land_trench_01_forest_F_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{4, "Exile_Item_Sand"},
		{4, "Exile_Item_Woodlog"},
		{4, "Exile_Item_WoodPlank"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 0;
	category = "Buildings";
};
class TrenchGrassAPEX: Exile_AbstractCraftingRecipe
{
	name = "Trench Grass APEX";
	pictureItem = "Land_trench_01_grass_F_Kit";
	returnedItems[] = 
	{
		{1,"Land_trench_01_grass_F_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{4, "Exile_Item_Sand"},
		{4, "Exile_Item_Woodlog"},
		{4, "Exile_Item_WoodPlank"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 0;
	category = "Buildings";
};
*/
#endif
class EBM_door_frame: Exile_AbstractCraftingRecipe
{
	name = "Doorframe";
	pictureItem = "EBM_door_frame_Kit";
	returnedItems[] = 
	{
		{1,"EBM_door_frame_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{8, "Exile_Item_WoodPlank"},
		{1, "Exile_Item_MetalBoard"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver",
		"Exile_Item_Grinder"
	};
	category = "EBM Buildings";
};

class EBM_woodencrate: Exile_AbstractCraftingRecipe
{
	name = "Woodencrate";
	pictureItem = "EBM_woodencrate_Kit";
	returnedItems[] = 
	{
		{1,"EBM_woodencrate_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{8, "Exile_Item_WoodPlank"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver"
	};
	category = "EBM Buildings";
};

class EBM_oven: Exile_AbstractCraftingRecipe
{
	name = "Oven";
	pictureItem = "EBM_oven_Kit";
	returnedItems[] = 
	{
		{1,"EBM_oven_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{2, "Exile_Item_MetalBoard"},
		{2, "Exile_Item_MetalWire"},
		{2, "Exile_Item_MetalScrews"},
		{1, "Exile_Item_PortableGeneratorKit"},
		{2, "Exile_Item_DuctTape"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Pliers",
		"Exile_Item_Screwdriver"
	};
	category = "EBM Buildings";
};

class EBM_crowsfeet: Exile_AbstractCraftingRecipe
{
	name = "Crowsfeet";
	pictureItem = "EBM_crowsfeet_Kit";
	returnedItems[] = 
	{
		{1,"EBM_crowsfeet_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{2, "Exile_Item_MetalBoard"},
		{2, "Exile_Item_MetalPole"},
		{2, "Exile_Item_MetalScrews"},
		{2, "Exile_Item_DuctTape"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Pliers",
		"Exile_Item_Screwdriver"
	};
	category = "EBM Buildings";
};

class EBM_mechanical_cover_small: Exile_AbstractCraftingRecipe
{
	name = "Cover Small";
	pictureItem = "EBM_mechanical_cover_small_Kit";
	returnedItems[] = 
	{
		{1,"EBM_mechanical_cover_small_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{4, "Exile_Item_MetalBoard"},
		{2, "Exile_Item_MetalScrews"},
		{2, "Exile_Item_DuctTape"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Pliers",
		"Exile_Item_Screwdriver"
	};
	category = "EBM Buildings";
};

class EBM_ATM: Exile_AbstractCraftingRecipe
{
	name = "EBM ATM";
	pictureItem = "EBM_ATM_Kit";
	returnedItems[] = 
	{
		{1,"EBM_ATM_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{1, "Exile_Item_PortableGeneratorKit"},
		{3, "Exile_Item_MetalBoard"},
		{2, "Exile_Item_MetalScrews"},
		{4, "Exile_Item_MetalWire"},
		{4, "Exile_Item_Rope"},
		{2, "Exile_Item_DuctTape"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Pliers",
		"Exile_Item_Screwdriver"
	};
	category = "EBM Buildings";
};

class EBM_pollard: Exile_AbstractCraftingRecipe
{
	name = "Pollard";
	pictureItem = "EBM_pollard_Kit";
	returnedItems[] = 
	{
		{1,"EBM_pollard_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{2, "Exile_Item_MetalPole"},
		{4, "Exile_Item_MetalBoard"},
		{2, "Exile_Item_ExtensionCord"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Screwdriver",
		"Exile_Item_Hammer"
	};
	category = "EBM Buildings";
};


class EBM_Medikit: Exile_AbstractCraftingRecipe
{
	name = "Medikit";
	pictureItem = "EBM_Medikit_Kit";
	returnedItems[] = 
	{
		{1,"EBM_Medikit_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{10, "Exile_Item_PlasticBottleEmpty"},
		{4, "Exile_Item_MetalScrews"},
		{2, "Exile_Item_InstaDoc"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver",
		"Exile_Item_Hammer"
	};
	category = "EBM Buildings";
};

/*class EBM_Metalwall_window: Exile_AbstractCraftingRecipe
{
	name = "Metalwall Stairs";
	pictureItem = "EBM_Metalwall_window_Kit";
	returnedItems[] = 
	{
		{1,"EBM_Metalwall_window_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{3, "Exile_Item_MetalScrews"},
		{4, "Exile_Item_Metalpole"},
		{4, "Exile_Item_JunkMetal"},
		{4, "Exile_Item_MetalBoard"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Screwdriver",
		"Exile_Item_Hammer"
	};
	category = "EBM Buildings";
};

class EBM_Metalwall_stairs: Exile_AbstractCraftingRecipe
{
	name = "Metalwall Stairs";
	pictureItem = "EBM_Metalwall_stairs_Kit";
	returnedItems[] = 
	{
		{1,"EBM_Metalwall_stairs_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{2, "Exile_Item_MetalScrews"},
		{4, "Exile_Item_Metalpole"},
		{4, "Exile_Item_MetalBoard"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Screwdriver",
		"Exile_Item_Hammer"
	};
	category = "EBM Buildings";
};

class EBM_Metalwall_floorport_door: Exile_AbstractCraftingRecipe
{
	name = "Metalwall Floorport Door";
	pictureItem = "EBM_Metalwall_floorport_door_Kit";
	returnedItems[] = 
	{
		{1,"EBM_Metalwall_floorport_door_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{2, "Exile_Item_MetalScrews"},
		{4, "Exile_Item_JunkMetal"},
		{4, "Exile_Item_MetalBoard"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Screwdriver",
		"Exile_Item_Hammer"
	};
	category = "EBM Buildings";
};

class EBM_Metalwall_floorport: Exile_AbstractCraftingRecipe
{
	name = "Metalwall Floorport";
	pictureItem = "EBM_Metalwall_floorport_Kit";
	returnedItems[] = 
	{
		{1,"EBM_Metalwall_floorport_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{1, "Exile_Item_MetalScrews"},
		{2, "Exile_Item_JunkMetal"},
		{2, "Exile_Item_MetalBoard"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Screwdriver",
		"Exile_Item_Hammer"
	};
	category = "EBM Buildings";
};

class EBM_Metalwall_floor: Exile_AbstractCraftingRecipe
{
	name = "Metalwall Floor";
	pictureItem = "EBM_Metalwall_floor_Kit";
	returnedItems[] = 
	{
		{1,"EBM_Metalwall_floor_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{1, "Exile_Item_MetalScrews"},
		{2, "Exile_Item_JunkMetal"},
		{2, "Exile_Item_MetalBoard"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Screwdriver",
		"Exile_Item_Hammer"
	};
	category = "EBM Buildings";
};

class EBM_Metalwall_door: Exile_AbstractCraftingRecipe
{
	name = "Metalwall Door";
	pictureItem = "EBM_Metalwall_door_Kit";
	returnedItems[] = 
	{
		{1,"EBM_Metalwall_door_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{2, "Exile_Item_MetalScrews"},
		{2, "Exile_Item_JunkMetal"},
		{4, "Exile_Item_MetalBoard"},
		{1, "Exile_Item_MetalPole"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Screwdriver",
		"Exile_Item_Hammer"
	};
	category = "EBM Buildings";
};

class EBM_Metalwall_hole: Exile_AbstractCraftingRecipe
{
	name = "Metalwall hole";
	pictureItem = "EBM_Metalwall_hole_Kit";
	returnedItems[] = 
	{
		{1,"EBM_Metalwall_hole_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{1, "Exile_Item_MetalScrews"},
		{2, "Exile_Item_JunkMetal"},
		{2, "Exile_Item_MetalBoard"},
		{1, "Exile_Item_MetalPole"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Screwdriver",
		"Exile_Item_Hammer"
	};
	category = "EBM Buildings";
};

class EBM_Metalwall_half: Exile_AbstractCraftingRecipe
{
	name = "Metalwall half";
	pictureItem = "EBM_Metalwall_half_Kit";
	returnedItems[] = 
	{
		{1,"EBM_Metalwall_half_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{1, "Exile_Item_MetalScrews"},
		{1, "Exile_Item_JunkMetal"},
		{1, "Exile_Item_MetalBoard"},
		{1, "Exile_Item_MetalPole"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Screwdriver",
		"Exile_Item_Hammer"
	};
	category = "EBM Buildings";
};

class EBM_Metalwall: Exile_AbstractCraftingRecipe
{
	name = "Metalwall";
	pictureItem = "EBM_Metalwall_Kit";
	returnedItems[] = 
	{
		{1,"EBM_Metalwall_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{1, "Exile_Item_MetalScrews"},
		{2, "Exile_Item_JunkMetal"},
		{2, "Exile_Item_MetalBoard"},
		{1, "Exile_Item_MetalPole"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Screwdriver",
		"Exile_Item_Hammer"
	};
	category = "EBM Buildings";
};*/

class EBM_Brickwall_window: Exile_AbstractCraftingRecipe
{
	name = "Brickwall Window";
	pictureItem = "EBM_Brickwall_window_Kit";
	returnedItems[] = 
	{
		{1,"EBM_Brickwall_window_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{2, "EBM_Item_Bucket_Of_Mortar"},
		{2, "EBM_Item_Bricks"},
		{5, "Exile_Item_WoodPlank"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 0;
	category = "EBM Buildings";
};

class EBM_Brickwall_stairs: Exile_AbstractCraftingRecipe
{
	name = "Brickwall CnC Stairs";
	pictureItem = "EBM_Brickwall_stairs_Kit";
	returnedItems[] = 
	{
		{2,"Exile_Item_WaterCanisterEmpty"},
		{2,"Exile_Item_FuelCanisterEmpty"},
		{1,"EBM_Brickwall_stairs_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{2, "Exile_Item_Cement"},
		{2, "Exile_Item_Sand"},
		{2, "Exile_Item_WaterCanisterDirtyWater"},
		{2, "Exile_Item_FuelCanisterFull"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "EBM Buildings";
};

class EBM_Brickwall_floorport_door: Exile_AbstractCraftingRecipe
{
	name = "Brickwall CnC Floor Door";
	pictureItem = "EBM_Brickwall_floorport_door_Kit";
	returnedItems[] = 
	{
		{1,"EBM_Brickwall_floorport_door_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{2, "EBM_Item_Bucket_Of_Mortar"},
		{2, "EBM_Item_Bricks"},
		{5, "Exile_Item_WoodPlank"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 0;
	category = "EBM Buildings";
};


class EBM_Brickwall_floorport: Exile_AbstractCraftingRecipe
{
	name = "Brickwall CnC Floorport";
	pictureItem = "EBM_Brickwall_floorport_Kit";
	returnedItems[] = 
	{
		{1,"EBM_Brickwall_floorport_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{2, "EBM_Item_Bucket_Of_Mortar"},
		{2, "EBM_Item_Bricks"},
		{5, "Exile_Item_WoodPlank"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 0;
	category = "EBM Buildings";
};

class EBM_Brickwall_floor: Exile_AbstractCraftingRecipe
{
	name = "Brickwall CnC Floor";
	pictureItem = "EBM_Brickwall_floor_Kit";
	returnedItems[] = 
	{
		{1,"EBM_Brickwall_floor_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{2, "EBM_Item_Bucket_Of_Mortar"},
		{2, "EBM_Item_Bricks"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 0;
	category = "EBM Buildings";
};

class EBM_Brickwall_door: Exile_AbstractCraftingRecipe
{
	name = "Brickwall Door";
	pictureItem = "EBM_Brickwall_door_Kit";
	returnedItems[] = 
	{
		{1,"EBM_Brickwall_door_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{2, "EBM_Item_Bucket_Of_Mortar"},
		{2, "EBM_Item_Bricks"},
		{5, "Exile_Item_WoodPlank"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 0;
	category = "EBM Buildings";
};

class EBM_Brickwall_hole: Exile_AbstractCraftingRecipe
{
	name = "Brickwall Hole";
	pictureItem = "EBM_Brickwall_hole_Kit";
	returnedItems[] = 
	{
		{1,"EBM_Brickwall_hole_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{2, "EBM_Item_Bucket_Of_Mortar"},
		{2, "EBM_Item_Bricks"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 0;
	category = "EBM Buildings";
};

class EBM_Helipad: Exile_AbstractCraftingRecipe
{
	name = "Helipad";
	pictureItem = "EBM_Helipad_Kit";
	returnedItems[] = 
	{
		{3,"Exile_Item_WaterCanisterEmpty"},
		{3,"Exile_Item_FuelCanisterEmpty"},
		{1,"EBM_Helipad_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{3, "Exile_Item_Cement"},
		{3, "Exile_Item_Sand"},
		{3, "Exile_Item_WaterCanisterDirtyWater"},
		{3, "Exile_Item_FuelCanisterFull"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "EBM Buildings";
};


class EBM_Airhook: Exile_AbstractCraftingRecipe
{
	name = "Airhook";
	pictureItem = "EBM_Airhook_Kit";
	returnedItems[] = 
	{
		{1, "EBM_Airhook_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{1, "Exile_Item_MetalPole"},
		{1, "Exile_Item_MetalBoard"},
		{2, "Exile_Item_MetalScrews"},
		{10, "Exile_Item_WoodPlank"}
		
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Screwdriver"
	};
	category = "EBM Buildings";
};


class EBM_Parksign: Exile_AbstractCraftingRecipe
{
	name = "Parksign";
	pictureItem = "EBM_Parksign_Kit";
	returnedItems[] = 
	{
		{1, "EBM_Parksign_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{1, "Exile_Item_MetalPole"},
		{1, "Exile_Item_MetalBoard"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Screwdriver"
	};
	category = "EBM Buildings";
};


class EBM_Brickwall: Exile_AbstractCraftingRecipe
{
	name = "Brickwall";
	pictureItem = "EBM_Brickwall_Kit";
	returnedItems[] = 
	{
		{1,"EBM_Brickwall_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{2, "EBM_Item_Bucket_Of_Mortar"},
		{2, "EBM_Item_Bricks"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 0;
	category = "EBM Buildings";
};

class BurningBarrel: Exile_AbstractCraftingRecipe
{
	name = "Burning Barrel";
	pictureItem = "MetalBarrel_burning_F_Kit";
	returnedItems[] = 
	{
		{1, "MetalBarrel_burning_F_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{2, "Exile_Item_MetalBoard"}
	};
	tools[] =
	{
		"Exile_Item_Grinder"
	};
	category = "Misc";
};

class ObstacleRamp: Exile_AbstractCraftingRecipe
{
	name = "Obstacle Ramp";
	pictureItem = "Land_Obstacle_Ramp_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Obstacle_Ramp_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{4, "Exile_Item_WoodPlank"},
		{1, "Exile_Item_MetalScrews"},
		{1, "Exile_Item_JunkMetal"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver"
	};
	category = "Buildings";
};


class Generator: Exile_AbstractCraftingRecipe
{
	name = "Generator";
	pictureItem = "Land_PortableGenerator_01_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_PortableGenerator_01_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{1, "Exile_Item_MetalScrews"},
		{3, "Exile_Item_MetalBoard"},
		{5, "Exile_Item_MetalWire"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver",
		"Exile_Item_Grinder",
		"Exile_Item_Pliers"
	};
	category = "Electronics";
};

class Projector: Exile_AbstractCraftingRecipe
{
	name = "Projector";
	pictureItem = "Land_Projector_01_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Projector_01_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{1, "Exile_Item_WaterCanisterEmpty"},
		{1, "Exile_Item_MetalScrews"},
		{1, "Exile_Item_LightBulb"},
		{1, "Exile_Item_MetalWire"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver",
		"Exile_Item_Pliers"
	};
	category = "Electronics";
};

class SatelliteAntenna: Exile_AbstractCraftingRecipe
{
	name = "Satellite Antenna";
	pictureItem = "Land_SatelliteAntenna_01_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_SatelliteAntenna_01_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{1, "Exile_Item_MetalScrews"},
		{3, "Exile_Item_MetalPole"},
		{2, "Exile_Item_MetalWire"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver",
		"Exile_Item_Grinder",
		"Exile_Item_Pliers"
	};
	category = "Electronics";
};

class SimpleTarget: Exile_AbstractCraftingRecipe
{
	name = "Simple Target";
	pictureItem = "Target_F_Kit";
	returnedItems[] = 
	{
		{1, "Target_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{2, "Exile_Item_MetalBoard"},
		{2, "Exile_Item_JunkMetal"},
		{2, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Screwdriver"
	};
	category = "Targets";
};

class HumanTarget: Exile_AbstractCraftingRecipe
{
	name = "Human Target";
	pictureItem = "TargetBootcampHuman_F_Kit";
	returnedItems[] = 
	{
		{1, "TargetBootcampHuman_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{2, "Exile_Item_MetalBoard"},
		{2, "Exile_Item_JunkMetal"},
		{2, "Exile_Item_MetalScrews"},
		{2, "Exile_Item_MetalWire"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Screwdriver",
		"Exile_Item_Pliers"
	};
	category = "Targets";
};

class InfAccTarget: Exile_AbstractCraftingRecipe
{
	name = "Infantry Accuracy Target";
	pictureItem = "TargetP_Inf_Acc2_F_Kit";
	returnedItems[] = 
	{
		{1, "TargetP_Inf_Acc2_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{2, "Exile_Item_MetalBoard"},
		{2, "Exile_Item_JunkMetal"},
		{2, "Exile_Item_MetalScrews"},
		{2, "Exile_Item_MetalWire"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Screwdriver",
		"Exile_Item_Pliers"
	};
	category = "Targets";
};

class Tripodscreen_v1: Exile_AbstractCraftingRecipe
{
	name = "Tripodscreen Vertical 1";
	pictureItem = "Land_TripodScreen_01_dual_v1_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_TripodScreen_01_dual_v1_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{2, "Exile_Item_MetalBoard"},
		{1, "Exile_Item_MetalScrews"},
		{2, "Exile_Item_LightBulb"},
		{3, "Exile_Item_MetalPole"},
		{2, "Exile_Item_MetalWire"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver",
		"Exile_Item_Grinder",
		"Exile_Item_Pliers"
	};
	category = "Electronics";
};

class Tripodscreen_v2: Exile_AbstractCraftingRecipe
{
	name = "Tripodscreen Vertical 2";
	pictureItem = "Land_TripodScreen_01_dual_v2_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_TripodScreen_01_dual_v2_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{2, "Exile_Item_MetalBoard"},
		{1, "Exile_Item_MetalScrews"},
		{4, "Exile_Item_LightBulb"},
		{3, "Exile_Item_MetalPole"},
		{2, "Exile_Item_MetalWire"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver",
		"Exile_Item_Grinder",
		"Exile_Item_Pliers"
	};
	category = "Electronics";
};

class Tripodscreen_large: Exile_AbstractCraftingRecipe
{
	name = "Tripodscreen Large";
	pictureItem = "Land_TripodScreen_01_large_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_TripodScreen_01_large_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{2, "Exile_Item_MetalBoard"},
		{1, "Exile_Item_MetalScrews"},
		{3, "Exile_Item_MetalPole"},
		{2, "Exile_Item_MetalWire"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver",
		"Exile_Item_Grinder",
		"Exile_Item_Pliers"
	};
	category = "Electronics";
};

class WaterpumpDesert: Exile_AbstractCraftingRecipe
{
	name = "Waterpump Desert";
	pictureItem = "WaterPump_01_sand_F_Kit";
	returnedItems[] = 
	{
		{1, "WaterPump_01_sand_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{4, "Exile_Item_MetalBoard"},
		{2, "Exile_Item_MetalScrews"},
		{2, "Exile_Item_MetalPole"},
		{4, "Exile_Item_MetalWire"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver",
		"Exile_Item_Grinder",
		"Exile_Item_Pliers"
	};
	category = "Supply";
};

class WaterpumpForest: Exile_AbstractCraftingRecipe
{
	name = "Waterpump Forest";
	pictureItem = "WaterPump_01_forest_F_Kit";
	returnedItems[] = 
	{
		{1, "WaterPump_01_forest_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{4, "Exile_Item_MetalBoard"},
		{2, "Exile_Item_MetalScrews"},
		{2, "Exile_Item_MetalPole"},
		{4, "Exile_Item_MetalWire"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver",
		"Exile_Item_Grinder",
		"Exile_Item_Pliers"
	};
	category = "Supply";
};

class ZboxCamera: Exile_AbstractCraftingRecipe
{
	name = "Zbox Camera";
	pictureItem = "Land_GamingSet_01_camera_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_GamingSet_01_camera_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{1, "Exile_Item_WaterCanisterEmpty"},
		{1, "Exile_Item_MetalScrews"},
		{1, "Exile_Item_MetalWire"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver",
		"Exile_Item_Pliers"
	};
	category = "Electronics";
};

class ZboxPSU: Exile_AbstractCraftingRecipe
{
	name = "Zbox Powersupply";
	pictureItem = "Land_GamingSet_01_powerSupply_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_GamingSet_01_powerSupply_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{1, "Exile_Item_WaterCanisterEmpty"},
		{1, "Exile_Item_MetalScrews"},
		{1, "Exile_Item_MetalWire"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver",
		"Exile_Item_Pliers"
	};
	category = "Electronics";
};

class PortableHeliLight_Yellow: Exile_AbstractCraftingRecipe
{
	name = "Portable Heli Light Yellow";
	pictureItem = "PortableHelipadLight_01_yellow_F_Kit";
	returnedItems[] = 
	{
		{1, "PortableHelipadLight_01_yellow_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{1, "Exile_Item_WaterCanisterEmpty"},
		{1, "Exile_Item_LightBulb"},
		{1, "Exile_Item_MetalScrews"},
		{1, "Exile_Item_MetalWire"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver",
		"Exile_Item_Pliers"
	};
	category = "Lights";
};

class PortableHeliLight_white: Exile_AbstractCraftingRecipe
{
	name = "Portable Heli Light White";
	pictureItem = "PortableHelipadLight_01_white_F_Kit";
	returnedItems[] = 
	{
		{1, "PortableHelipadLight_01_white_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{1, "Exile_Item_WaterCanisterEmpty"},
		{1, "Exile_Item_LightBulb"},
		{1, "Exile_Item_MetalScrews"},
		{1, "Exile_Item_MetalWire"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver",
		"Exile_Item_Pliers"
	};
	category = "Lights";
};

class PortableHeliLight_red: Exile_AbstractCraftingRecipe
{
	name = "Portable Heli Light Red";
	pictureItem = "PortableHelipadLight_01_red_F_Kit";
	returnedItems[] = 
	{
		{1, "PortableHelipadLight_01_red_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{1, "Exile_Item_WaterCanisterEmpty"},
		{1, "Exile_Item_LightBulb"},
		{1, "Exile_Item_MetalScrews"},
		{1, "Exile_Item_MetalWire"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver",
		"Exile_Item_Pliers"
	};
	category = "Lights";
};

class PortableHeliLight_green: Exile_AbstractCraftingRecipe
{
	name = "Portable Heli Light Green";
	pictureItem = "PortableHelipadLight_01_green_F_Kit";
	returnedItems[] = 
	{
		{1, "PortableHelipadLight_01_green_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{1, "Exile_Item_WaterCanisterEmpty"},
		{1, "Exile_Item_LightBulb"},
		{1, "Exile_Item_MetalScrews"},
		{1, "Exile_Item_MetalWire"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver",
		"Exile_Item_Pliers"
	};
	category = "Lights";
};

class PortableHeliLight_blue: Exile_AbstractCraftingRecipe
{
	name = "Portable Heli Light Blue";
	pictureItem = "PortableHelipadLight_01_blue_F_Kit";
	returnedItems[] = 
	{
		{1, "PortableHelipadLight_01_blue_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{1, "Exile_Item_WaterCanisterEmpty"},
		{1, "Exile_Item_LightBulb"},
		{1, "Exile_Item_MetalScrews"},
		{1, "Exile_Item_MetalWire"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver",
		"Exile_Item_Pliers"
	};
	category = "Lights";
};

class PortableHeliLight: Exile_AbstractCraftingRecipe
{
	name = "Portable Heli Light";
	pictureItem = "Land_PortableHelipadLight_01_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_PortableHelipadLight_01_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{1, "Exile_Item_WaterCanisterEmpty"},
		{1, "Exile_Item_LightBulb"},
		{1, "Exile_Item_MetalScrews"},
		{1, "Exile_Item_MetalWire"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver",
		"Exile_Item_Pliers"
	};
	category = "Lights";
};

class MineSign: Exile_AbstractCraftingRecipe
{
	name = "Mine Sign";
	pictureItem = "Land_Sign_Mines_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Sign_Mines_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{1, "Exile_Item_MetalPole"}
	};
	tools[] =
	{
		"Exile_Item_Grinder"
	};
	category = "Signs";
};

class ToolTrolley2: Exile_AbstractCraftingRecipe
{
	name = "Tool Trolley 2";
	pictureItem = "Land_ToolTrolley_02_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_ToolTrolley_02_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{4, "Exile_Item_MetalBoard"},
		{2, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Screwdriver"
	};
	category = "Storages";
};

class ToolTrolley1: Exile_AbstractCraftingRecipe
{
	name = "Tool Trolley 1";
	pictureItem = "Land_ToolTrolley_01_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_ToolTrolley_01_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{4, "Exile_Item_MetalBoard"},
		{2, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Screwdriver"
	};
	category = "Storages";
};

class WoodenShelves_Khaki: Exile_AbstractCraftingRecipe
{
	name = "Wooden Shelves Khaki";
	pictureItem = "Land_ShelvesWooden_khaki_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_ShelvesWooden_khaki_F_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{2, "Exile_Item_WoodLog"},
		{2, "Exile_Item_WoodPlank"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Hammer",
		"Exile_Item_Screwdriver"
	};
	category = "Storages";
};

class WoodenShelves_blue: Exile_AbstractCraftingRecipe
{
	name = "Wooden Shelves Blue";
	pictureItem = "Land_ShelvesWooden_blue_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_ShelvesWooden_blue_F_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{2, "Exile_Item_WoodLog"},
		{2, "Exile_Item_WoodPlank"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Hammer",
		"Exile_Item_Screwdriver"
	};
	category = "Storages";
};

class WoodenShelves: Exile_AbstractCraftingRecipe
{
	name = "Wooden Shelves";
	pictureItem = "Land_ShelvesWooden_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_ShelvesWooden_F_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{2, "Exile_Item_WoodLog"},
		{2, "Exile_Item_WoodPlank"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Hammer",
		"Exile_Item_Screwdriver"
	};
	category = "Storages";
};

class Microwave: Exile_AbstractCraftingRecipe
{
	name = "Microwave";
	pictureItem = "Land_Microwave_01_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Microwave_01_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{2, "Exile_Item_MetalBoard"},
		{2, "Exile_Item_MetalScrews"},
		{1, "Exile_Item_MetalWire"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Screwdriver",
		"Exile_Item_Pliers"
	};
	category = "Electronics";
};

class MetalCase: Exile_AbstractCraftingRecipe
{
	name = "Metal Case";
	pictureItem = "Land_MetalCase_01_large_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_MetalCase_01_large_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{2, "Exile_Item_MetalBoard"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Screwdriver"
	};
	category = "Storages";
};

class Fridge: Exile_AbstractCraftingRecipe
{
	name = "Fridge";
	pictureItem = "Fridge_01_closed_F_Kit";
	returnedItems[] = 
	{
		{1, "Fridge_01_closed_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{2, "Exile_Item_MetalBoard"},
		{2, "Exile_Item_MetalScrews"},
		{1, "Exile_Item_MetalWire"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Screwdriver",
		"Exile_Item_Pliers"
	};
	category = "Storages";
};

class InfTarget: Exile_AbstractCraftingRecipe
{
	name = "Infantry Target";
	pictureItem = "TargetP_Inf_F_Kit";
	returnedItems[] = 
	{
		{1, "TargetP_Inf_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{2, "Exile_Item_MetalBoard"},
		{2, "Exile_Item_JunkMetal"},
		{2, "Exile_Item_MetalScrews"},
		{2, "Exile_Item_MetalWire"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Screwdriver",
		"Exile_Item_Pliers"
	};
	category = "Targets";
};


class DuelingTarget: Exile_AbstractCraftingRecipe
{
	name = "Dueling Target";
	pictureItem = "Land_Target_Dueling_01_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Target_Dueling_01_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{2, "Exile_Item_MetalBoard"},
		{2, "Exile_Item_JunkMetal"},
		{2, "Exile_Item_MetalScrews"},
		{2, "Exile_Item_MetalWire"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Screwdriver",
		"Exile_Item_Pliers"
	};
	category = "Targets";
};

class TapeSign: Exile_AbstractCraftingRecipe
{
	name = "Tape Sign";
	pictureItem = "TapeSign_F_Kit";
	returnedItems[] = 
	{
		{1, "TapeSign_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{2, "Exile_Item_MetalPole"}
	};
	tools[] =
	{
		"Exile_Item_Grinder"
	};
	category = "Signs";
};

class RoadCone2: Exile_AbstractCraftingRecipe
{
	name = "Road Cone 2";
	pictureItem = "RoadCone_L_F_Kit";
	returnedItems[] = 
	{
		{1, "RoadCone_L_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{2, "Exile_Item_WaterCanisterEmpty"}
	};
	tools[] =
	{
		"Exile_Item_Hammer"
	};
	category = "Street Stuff";
};

class RoadCone1: Exile_AbstractCraftingRecipe
{
	name = "Road Cone 1";
	pictureItem = "RoadCone_F_Kit";
	returnedItems[] = 
	{
		{1, "RoadCone_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{2, "Exile_Item_WaterCanisterEmpty"}
	};
	tools[] =
	{
		"Exile_Item_Hammer"
	};
	category = "Street Stuff";
};

class RoadBarrier2: Exile_AbstractCraftingRecipe
{
	name = "Road Barrier 2";
	pictureItem = "RoadBarrier_small_F_Kit";
	returnedItems[] = 
	{
		{1, "RoadBarrier_small_F_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{2, "Exile_Item_WoodLog"},
		{1, "Exile_Item_WoodPlank"},
		{1, "Exile_Item_LightBulb"}
	};
	tools[] =
	{
		"Exile_Item_Hammer"
	};
	category = "Street Stuff";
};

class RoadBarrier1: Exile_AbstractCraftingRecipe
{
	name = "Road Barrier 1";
	pictureItem = "RoadBarrier_F_Kit";
	returnedItems[] = 
	{
		{1, "RoadBarrier_F_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{2, "Exile_Item_WoodLog"},
		{1, "Exile_Item_WoodPlank"}
	};
	tools[] =
	{
		"Exile_Item_Hammer"
	};
	category = "Street Stuff";
};

class PlasticBarrierOrange: Exile_AbstractCraftingRecipe
{
	name = "Plastic Barrier Orange";
	pictureItem = "PlasticBarrier_03_orange_F_Kit";
	returnedItems[] = 
	{
		{1, "PlasticBarrier_03_orange_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{2, "Exile_Item_JunkMetal"},
		{5, "Exile_Item_WaterCanisterEmpty"}
	};
	tools[] =
	{
		"Exile_Item_Pliers"
	};
	category = "Street Stuff";
};

class PlasticBarrierBlue: Exile_AbstractCraftingRecipe
{
	name = "Plastic Barrier Blue";
	pictureItem = "PlasticBarrier_03_blue_F_Kit";
	returnedItems[] = 
	{
		{1, "PlasticBarrier_03_blue_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{2, "Exile_Item_JunkMetal"},
		{5, "Exile_Item_WaterCanisterEmpty"}
	};
	tools[] =
	{
		"Exile_Item_Pliers"
	};
	category = "Street Stuff";
};

class PlasticBarrierYellow: Exile_AbstractCraftingRecipe
{
	name = "Plastic Barrier Yellow";
	pictureItem = "PlasticBarrier_02_yellow_F_Kit";
	returnedItems[] = 
	{
		{1, "PlasticBarrier_02_yellow_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{2, "Exile_Item_JunkMetal"},
		{5, "Exile_Item_WaterCanisterEmpty"}
	};
	tools[] =
	{
		"Exile_Item_Pliers"
	};
	category = "Street Stuff";
};

class PlasticBarrierGrey: Exile_AbstractCraftingRecipe
{
	name = "Plastic Barrier Grey";
	pictureItem = "PlasticBarrier_02_grey_F_Kit";
	returnedItems[] = 
	{
		{1, "PlasticBarrier_02_grey_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{2, "Exile_Item_JunkMetal"},
		{5, "Exile_Item_WaterCanisterEmpty"}
	};
	tools[] =
	{
		"Exile_Item_Pliers"
	};
	category = "Street Stuff";
};

class ArrowDeskL: Exile_AbstractCraftingRecipe
{
	name = "Arrows Left";
	pictureItem = "ArrowDesk_L_F_Kit";
	returnedItems[] = 
	{
		{1, "ArrowDesk_L_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{2, "Exile_Item_MetalBoard"},
		{2, "Exile_Item_MetalPole"}
	};
	tools[] =
	{
		"Exile_Item_Grinder"
	};
	category = "Street Stuff";
};

class ArrowDeskR: Exile_AbstractCraftingRecipe
{
	name = "Arrows Right";
	pictureItem = "ArrowDesk_R_F_Kit";
	returnedItems[] = 
	{
		{1, "ArrowDesk_R_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{2, "Exile_Item_MetalBoard"},
		{2, "Exile_Item_MetalPole"}
	};
	tools[] =
	{
		"Exile_Item_Grinder"
	};
	category = "Street Stuff";
};

class Workbench_2_0: Exile_AbstractCraftingRecipe
{
	name = "Workbench 2.0";
	pictureItem = "Land_Workbench_01_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Workbench_01_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{2, "Exile_Item_JunkMetal"},
		{4, "Exile_Item_WoodPlank"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Screwdriver"
	};
	category = "Furniture";
};

class WeldingTrolley: Exile_AbstractCraftingRecipe
{
	name = "Welding Trolley";
	pictureItem = "Land_WeldingTrolley_01_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_WeldingTrolley_01_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{4, "Exile_Item_JunkMetal"},
		{3, "Exile_Item_MetalWire"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Pliers",
		"Exile_Item_Screwdriver"
	};
	category = "Supply";
};

class Pressurewasher: Exile_AbstractCraftingRecipe
{
	name = "Pressure Washer";
	pictureItem = "Land_PressureWasher_01_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_PressureWasher_01_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{3, "Exile_Item_JunkMetal"},
		{3, "Exile_Item_MetalWire"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Pliers",
		"Exile_Item_Screwdriver"
	};
	category = "Supply";
};

class Pallettrolley: Exile_AbstractCraftingRecipe
{
	name = "Pallet Trolley";
	pictureItem = "Land_PalletTrolley_01_yellow_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_PalletTrolley_01_yellow_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{3, "Exile_Item_JunkMetal"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Screwdriver"
	};
	category = "Storages";
};

class EngineCrane: Exile_AbstractCraftingRecipe
{
	name = "Engine Crane";
	pictureItem = "Land_EngineCrane_01_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_EngineCrane_01_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{3, "Exile_Item_MetalPole"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Screwdriver"
	};
	category = "Supply";
};

class DieselGroundpowerUnit: Exile_AbstractCraftingRecipe
{
	name = "Diesel Groundpower Unit";
	pictureItem = "Land_DieselGroundPowerUnit_01_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_DieselGroundPowerUnit_01_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{4, "Exile_Item_MetalBoard"},
		{4, "Exile_Item_MetalWire"},
		{2, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Pliers",
		"Exile_Item_Screwdriver"
	};
	category = "Supply";
};

class OfficeTable: Exile_AbstractCraftingRecipe
{
	name = "Office Table";
	pictureItem = "OfficeTable_01_new_F_Kit";
	returnedItems[] = 
	{
		{1, "OfficeTable_01_new_F_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{4, "Exile_Item_JunkMetal"},
		{4, "Exile_Item_WoodPlank"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Hammer",
		"Exile_Item_Screwdriver"
	};
	category = "Furniture";
};

class WoodenTableLarge: Exile_AbstractCraftingRecipe
{
	name = "Wooden Table Large";
	pictureItem = "Land_WoodenTable_large_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_WoodenTable_large_F_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{4, "Exile_Item_WoodLog"},
		{4, "Exile_Item_WoodPlank"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Hammer",
		"Exile_Item_Screwdriver"
	};
	category = "Furniture";
};

class WoodenTableSmall: Exile_AbstractCraftingRecipe
{
	name = "Wooden Table Small";
	pictureItem = "Land_WoodenTable_small_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_WoodenTable_small_F_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{2, "Exile_Item_WoodLog"},
		{2, "Exile_Item_WoodPlank"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Hammer",
		"Exile_Item_Screwdriver"
	};
	category = "Furniture";
};

class TablePlastic: Exile_AbstractCraftingRecipe
{
	name = "Plastic Table";
	pictureItem = "Land_TablePlastic_01_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_TablePlastic_01_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{4, "Exile_Item_JunkMetal"},
		{1, "Exile_Item_Rope"}
	};
	tools[] =
	{
		"Exile_Item_Grinder"
	};
	category = "Furniture";
};

class Sunshades: Exile_AbstractCraftingRecipe
{
	name = "Sunshades";
	pictureItem = "Land_Sunshade_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Sunshade_F_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{2, "Exile_Item_WoodLog"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Hammer",
		"Exile_Item_Screwdriver"
	};
	category = "Furniture";
};

class Sunshade_03: Exile_AbstractCraftingRecipe
{
	name = "Sunshade 03";
	pictureItem = "Land_Sunshade_03_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Sunshade_03_F_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{2, "Exile_Item_WoodLog"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Hammer",
		"Exile_Item_Screwdriver"
	};
	category = "Furniture";
};

class Sunshade_02: Exile_AbstractCraftingRecipe
{
	name = "Sunshade 02";
	pictureItem = "Land_Sunshade_02_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Sunshade_02_F_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{2, "Exile_Item_WoodLog"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Hammer",
		"Exile_Item_Screwdriver"
	};
	category = "Furniture";
};

class Sunshade_01: Exile_AbstractCraftingRecipe
{
	name = "Sunshade 01";
	pictureItem = "Land_Sunshade_01_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Sunshade_01_F_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{2, "Exile_Item_WoodLog"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Hammer",
		"Exile_Item_Screwdriver"
	};
	category = "Furniture";
};

class Sunchairgreen: Exile_AbstractCraftingRecipe
{
	name = "Sunchair green";
	pictureItem = "Land_Sun_chair_green_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Sun_chair_green_F_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{5, "Exile_Item_WoodPlank"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Hammer",
		"Exile_Item_Screwdriver"
	};
	category = "Furniture";
};

/*
class trophy_gold: Exile_AbstractCraftingRecipe
{
	name = "Trophy Gold";
	pictureItem = "Land_Trophy_01_gold_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Trophy_01_gold_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{1, "Exile_Item_Metalboard"},
		{4, "Exile_Item_Metalpole"}
	};
	tools[] =
	{
		"Exile_Item_Grinder"
	};	
	category = "Trophy";
};

class trophy_silver: Exile_AbstractCraftingRecipe
{
	name = "Trophy Silver";
	pictureItem = "Land_Trophy_01_silver_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Trophy_01_silver_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{4, "Exile_Item_JunkMetal"},
		{1, "Exile_Item_Metalpole"}
	};
	tools[] =
	{
		"Exile_Item_Grinder"
	};	
	category = "Trophy";
};

class trophy_bronze: Exile_AbstractCraftingRecipe
{
	name = "Trophy Bronze";
	pictureItem = "Land_Trophy_01_bronze_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Trophy_01_bronze_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{2, "Exile_Item_Metalpole"}
	};
	tools[] =
	{
		"Exile_Item_Grinder"
	};	
	category = "Trophy";
};
*/
class SleepingBag_brown: Exile_AbstractCraftingRecipe
{
	name = "Sleeping Bag Brown";
	pictureItem = "Land_Sleeping_bag_brown_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Sleeping_bag_brown_F_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{2, "Exile_Item_Rope"}
	};
	tools[] =
	{
		"Exile_Item_Pliers"
	};	
	category = "Tents";
};

class SleepingBag_blue: Exile_AbstractCraftingRecipe
{
	name = "Sleeping Bag Blue";
	pictureItem = "Land_Sleeping_bag_blue_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Sleeping_bag_blue_F_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{2, "Exile_Item_Rope"}
	};
	tools[] =
	{
		"Exile_Item_Pliers"
	};	
	category = "Tents";
};

class RattanTable: Exile_AbstractCraftingRecipe
{
	name = "RattanTable";
	pictureItem = "Land_RattanTable_01_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_RattanTable_01_F_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{8, "Exile_Item_WoodPlank"},
		{2, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver"
	};
	category = "Furniture";
};

class RattanChair: Exile_AbstractCraftingRecipe
{
	name = "RattanChair";
	pictureItem = "Land_RattanChair_01_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_RattanChair_01_F_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{4, "Exile_Item_WoodPlank"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver"
	};
	category = "Furniture";
};

class Printer: Exile_AbstractCraftingRecipe
{
	name = "Printer";
	pictureItem = "Land_Printer_01_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Printer_01_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{1, "Exile_Item_MetalBoard"},
		{2, "Exile_Item_MetalWire"},
		{2, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver",
		"Exile_Item_Pliers"
	};
	category = "Electronics";
};

class PCScreen: Exile_AbstractCraftingRecipe
{
	name = "PC Screen";
	pictureItem = "Land_PCSet_01_screen_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_PCSet_01_screen_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{1, "Exile_Item_MetalBoard"},
		{2, "Exile_Item_MetalWire"},
		{2, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver",
		"Exile_Item_Pliers"
	};
	category = "Electronics";
};

class PCMouse: Exile_AbstractCraftingRecipe
{
	name = "PC Mouse";
	pictureItem = "Land_PCSet_01_mouse_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_PCSet_01_mouse_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{1, "Exile_Item_JunkMetal"},
		{1, "Exile_Item_MetalWire"}
	};
	tools[] =
	{
		"Exile_Item_Pliers"
	};
	category = "Electronics";
};

class PCKeyboard: Exile_AbstractCraftingRecipe
{
	name = "PC Keyboard";
	pictureItem = "Land_PCSet_01_keyboard_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_PCSet_01_keyboard_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{1, "Exile_Item_MetalBoard"},
		{1, "Exile_Item_MetalWire"}
	};
	tools[] =
	{
		"Exile_Item_Pliers"
	};
	category = "Electronics";
};

class PCCase: Exile_AbstractCraftingRecipe
{
	name = "PC Case";
	pictureItem = "Land_PCSet_01_case_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_PCSet_01_case_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{1, "Exile_Item_MetalBoard"},
		{4, "Exile_Item_MetalWire"},
		{3, "Exile_Item_JunkMetal"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver",
		"Exile_Item_Pliers",
		"Exile_Item_Grinder"
	};
	category = "Electronics";
};

class OfficeChair: Exile_AbstractCraftingRecipe
{
	name = "Office Chair";
	pictureItem = "Land_OfficeChair_01_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_OfficeChair_01_F_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{4, "Exile_Item_WoodPlank"},
		{1, "Exile_Item_JunkMetal"},
		{2, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver"
	};
	category = "Furniture";
};

class OfficeCabinet: Exile_AbstractCraftingRecipe
{
	name = "Office Cabinet";
	pictureItem = "Land_OfficeCabinet_01_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_OfficeCabinet_01_F_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{4, "Exile_Item_WoodPlank"},
		{1, "Exile_Item_JunkMetal"},
		{2, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver"
	};
	category = "Furniture";
};

class GymRack: Exile_AbstractCraftingRecipe
{
	name = "Gym Rack";
	pictureItem = "Land_GymRack_03_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_GymRack_03_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{1, "Exile_Item_MetalBoard"},
		{1, "Exile_Item_JunkMetal"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver",
		"Exile_Item_Grinder"
	};
	category = "Misc";
};

class GymBench: Exile_AbstractCraftingRecipe
{
	name = "Gym Bench";
	pictureItem = "Land_GymBench_01_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_GymBench_01_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{1, "Exile_Item_MetalBoard"},
		{1, "Exile_Item_JunkMetal"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver",
		"Exile_Item_Grinder"
	};
	category = "Misc";
};

class ZboxController: Exile_AbstractCraftingRecipe
{
	name = "Zbox Controller";
	pictureItem = "Land_GamingSet_01_controller_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_GamingSet_01_controller_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{1, "Exile_Item_MetalBoard"},
		{1, "Exile_Item_MetalWire"},
		{1, "Exile_Item_JunkMetal"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver",
		"Exile_Item_Pliers",
		"Exile_Item_Grinder"
	};
	category = "Electronics";
};

class ZboxConsole: Exile_AbstractCraftingRecipe
{
	name = "Zbox Console";
	pictureItem = "Land_GamingSet_01_console_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_GamingSet_01_console_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{2, "Exile_Item_MetalBoard"},
		{2, "Exile_Item_MetalWire"},
		{2, "Exile_Item_JunkMetal"},
		{2, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver",
		"Exile_Item_Pliers",
		"Exile_Item_Grinder"
	};
	category = "Electronics";
};

class PlasticChair: Exile_AbstractCraftingRecipe
{
	name = "Plastic Chair";
	pictureItem = "Land_ChairPlastic_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_ChairPlastic_F_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{1, "Exile_Item_MetalBoard"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver"
	};
	category = "Furniture";
};

class FlatTV: Exile_AbstractCraftingRecipe
{
	name = "Flat TV";
	pictureItem = "Land_FlatTV_01_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_FlatTV_01_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{1, "Exile_Item_MetalBoard"},
		{1, "Exile_Item_MetalWire"},
		{1, "Exile_Item_JunkMetal"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver",
		"Exile_Item_Pliers",
		"Exile_Item_Grinder"
	};
	category = "Electronics";
};

class HuronAmmo: Exile_AbstractCraftingRecipe
{
	name = "HuronAmmo";
	pictureItem = "B_Slingload_01_Ammo_F_Kit";
	returnedItems[] = 
	{
		{1, "B_Slingload_01_Ammo_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{3, "Exile_Item_MetalBoard"},
		{2, "Exile_Item_JunkMetal"},
		{5, "Exile_Item_MetalScrews"},
		{2, "Exile_Item_StorageCrateKit"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver",
		"Exile_Item_Grinder"
	};
	category = "Supply";
};

class HuronFuel: Exile_AbstractCraftingRecipe
{
	name = "HuronFuel";
	pictureItem = "B_Slingload_01_fuel_F_Kit";
	returnedItems[] = 
	{
		{1, "B_Slingload_01_fuel_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{3, "Exile_Item_MetalBoard"},
		{5, "Exile_Item_MetalScrews"},
		{5, "Exile_Item_FuelCanisterFull"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver",
		"Exile_Item_Grinder"
	};
	category = "Supply";
};

class Suitcase: Exile_AbstractCraftingRecipe
{
	name = "Suitcase";
	pictureItem = "Land_Suitcase_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Suitcase_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{1, "Exile_Item_MetalBoard"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver"
	};
	category = "Storages";
};

class AmmoBoxsmall: Exile_AbstractCraftingRecipe
{
	name = "Ammo Box";
	pictureItem = "Land_Ammobox_rounds_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Ammobox_rounds_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{1, "Exile_Item_MetalBoard"},
		{1, "Exile_Item_DuctTape"}
	};
	category = "Storages";
};


class ResearchSmall: Exile_AbstractCraftingRecipe
{
	name = "Research Small";
	pictureItem = "Land_Research_house_V1_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Research_house_V1_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{2, "Exile_Item_JunkMetal"},
		{1, "Exile_Item_MetalScrews"},
		{1, "Exile_Item_MetalBoard"},
		{1, "Exile_Item_DuctTape"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Pliers",
		"Exile_Item_Screwdriver"
	};
	category = "Buildings";
};

class ResearchBig: Exile_AbstractCraftingRecipe
{
	name = "Research Big";
	pictureItem = "Land_Research_HQ_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Research_HQ_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{4, "Exile_Item_JunkMetal"},
		{2, "Exile_Item_MetalScrews"},
		{2, "Exile_Item_MetalBoard"},
		{2, "Exile_Item_DuctTape"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Pliers",
		"Exile_Item_Screwdriver"
	};
	category = "Buildings";
};

class PlasticCase: Exile_AbstractCraftingRecipe
{
	name = "Plastic Case";
	pictureItem = "Land_PlasticCase_01_medium_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_PlasticCase_01_medium_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{3, "Exile_Item_WoodPlank"},
		{2, "Exile_Item_MetalScrews"},
		{1, "Exile_Item_MetalBoard"},
		{2, "Exile_Item_DuctTape"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Pliers",
		"Exile_Item_Screwdriver"
	};
	category = "Storages";
};

class HouseBig: Exile_AbstractCraftingRecipe
{
	name = "House Big";
	pictureItem = "Land_i_House_Big_01_V2_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_i_House_Big_01_V2_F_Kit"},
		{2,"Exile_Item_WaterCanisterEmpty"},
		{2,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 0;
	components[] = 
	{
		{3, "Exile_Item_Cement"},
		{3, "Exile_Item_Sand"},
		{2, "Exile_Item_WaterCanisterDirtyWater"},
		{2, "Exile_Item_FuelCanisterFull"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "Buildings";
};

class Bungalow: Exile_AbstractCraftingRecipe
{
	name = "Bungalow";
	pictureItem = "Land_i_House_Small_03_V1_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_i_House_Small_03_V1_F_Kit"},
		{1,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 0;
	components[] = 
	{
		{2, "Exile_Item_Cement"},
		{2, "Exile_Item_Sand"},
		{1, "Exile_Item_WaterCanisterDirtyWater"},
		{1, "Exile_Item_FuelCanisterFull"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "Buildings";
};

/*class ATM: Exile_AbstractCraftingRecipe
{
	name = "ATM";
	pictureItem = "Land_Atm_02_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Atm_02_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{1, "Exile_Item_PortableGeneratorKit"},
		{3, "Exile_Item_MetalBoard"},
		{2, "Exile_Item_MetalScrews"},
		{4, "Exile_Item_MetalWire"},
		{4, "Exile_Item_Rope"},
		{2, "Exile_Item_DuctTape"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Pliers",
		"Exile_Item_Screwdriver"
	};
	category = "Electronics";
};*/

class ConcreteMixer: Exile_AbstractCraftingRecipe
{
	name = "Concrete Mixer";
	pictureItem = "Exile_ConcreteMixer_Kit";
	returnedItems[] = 
	{
		{1, "Exile_ConcreteMixer_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{1, "Exile_Item_PortableGeneratorKit"},
		{3, "Exile_Item_JunkMetal"},
		{2, "Exile_Item_MetalScrews"},
		{4, "Exile_Item_MetalWire"},
		{2, "Exile_Item_DuctTape"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Pliers",
		"Exile_Item_Screwdriver"
	};
	category = "Supply";
};

class FlagCSAT: Exile_AbstractCraftingRecipe
{
	name = "Flag CSAT";
	pictureItem = "Flag_CSAT_F_Kit";
	returnedItems[] = 
	{
		{1, "Flag_CSAT_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{2, "Exile_Item_MetalPole"},
		{2, "Exile_Item_DuctTape"}
	};
	tools[] =
	{
		"Exile_Item_Grinder"
	};
	category = "Signs";
};

class GarbageContainer: Exile_AbstractCraftingRecipe
{
	name = "Garbage Container";
	pictureItem = "Land_GarbageContainer_closed_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_GarbageContainer_closed_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{2, "Exile_Item_MetalBoard"},
		{2, "Exile_Item_MetalScrews"},
		{4, "Exile_Item_JunkMetal"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver",
		"Exile_Item_Grinder"
	};
	category = "Storages";
};

class MetalRack4Layers: Exile_AbstractCraftingRecipe
{
	name = "Metal Rack 4 Layers";
	pictureItem = "Land_Metal_rack_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Metal_rack_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{2, "Exile_Item_MetalBoard"},
		{2, "Exile_Item_MetalScrews"},
		{4, "Exile_Item_JunkMetal"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver",
		"Exile_Item_Grinder"
	};
	category = "Storages";
};

class WaterSink: Exile_AbstractCraftingRecipe
{
	name = "Water Sink";
	pictureItem = "Land_Sink_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Sink_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{1, "Exile_Item_Cement"},
		{1, "Exile_Item_WaterCanisterDirtyWater"},
		{1, "Exile_Item_FuelCanisterFull"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver",
		"Exile_Item_Grinder"
	};
	category = "Supply";
};

class PavementWideCorner: Exile_AbstractCraftingRecipe
{
	name = "Pavement Wide Corner";
	pictureItem = "Land_Pavement_wide_corner_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Pavement_wide_corner_F_Kit"},
		{1,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 0;
	components[] = 
	{
		{1, "Exile_Item_Cement"},
		{1, "Exile_Item_WaterCanisterDirtyWater"},
		{1, "Exile_Item_FuelCanisterFull"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "Street Stuff";
};

class PavementWide: Exile_AbstractCraftingRecipe
{
	name = "Pavement Wide";
	pictureItem = "Land_Pavement_wide_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Pavement_wide_F_Kit"},
		{1,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 0;
	components[] = 
	{
		{1, "Exile_Item_Cement"},
		{1, "Exile_Item_WaterCanisterDirtyWater"},
		{1, "Exile_Item_FuelCanisterFull"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "Street Stuff";
};

class PavementNarrowCorner: Exile_AbstractCraftingRecipe
{
	name = "Pavement Narrow Corner";
	pictureItem = "Land_Pavement_narrow_corner_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Pavement_narrow_corner_F_Kit"},
		{1,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 0;
	components[] = 
	{
		{1, "Exile_Item_Cement"},
		{1, "Exile_Item_WaterCanisterDirtyWater"},
		{1, "Exile_Item_FuelCanisterFull"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	
	category = "Street Stuff";
};

class PavementNarrow: Exile_AbstractCraftingRecipe
{
	name = "Pavement Narrow";
	pictureItem = "Land_Pavement_narrow_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Pavement_narrow_F_Kit"},
		{1,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 0;
	components[] = 
	{
		{1, "Exile_Item_Cement"},
		{1, "Exile_Item_WaterCanisterDirtyWater"},
		{1, "Exile_Item_FuelCanisterFull"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "Street Stuff";
};

class AltisMap: Exile_AbstractCraftingRecipe
{
	name = "Altis Map";
	pictureItem = "MapBoard_altis_F_Kit";
	returnedItems[] = 
	{
		{1, "MapBoard_altis_F_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{1, "Exile_Item_MetalPole"},
		{1, "Exile_Item_WoodPlank"}
	};
	tools[] =
	{
		"Exile_Item_Handsaw"
	};
	category = "Signs";
};

class CampingTable: Exile_AbstractCraftingRecipe
{
	name = "Camping Table";
	pictureItem = "Land_CampingTable_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_CampingTable_F_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{1, "Exile_Item_MetalPole"},
		{1, "Exile_Item_JunkMetal"},
		{2, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver"
	};
	category = "Furniture";
};

class CampingLight: Exile_AbstractCraftingRecipe
{
	name = "Campinglight";
	pictureItem = "Land_Camping_Light_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Camping_Light_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{1, "Exile_Item_LightBulb"},
		{1, "Exile_Item_JunkMetal"},
		{2, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver",
		"Exile_Item_Pliers"
	};
	category = "Lights";
};

class CampingChairV2: Exile_AbstractCraftingRecipe
{
	name = "Camping Chair V2";
	pictureItem = "Land_CampingChair_V2_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_CampingChair_V2_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{2, "Exile_Item_JunkMetal"},
		{2, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver"
	};
	
	category = "Furniture";
};

class CampingChairV1: Exile_AbstractCraftingRecipe
{
	name = "Camping Chair V1";
	pictureItem = "Land_CampingChair_V1_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_CampingChair_V1_F_Kit"}
	};
	requiresFire = 1;
	components[] = 
	{
		{2, "Exile_Item_JunkMetal"},
		{2, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver"
	};
	category = "Furniture";
};

class SmallStone2: Exile_AbstractCraftingRecipe
{
	name = "Small Stone 2";
	pictureItem = "Land_Small_Stone_02_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Small_Stone_02_F_Kit"},
		{1,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 0;
	components[] = 
	{
		{1, "Exile_Item_Cement"},
		{1, "Exile_Item_FuelCanisterFull"},
		{1, "Exile_Item_WaterCanisterDirtyWater"}
	};
	requiresConcreteMixer = 1;
	
	category = "Misc";
};

class SolarPanel2: Exile_AbstractCraftingRecipe
{
	name = "Solar Panel 2";
	pictureItem = "Land_spp_Panel_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_spp_Panel_F_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{2, "Exile_Item_JunkMetal"},
		{1, "Exile_Item_MetalBoard"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver"
	};	
	category = "Electronics";
};

class SolarPanel: Exile_AbstractCraftingRecipe
{
	name = "Solar Panel";
	pictureItem = "Land_SolarPanel_2_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_SolarPanel_2_F_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{2, "Exile_Item_JunkMetal"},
		{1, "Exile_Item_MetalBoard"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver"
	};	
	category = "Electronics";
};

class SleepingBag: Exile_AbstractCraftingRecipe
{
	name = "Sleeping Bag";
	pictureItem = "Land_Sleeping_bag_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Sleeping_bag_F_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{2, "Exile_Item_Rope"}
	};
	tools[] =
	{
		"Exile_Item_Pliers"
	};	
	category = "Tents";
};

class SharpStone2: Exile_AbstractCraftingRecipe
{
	name = "Sharp Stone 2";
	pictureItem = "Land_SharpStone_02_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_SharpStone_02_F_Kit"},
		{1,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 0;
	components[] = 
	{
		{1, "Exile_Item_Cement"},
		{1, "Exile_Item_FuelCanisterFull"},
		{1, "Exile_Item_WaterCanisterDirtyWater"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};	
	requiresConcreteMixer = 1;
	category = "Misc";
};

class SharpStone1: Exile_AbstractCraftingRecipe
{
	name = "Sharp Stone 1";
	pictureItem = "Land_SharpStone_01_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_SharpStone_01_F_Kit"},
		{1,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 0;
	components[] = 
	{
		{1, "Exile_Item_Cement"},
		{1, "Exile_Item_FuelCanisterFull"},
		{1, "Exile_Item_WaterCanisterDirtyWater"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};	
	requiresConcreteMixer = 1;
	category = "Misc";
};

/*class Pier1: Exile_AbstractCraftingRecipe  Removed
{
	name = "Long Pier";
	pictureItem = "Land_nav_pier_m_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_nav_pier_m_F_Kit"},
		{1,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 0;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{4, "Exile_Item_WoodPlank"},
		{2, "Exile_Item_Cement"},
		{2, "Exile_Item_Sand"},
		{2, "Exile_Item_MetalScrews"},
		{1, "Exile_Item_FuelCanisterFull"},
		{1, "Exile_Item_WaterCanisterDirtyWater"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};	
	requiresConcreteMixer = 1;
	category = "Buildings";
};
*/
class Bush: Exile_AbstractCraftingRecipe
{
	name = "Bush";
	pictureItem = "Exile_Plant_GreenBush_Kit";
	returnedItems[] = 
	{
		{1, "Exile_Plant_GreenBush_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{5, "Exile_Item_Woodlog"}
	};
	
	tools[] =
	{
		"Exile_Item_Pliers"
	};	
	category = "Misc";
};

class TransmissionTower: Exile_AbstractCraftingRecipe
{
	name = "Transmission Tower";
	pictureItem = "Land_TTowerSmall_1_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_TTowerSmall_1_F_Kit"}
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{2, "Exile_Item_ExtensionCord"},
		{2, "Exile_Item_Rope"},
		{2, "Exile_Item_MetalPole"}
	};
	tools[] =
	{
		"Exile_Item_Foolbox"
	};	
	category = "Electronics";
};

class SignUnexplodedAmmo: Exile_AbstractCraftingRecipe
{
	name = "Unexploded Ammo Sign";
	pictureItem = "Land_Sign_WarningUnexplodedAmmo_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Sign_WarningUnexplodedAmmo_F_Kit"}
	};
	requiresFire = 0;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{1, "Exile_Item_MetalPole"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Foolbox",
		"Exile_Item_Screwdriver"
	};	
	category = "Signs";
};

class CastleTower: Exile_AbstractCraftingRecipe
{
	name = "Castle Tower";
	pictureItem = "Land_Castle_01_tower_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Castle_01_tower_F_Kit"},
		{1,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 0;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{2, "Exile_Item_Cement"},
		{2, "Exile_Item_Sand"},
		{1, "Exile_Item_FuelCanisterFull"},
		{1, "Exile_Item_WaterCanisterDirtyWater"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};	
	requiresConcreteMixer = 1;
	category = "Buildings";
};

class BeachBooth: Exile_AbstractCraftingRecipe
{
	name = "Beach Booth";
	pictureItem = "Land_BeachBooth_01_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_BeachBooth_01_F_Kit"}
	};
	requiresFire = 0;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{3, "Exile_Item_Woodlog"},
		{1, "Exile_Item_Rope"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver"
	};	
	category = "Buildings";
};

class Barracks: Exile_AbstractCraftingRecipe
{
	name = "Barracks";
	pictureItem = "Land_i_Barracks_V1_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_i_Barracks_V1_F_Kit"},
		{1,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 0;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{2, "Exile_Item_MetalBoard"},
		{2, "Exile_Item_Cement"},
		{2, "Exile_Item_Sand"},
		{1, "Exile_Item_FuelCanisterFull"},
		{1, "Exile_Item_WaterCanisterDirtyWater"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "Buildings";
};

class AirportTower: Exile_AbstractCraftingRecipe
{
	name = "Airport Tower";
	pictureItem = "Land_Airport_Tower_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Airport_Tower_F_Kit"},
		{1,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{5, "Exile_Item_Woodlog"},
		{2, "Exile_Item_Cement"},
		{1, "Exile_Item_Sand"},
		{1, "Exile_Item_FuelCanisterFull"},
		{1, "Exile_Item_WaterCanisterDirtyWater"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "Buildings";
};

class Shabbylamp: Exile_AbstractCraftingRecipe
{
	name = "Shabby Lamp";
	pictureItem = "Land_LampShabby_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_LampShabby_F_Kit"}
	};
	requiresFire = 0;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{8, "Exile_Item_Woodlog"},
		{2, "Exile_Item_ExtensionCord"},
		{1, "Exile_Item_LightBulb"},
		{1, "Exile_Item_MetalScrews"},
		{1, "Exile_Item_LightBulb"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver",
		"Exile_Item_Handsaw"
	};
	category = "Lights";
};

class Sunshade: Exile_AbstractCraftingRecipe
{
	name = "Sunshade";
	pictureItem = "Land_Sunshade_04_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Sunshade_04_F_Kit"}
	};
	requiresFire = 0;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{1, "Exile_Item_Woodlog"},
		{1, "Exile_Item_Rope"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver"
	};
	category = "Furniture";
};

class Sunchair: Exile_AbstractCraftingRecipe
{
	name = "Sunchair";
	pictureItem = "Land_Sun_chair_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Sun_chair_F_Kit"}
	};
	requiresFire = 0;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{2, "Exile_Item_Woodlog"},
		{2, "Exile_Item_Rope"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver"
	};
	category = "Furniture";
};

class SolarTower: Exile_AbstractCraftingRecipe
{
	name = "Solar Tower";
	pictureItem = "Land_spp_Tower_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_spp_Tower_F_Kit"},
		{1,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{2, "Exile_Item_MetalPole"},
		{2, "Exile_Item_Cement"},
		{4, "Exile_Item_LightBulb"},
		{2, "Exile_Item_JunkMetal"},
		{2, "Exile_Item_MetalWire"},
		{1, "Exile_Item_FuelCanisterFull"},
		{1, "Exile_Item_WaterCanisterDirtyWater"}
	};
	tools[] =
	{
		"Exile_Item_Shovel",
		"Exile_Item_Grinder"
	};
	category = "Buildings";
};

class MetalShed: Exile_AbstractCraftingRecipe
{
	name = "Metal Shed";
	pictureItem = "Land_Metal_Shed_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Metal_Shed_F_Kit"}
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{3, "Exile_Item_JunkMetal"},
		{2, "Exile_Item_Woodlog"},
		{4, "Exile_Item_MetalWire"},
		{2, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Pliers",
		"Exile_Item_Screwdriver"
	};
	category = "Buildings";
};

class AirplaneHangar: Exile_AbstractCraftingRecipe
{
	name = "Airplane Hangar";
	pictureItem = "Land_Hangar_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Hangar_F_Kit"}
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{2, "Exile_Item_MetalPole"},
		{2, "Exile_Item_MetalBoard"},
		{4, "Exile_Item_Rope"},
		{4, "Exile_Item_MetalWire"},
		{4, "Exile_Item_DuctTape"}
	};
	tools[] =
	{
		"Exile_Item_Pliers",
		"Exile_Item_Screwdriver",
		"Exile_Item_Grinder"
	};
	category = "Buildings";
};

class BigDome: Exile_AbstractCraftingRecipe
{
	name = "Big Dome";
	pictureItem = "Land_Dome_Big_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Dome_Big_F_Kit"}
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{2, "Exile_Item_MetalPole"},
		{4, "Exile_Item_MetalBoard"},
		{4, "Exile_Item_Rope"},
		{4, "Exile_Item_MetalWire"},
		{4, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Pliers",
		"Exile_Item_Screwdriver",
		"Exile_Item_Grinder"
	};
	category = "Buildings";
};

class StreetLamp: Exile_AbstractCraftingRecipe
{
	name = "Street Lamp";
	pictureItem = "Land_LampStreet_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_LampStreet_F_Kit"}
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{2, "Exile_Item_MetalPole"},
		{4, "Exile_Item_ExtensionCord"},
		{1, "Exile_Item_LightBulb"},
		{2, "Exile_Item_MetalWire"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver",
		"Exile_Item_Grinder"
	};
	category = "Lights";
};

class TavernMiddle: Exile_AbstractCraftingRecipe
{
	name = "Tavern middle";
	pictureItem = "Land_i_Addon_03mid_V1_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_i_Addon_03mid_V1_F_Kit"}
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{10, "Exile_Item_WoodPlank"},
		{5, "Exile_Item_JunkMetal"},
		{2, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver"
	};
	category = "Buildings";
};

class Tavern: Exile_AbstractCraftingRecipe
{
	name = "Tavern";
	pictureItem = "Land_i_Addon_03_V1_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_i_Addon_03_V1_F_Kit"}
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{10, "Exile_Item_WoodPlank"},
		{5, "Exile_Item_JunkMetal"},
		{2, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver"
	};
	
	category = "Buildings";
};

class SeaWall: Exile_AbstractCraftingRecipe
{
	name = "Sea Wall";
	pictureItem = "Land_Sea_Wall_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Sea_Wall_F_Kit"},
		{1,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 0;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{2, "Exile_Item_Cement"},
		{2, "Exile_Item_Sand"},
		{1, "Exile_Item_FuelCanisterFull"},
		{1, "Exile_Item_WaterCanisterDirtyWater"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "Misc";
};

class Industryfence3pts: Exile_AbstractCraftingRecipe
{
	name = "Industryfence 3pts";
	pictureItem = "Land_IndFnc_9_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_IndFnc_9_F_Kit"},
		{1,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 0;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{3, "Exile_Item_Cement"},
		{1, "Exile_Item_FuelCanisterFull"},
		{1, "Exile_Item_WaterCanisterDirtyWater"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "Walls";
};

class Industryfence: Exile_AbstractCraftingRecipe
{
	name = "Industryfence";
	pictureItem = "Land_IndFnc_3_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_IndFnc_3_F_Kit"},
		{1,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 0;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{1, "Exile_Item_Cement"},
		{1, "Exile_Item_FuelCanisterFull"},
		{1, "Exile_Item_WaterCanisterDirtyWater"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "Walls";
};	

class CargoContainerSmall: Exile_AbstractCraftingRecipe
{
	name = "Cargo Container Small";
	pictureItem = "Land_CargoBox_V1_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_CargoBox_V1_F_Kit"}
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{2, "Exile_Item_MetalBoard"},
		{2, "Exile_Item_JunkMetal"},
		{2, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Screwdriver"
	};
	category = "Storages";
};	

class BlockConcrete: Exile_AbstractCraftingRecipe
{
	name = "Concrete Block";
	pictureItem = "BlockConcrete_F_Kit";
	returnedItems[] = 
	{
		{1, "BlockConcrete_F_Kit"},
		{1,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 0;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{4, "Exile_Item_Cement"},
		{1, "Exile_Item_FuelCanisterFull"},
		{1, "Exile_Item_WaterCanisterDirtyWater"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "Misc";
};	

class Chair: Exile_AbstractCraftingRecipe
{
	name = "Chair";
	pictureItem = "Land_ChairWood_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_ChairWood_F_Kit"}
	};
	requiresFire = 0;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{5, "Exile_Item_WoodPlank"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver"
	};
	category = "Furniture";
};	

/*class Pierbox: Exile_AbstractCraftingRecipe Removed
{
	name = "Pierbox";
	pictureItem = "Land_Pier_Box_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Pier_Box_F_Kit"},
		{1,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{4, "Exile_Item_Cement"},
		{4, "Exile_Item_Sand"},
		{5, "Exile_Item_WoodPlank"},
		{1, "Exile_Item_FuelCanisterFull"},
		{1, "Exile_Item_WaterCanisterDirtyWater"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "Buildings";
};	
*/
class Toiletbox: Exile_AbstractCraftingRecipe
{
	name = "Toiletbox";
	pictureItem = "Land_ToiletBox_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_ToiletBox_F_Kit"}
	};
	requiresFire = 0;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{4, "Exile_Item_WoodPlank"},
		{1, "Exile_Item_JunkMetal"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver"
	};
	category = "Misc";
};	
		
class Table: Exile_AbstractCraftingRecipe
{
	name = "Table";
	pictureItem = "Land_TableDesk_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_TableDesk_F_Kit"}
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{10, "Exile_Item_WoodPlank"},
		{1, "Exile_Item_MetalBoard"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver"
	};
	category = "Furniture";
};			

class Slumplane: Exile_AbstractCraftingRecipe
{
	name = "Slumplane";
	pictureItem = "Land_Cargo_addon02_V2_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Cargo_addon02_V2_F_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{4, "Exile_Item_Woodlog"},
		{2, "Exile_Item_Rope"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver"
	};	
	category = "Tents";
};		

class Radarsmall: Exile_AbstractCraftingRecipe
{
	name = "Small Radar";
	pictureItem = "Land_Radar_Small_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Radar_Small_F_Kit"}
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{4, "Exile_Item_MetalBoard"},
		{2, "Exile_Item_JunkMetal"},
		{5, "Exile_Item_ExtensionCord"},
		{2, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Screwdriver"
	};	
	category = "Buildings";
};
		
class Floodlightdouble: Exile_AbstractCraftingRecipe
{
	name = "Floodlight double";
	pictureItem = "Land_PortableLight_double_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_PortableLight_double_F_Kit"}
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{6, "Exile_Item_LightBulb"},
		{2, "Exile_Item_JunkMetal"},
		{2, "Exile_Item_ExtensionCord"},
		{2, "Exile_Item_MetalWire"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Screwdriver"
	};	
	category = "Lights";
};

class CncWallSmall8m: Exile_AbstractCraftingRecipe
{
	name = "Small concrete wall 8m";
	pictureItem = "Land_Concrete_SmallWall_8m_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Concrete_SmallWall_8m_F_Kit"},
		{1,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 0;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{2, "Exile_Item_Cement"},
		{2, "Exile_Item_Sand"},
		{1, "Exile_Item_FuelCanisterFull"},
		{1, "Exile_Item_WaterCanisterDirtyWater"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "Walls";
};

class CncWallSmall4m: Exile_AbstractCraftingRecipe
{
	name = "Small concrete wall 4m";
	pictureItem = "Land_Concrete_SmallWall_4m_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Concrete_SmallWall_4m_F_Kit"},
		{1,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 0;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{1, "Exile_Item_Cement"},
		{1, "Exile_Item_Sand"},
		{1, "Exile_Item_FuelCanisterFull"},
		{1, "Exile_Item_WaterCanisterDirtyWater"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "Walls";
};

class MilitaryVehicle: Exile_AbstractCraftingRecipe
{
	name = "Military Vehicle Sign";
	pictureItem = "Land_Sign_WarningMilitaryVehicles_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Sign_WarningMilitaryVehicles_F_Kit"}
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{1, "Exile_Item_MetalPole"},
		{1, "Exile_Item_WoodPlank"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver",
		"Exile_Item_Grinder"
	};
	category = "Signs";
};

class MilSignSmall: Exile_AbstractCraftingRecipe
{
	name = "Military Sign Small";
	pictureItem = "Land_Sign_WarningMilAreaSmall_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Sign_WarningMilAreaSmall_F_Kit"}
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{1, "Exile_Item_MetalPole"},
		{1, "Exile_Item_WoodPlank"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver",
		"Exile_Item_Grinder"
	};
	category = "Signs";
};

class Watersource: Exile_AbstractCraftingRecipe
{
	name = "Watersource";
	pictureItem = "Land_Water_source_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Water_source_F_Kit"},
		{1,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 0;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{1, "Exile_Item_MetalPole"},
		{1, "Exile_Item_Cement"},
		{1, "Exile_Item_Sand"},
		{1, "Exile_Item_FuelCanisterFull"},
		{1, "Exile_Item_WaterCanisterDirtyWater"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "Supply";
};

class TouristShelter: Exile_AbstractCraftingRecipe
{
	name = "Tourist Shelter";
	pictureItem = "Land_TouristShelter_01_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_TouristShelter_01_F_Kit"},
		{1,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{1, "Exile_Item_Sand"},
		{1, "Exile_Item_Cement"},
		{5, "Exile_Item_WoodPlank"},
		{1, "Exile_Item_MetalScrews"},
		{1, "Exile_Item_FuelCanisterFull"},
		{1, "Exile_Item_WaterCanisterDirtyWater"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver",
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "Buildings";
};

class BigShed: Exile_AbstractCraftingRecipe
{
	name = "Big Shed";
	pictureItem = "Land_Shed_Big_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Shed_Big_F_Kit"}
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{4, "Exile_Item_MetalPole"},
		{4, "Exile_Item_MetalBoard"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Foolbox"
	};
	category = "Buildings";
};

class Crashbarrier: Exile_AbstractCraftingRecipe
{
	name = "Crashbarrier";
	pictureItem = "Land_Crash_barrier_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Crash_barrier_F_Kit"}
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{2, "Exile_Item_JunkMetal"}
	};
	tools[] =
	{
		"Exile_Item_Grinder"
	};
	category = "Street Stuff";
};

class cncbarriermedium: Exile_AbstractCraftingRecipe
{
	name = "CNC Barrier Medium";
	pictureItem = "Land_CncBarrierMedium_F_Kit";
	returnedItems[] = 
	{
		{2, "Land_CncBarrierMedium_F_Kit"},
		{1,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 0;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{1, "Exile_Item_Cement"},
		{1, "Exile_Item_Sand"},
		{1, "Exile_Item_FuelCanisterFull"},
		{1, "Exile_Item_WaterCanisterDirtyWater"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "Street Stuff";
};

class cncbarrier1: Exile_AbstractCraftingRecipe
{
	name = "CNC Barrier 1";
	pictureItem = "Land_CncWall1_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_CncWall1_F_Kit"},
		{1,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 0;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{1, "Exile_Item_Cement"},
		{1, "Exile_Item_Sand"},
		{1, "Exile_Item_FuelCanisterFull"},
		{1, "Exile_Item_WaterCanisterDirtyWater"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "Street Stuff";
};

class Airportlamp: Exile_AbstractCraftingRecipe
{
	name = "Airportlamp";
	pictureItem = "Land_LampAirport_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_LampAirport_F_Kit"}
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{4, "Exile_Item_ExtensionCord"},
		{4, "Exile_Item_LightBulb"},
		{2, "Exile_Item_MetalPole"},
		{1, "Exile_Item_MetalWire"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver",
		"Exile_Item_Grinder",
		"Exile_Item_Pliers"
	};
	category = "Lights";
};

class LampHalogen: Exile_AbstractCraftingRecipe
{
	name = "Halogen Base Lamp";
	pictureItem = "Land_LampHalogen_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_LampHalogen_F_Kit"}
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{10, "Exile_Item_LightBulb"},
		{5, "Exile_Item_ExtensionCord"},
		{2, "Exile_Item_MetalPole"},
		{1, "Exile_Item_MetalWire"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver",
		"Exile_Item_Grinder",
		"Exile_Item_Pliers"
	};
	category = "Lights";
};

class TentHangar: Exile_AbstractCraftingRecipe
{
	name = "Tent Hangar";
	pictureItem = "Land_TentHangar_V1_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_TentHangar_V1_F_Kit"}
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{5, "Exile_Item_Woodlog"},
		{2, "Exile_Item_MetalPole"},
		{3, "Exile_Item_Rope"},
		{5, "Exile_Item_DuctTape"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Pliers",
		"Exile_Item_Handsaw",
		"Exile_Item_Screwdriver"
	};
	category = "Tents";
};

class TentDome: Exile_AbstractCraftingRecipe
{
	name = "Tent Dome";
	pictureItem = "Land_TentDome_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_TentDome_F_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{2, "Exile_Item_Woodlog"},
		{2, "Exile_Item_Rope"},
		{1, "Exile_Item_DuctTape"}
	};
	
	category = "Tents";
};

class Platform: Exile_AbstractCraftingRecipe
{
	name = "Platform";
	pictureItem = "Land_GH_Platform_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_GH_Platform_F_Kit"},
		{1,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 0;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{1, "Exile_Item_Cement"},
		{1, "Exile_Item_Sand"},
		{1, "Exile_Item_FuelCanisterFull"},
		{1, "Exile_Item_WaterCanisterDirtyWater"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "Buildings";
};

class Garage: Exile_AbstractCraftingRecipe
{
	name = "Garage";
	pictureItem = "Land_i_Garage_V2_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_i_Garage_V2_F_Kit"},
		{1,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 0;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{1, "Exile_Item_Sand"},
		{1, "Exile_Item_Cement"},
		{2, "Exile_Item_WoodPlank"},
		{2, "Exile_Item_MetalScrews"},
		{1, "Exile_Item_FuelCanisterFull"},
		{1, "Exile_Item_WaterCanisterDirtyWater"}
	};
	tools[] =
	{
		"Exile_Item_Shovel",
		"Exile_Item_Screwdriver"
	};
	requiresConcreteMixer = 1;
	category = "Buildings";
};

class CNCStairs: Exile_AbstractCraftingRecipe
{
	name = "CNC Stairs";
	pictureItem = "Land_GH_Stairs_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_GH_Stairs_F_Kit"},
		{1,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 0;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{1, "Exile_Item_Cement"},
		{1, "Exile_Item_Sand"},
		{1, "Exile_Item_FuelCanisterFull"},
		{1, "Exile_Item_WaterCanisterDirtyWater"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "Buildings";
};

class CargoContainerSandSmall: Exile_AbstractCraftingRecipe
{
	name = "Cargo container Sand Small";
	pictureItem = "Land_Cargo20_sand_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Cargo20_sand_F_Kit"}
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{2, "Exile_Item_MetalBoard"},
		{2, "Exile_Item_JunkMetal"},
		{2, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver",
		"Exile_Item_Grinder"
	};
	category = "Storages";
};

class Brokenshed: Exile_AbstractCraftingRecipe
{
	name = "Broken Shed";
	pictureItem = "Land_u_Addon_01_V1_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_u_Addon_01_V1_F_Kit"}
	};
	requiresFire = 0;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{6, "Exile_Item_WoodPlank"},
		{4, "Exile_Item_Cement"},
		{2, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver"
	};
	category = "Buildings";
};

class Razorwire: Exile_AbstractCraftingRecipe
{
	name = "Razorwire";
	pictureItem = "Land_Razorwire_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Razorwire_F_Kit"}
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{2, "Exile_Item_JunkMetal"},
		{6, "Exile_Item_MetalWire"}
	};
	tools[] =
	{
		"Exile_Item_Pliers",
		"Exile_Item_Grinder"
	};
	category = "Walls";
};

class SmallShed: Exile_AbstractCraftingRecipe
{
	name = "Small Shed";
	pictureItem = "Land_Shed_Small_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Shed_Small_F_Kit"}
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{2, "Exile_Item_MetalBoard"},
		{2, "Exile_Item_JunkMetal"},
		{2, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver"
	};
	category = "Buildings";
};

class FuelstationShed: Exile_AbstractCraftingRecipe
{
	name = "Fuelstation Shed";
	pictureItem = "Land_FuelStation_Shed_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_FuelStation_Shed_F_Kit"}
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{2, "Exile_Item_MetalBoard"},
		{2, "Exile_Item_MetalPole"},
		{4, "Exile_Item_WoodPlank"},
		{4, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver",
		"Exile_Item_Grinder"
	};
	category = "Supply";
};

class CNCWallType2: Exile_AbstractCraftingRecipe
{
	name = "CNC Wall Type 2";
	pictureItem = "Land_CncWall4_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_CncWall4_F_Kit"},
		{1,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 0;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{2, "Exile_Item_Cement"},
		{2, "Exile_Item_Sand"},
		{1, "Exile_Item_FuelCanisterFull"},
		{1, "Exile_Item_WaterCanisterDirtyWater"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "Walls";
};

class CNCWall: Exile_AbstractCraftingRecipe
{
	name = "CNC Wall";
	pictureItem = "Land_Wall_IndCnc_2deco_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Wall_IndCnc_2deco_F_Kit"},
		{1,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 0;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{2, "Exile_Item_Cement"},
		{2, "Exile_Item_Sand"},
		{1, "Exile_Item_FuelCanisterFull"},
		{1, "Exile_Item_WaterCanisterDirtyWater"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "Walls";
};


class CNCShelter: Exile_AbstractCraftingRecipe
{
	name = "CNC Shelter";
	pictureItem = "Land_CncShelter_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_CncShelter_F_Kit"},
		{1,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 0;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{1, "Exile_Item_Cement"},
		{1, "Exile_Item_Sand"},
		{1, "Exile_Item_FuelCanisterFull"},
		{1, "Exile_Item_WaterCanisterDirtyWater"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "Walls";
};


class SlumContainer: Exile_AbstractCraftingRecipe
{
	name = "Slum Container";
	pictureItem = "Land_cargo_house_slum_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_cargo_house_slum_F_Kit"}
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{2, "Exile_Item_JunkMetal"},
		{1, "Exile_Item_MetalBoard"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Screwdriver"
	};
	category = "Buildings";
};

class HugeContainer: Exile_AbstractCraftingRecipe
{
	name = "Huge Container";
	pictureItem = "Land_Cargo40_light_green_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Cargo40_light_green_F_Kit"}
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{6, "Exile_Item_JunkMetal"},
		{6, "Exile_Item_MetalBoard"},
		{2, "Exile_Item_MetalScrews"},
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Screwdriver"
	};
	category = "Storages";
};

class CargoHouse: Exile_AbstractCraftingRecipe
{
	name = "Military Cargo House";
	pictureItem = "Land_Cargo_House_V2_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Cargo_House_V2_F_Kit"}
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{5, "Exile_Item_MetalBoard"},
		{3, "Exile_Item_JunkMetal"},
		{6, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Screwdriver"
	};
	category = "Buildings";
};

class ShootingPos: Exile_AbstractCraftingRecipe
{
	name = "Shooting Pos";
	pictureItem = "ShootingPos_F_Kit";
	returnedItems[] = 
	{
		{1, "ShootingPos_F_Kit"}
	};
	requiresFire = 0;
	components[] = 
	{
		{4, "Exile_Item_Woodlog"}
	};
	
	category = "Buildings";
};

class BagBunkerBig: Exile_AbstractCraftingRecipe
{
	name = "Bag Bunker Big";
	pictureItem = "Land_BagBunker_Large_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_BagBunker_Large_F_Kit"}
	};
	requiresFire = 0;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{5, "Exile_Item_Sand"},
		{5, "Exile_Item_MetalWire"},
		{4, "Exile_Item_WoodPlank"}
	};
	tools[] =
	{
		"Exile_Item_Pliers"
	};
	category = "Buildings";
};

class Pumpstation: Exile_AbstractCraftingRecipe
{
	name = "Pumpstation";
	pictureItem = "Land_FuelStation_Feed_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_FuelStation_Feed_F_Kit"}
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{2, "Exile_Item_MetalBoard"},
		{5, "Exile_Item_JunkMetal"},
		{1, "Exile_Item_WaterBarrelKit"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Screwdriver"
	};
	category = "Supply";
};

class CargoTowerBig: Exile_AbstractCraftingRecipe
{
	name = "Cargo Tower Big";
	pictureItem = "Land_Cargo_Tower_V2_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Cargo_Tower_V2_F_Kit"}
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{6, "Exile_Item_MetalBoard"},
		{1, "Land_Cargo_House_V2_F_Kit"},
		{6, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Screwdriver"
	};
	category = "Buildings";
};

class MetalShelf: Exile_AbstractCraftingRecipe
{
	name = "Metal Shelf";
	pictureItem = "Land_ShelvesMetal_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_ShelvesMetal_F_Kit"}
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{3, "Exile_Item_MetalBoard"},
		{5, "Exile_Item_WoodPlank"},
		{5, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Screwdriver"
	};
	category = "Storages";
};

class RustyTank: Exile_AbstractCraftingRecipe
{
	name = "RustyTank";
	pictureItem = "Land_Tank_rust_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Tank_rust_F_Kit"}
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{2, "Exile_Item_MetalBoard"},
		{2, "Exile_Item_WaterBarrelKit"}
	};
	tools[] =
	{
		"Exile_Item_Grinder"
	};
	category = "Supply";
};

class Steelfence: Exile_AbstractCraftingRecipe
{
	name = "Steelfence";
	pictureItem = "Land_Wall_Tin_4_Kit";
	returnedItems[] = 
	{
		{1, "Land_Wall_Tin_4_Kit"}
	};
	requiresFire = 0;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{2, "Exile_Item_MetalBoard"}
	};
	tools[] =
	{
		"Exile_Item_Grinder"
	};
	category = "Walls";
};

class Pier: Exile_AbstractCraftingRecipe
{
	name = "Pier";
	pictureItem = "Land_Pier_small_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Pier_small_F_Kit"}
	};
	requiresFire = 0;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{10, "Exile_Item_Woodlog"},
		{5, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver"
	};
	category = "Buildings";
};

class LandCargoPatrol: Exile_AbstractCraftingRecipe
{
	name = "Land Cargo Patrol";
	pictureItem = "Land_Cargo_Patrol_V2_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Cargo_Patrol_V2_F_Kit"}
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{1, "Exile_Item_JunkMetal"},
		{2, "Exile_Item_MetalBoard"},
		{3, "Exile_Item_MetalPole"},
		{3, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Screwdriver"
	};
	category = "Buildings";
};

class CncWallMil4M: Exile_AbstractCraftingRecipe
{
	name = "Concrete Wall Military 4m";
	pictureItem = "Land_Mil_WallBig_4m_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Mil_WallBig_4m_F_Kit"},
		{1,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 0;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{1, "Exile_Item_Sand"},
		{1, "Exile_Item_Cement"},
		{1, "Exile_Item_FuelCanisterFull"},
		{1, "Exile_Item_WaterCanisterDirtyWater"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "Walls";
};

class MilitaryArea: Exile_AbstractCraftingRecipe
{
	name = "Military Area";
	pictureItem = "Land_Sign_WarningMilitaryArea_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Sign_WarningMilitaryArea_F_Kit"}
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{2, "Exile_Item_JunkMetal"},
		{2, "Exile_Item_WoodPlank"},
		{2, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver",
		"Exile_Item_Grinder"
	};
	category = "Signs";
};


class Icebox: Exile_AbstractCraftingRecipe
{
	name = "Icebox";
	pictureItem = "Land_Icebox_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Icebox_F_Kit"}
	};
	requiresFire = 0;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{2, "Exile_Item_MetalBoard"},
		{10, "Exile_Item_PlasticBottleEmpty"},
		{1, "Exile_Item_DuctTape"},
		{2, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver",
		"Exile_Item_Pliers"
	};
	category = "Storages";
};

class Bargate: Exile_AbstractCraftingRecipe
{
	name = "Bar Gate";
	pictureItem = "Land_BarGate_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_BarGate_F_Kit"}
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{1, "Exile_Item_MetalBoard"},
		{3, "Exile_Item_MetalPole"},
		{2, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver",
		"Exile_Item_Grinder"
	};
	category = "Street Stuff";
};

class Citygate: Exile_AbstractCraftingRecipe
{
	name = "City Gate";
	pictureItem = "Land_City_Gate_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_City_Gate_F_Kit"},
		{1,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{1, "Exile_Item_MetalBoard"},
		{1, "Exile_Item_Cement"},
		{1, "Exile_Item_MetalScrews"},
		{1, "Exile_Item_FuelCanisterFull"},
		{1, "Exile_Item_WaterCanisterDirtyWater"}
	};
	tools[] =
	{
		"Exile_Item_Shovel",
		"Exile_Item_Screwdriver"
	};
	requiresConcreteMixer = 1;
	category = "Buildings";
};

class Rack: Exile_AbstractCraftingRecipe
{
	name = "A Shelf";
	pictureItem = "Land_Rack_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Rack_F_Kit"}
	};
	requiresFire = 0;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{4, "Exile_Item_WoodPlank"},
		{2, "Exile_Item_JunkMetal"},
		{2, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver"
	};
	category = "Storages";
};


class HeliPad: Exile_AbstractCraftingRecipe
{
	name = "Helipad";
	pictureItem = "Land_HelipadCivil_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_HelipadCivil_F_Kit"},
		{1,"Exile_Item_WaterCanisterEmpty"},
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{1, "Exile_Item_WaterCanisterDirtyWater"},
		{2, "Exile_Item_DuctTape"},
		{2, "Exile_Item_Cement"}
	};
	tools[] =
	{
		"Exile_Item_CookingPot"
	};
	category = "Buildings";
};

class ConcreteWall8m: Exile_AbstractCraftingRecipe
{
	name = "Concrete Wall 8m";
	pictureItem = "Land_City2_8m_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_City2_8m_F_Kit"},
		{1,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 0;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{2, "Exile_Item_Cement"},
		{2, "Exile_Item_Sand"},
		{1, "Exile_Item_FuelCanisterFull"},
		{1, "Exile_Item_WaterCanisterDirtyWater"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "Walls";
};

class ConcreteWall4m: Exile_AbstractCraftingRecipe
{
	name = "Concrete Wall 4m";
	pictureItem = "Land_City2_4m_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_City2_4m_F_Kit"},
		{1,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 0;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{2, "Exile_Item_Cement"},
		{2, "Exile_Item_Sand"},
		{1, "Exile_Item_FuelCanisterFull"},
		{1, "Exile_Item_WaterCanisterDirtyWater"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "Walls";
};

class ConcreteWall1: Exile_AbstractCraftingRecipe
{
	name = "Concrete Wall";
	pictureItem = "Land_Wall_IndCnc_4_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Wall_IndCnc_4_F_Kit"},
		{1,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 0;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{2, "Exile_Item_Cement"},
		{2, "Exile_Item_Sand"},
		{1, "Exile_Item_FuelCanisterFull"},
		{1, "Exile_Item_WaterCanisterDirtyWater"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "Walls";
};

class ConcreteRamp: Exile_AbstractCraftingRecipe
{
	name = "Concrete Ramp";
	pictureItem = "Land_RampConcrete_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_RampConcrete_F_Kit"},
		{1,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 0;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{2, "Exile_Item_Cement"},
		{2, "Exile_Item_Sand"},
		{1, "Exile_Item_FuelCanisterFull"},
		{1, "Exile_Item_WaterCanisterDirtyWater"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "Buildings";
};

class SandbagBarrierBigCorner: Exile_AbstractCraftingRecipe
{
	name = "Sandbag Barrier Big Corner";
	pictureItem = "Land_HBarrierWall_corner_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_HBarrierWall_corner_F_Kit"}
	};
	requiresFire = 0;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{3, "Exile_Item_Sand"},
		{2, "Exile_Item_MetalWire"}
	};
	tools[] =
	{
		"Exile_Item_Pliers"
	};
	category = "Walls";
};

class BunkerHuge: Exile_AbstractCraftingRecipe
{
	name = "Bunker HUGE";
	pictureItem = "Land_Bunker_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Bunker_F_Kit"},
		{1,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 0;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{1, "Land_Cargo40_light_green_F_Kit"},
		{2, "Exile_Item_Cement"},
		{2, "Exile_Item_Sand"},
		{1, "Exile_Item_FuelCanisterFull"},
		{1, "Exile_Item_WaterCanisterDirtyWater"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "Storages";
};


class BagBunkerSmall: Exile_AbstractCraftingRecipe
{
	name = "Bag Bunker Small";
	pictureItem = "Land_BagBunker_Small_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_BagBunker_Small_F_Kit"},
		{1,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 0;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{2, "Exile_Item_Sand"},
		{1, "Exile_Item_Cement"},
		{4, "Exile_Item_WoodPlank"},
		{1, "Exile_Item_FuelCanisterFull"},
		{1, "Exile_Item_WaterCanisterDirtyWater"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "Buildings";
};

class MetalWoodenRack: Exile_AbstractCraftingRecipe
{
	name = "Metal Wooden Shelf";
	pictureItem = "Land_Metal_wooden_rack_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Metal_wooden_rack_F_Kit"}
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{1, "Exile_Item_MetalBoard"},
		{1, "Exile_Item_MetalPole"},
		{3, "Exile_Item_WoodPlank"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Screwdriver"
	};
	category = "Storages";
};

class SandbagTower: Exile_AbstractCraftingRecipe
{
	name = "Sandbag Tower";
	pictureItem = "Land_HBarrierTower_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_HBarrierTower_F_Kit"}
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{5, "Exile_Item_Sand"},
		{1, "Exile_Item_MetalBoard"},
		{1, "Exile_Item_MetalPole"},
		{2, "Exile_Item_MetalWire"}
	};
	tools[] =
	{
		"Exile_Item_Pliers"
	};
	category = "Buildings";
};

class SandbagsLong: Exile_AbstractCraftingRecipe
{
	name = "Sandbags Long";
	pictureItem = "Land_BagFence_Long_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_BagFence_Long_F_Kit"}
	};
	requiresFire = 0;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{1, "Exile_Item_Sand"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	category = "Walls";
};

class SandbagCorner: Exile_AbstractCraftingRecipe
{
	name = "Sandbag Corner";
	pictureItem = "Land_BagFence_Corner_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_BagFence_Corner_F_Kit"}
	};
	requiresFire = 0;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{1, "Exile_Item_Sand"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	category = "Walls";
};

class LandContainer: Exile_AbstractCraftingRecipe
{
	name = "LandContainer";
	pictureItem = "Land_Cargo20_military_green_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Cargo20_military_green_F_Kit"}
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{6, "Exile_Item_MetalBoard"},
		{2, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Screwdriver"
	};
	category = "Storages";
};

class Ammobox: Exile_AbstractCraftingRecipe
{
	name = "Ammobox";
	pictureItem = "Land_Pallet_MilBoxes_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Pallet_MilBoxes_F_Kit"}
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{1, "Exile_Item_MetalBoard"},
		{1, "Exile_Item_StorageCrateKit"},
		{2, "Exile_Item_JunkMetal"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Foolbox"
	};
	category = "Storages";
};

class Watercooler: Exile_AbstractCraftingRecipe
{
	name = "Water Cooler";
	pictureItem = "Land_WaterCooler_01_new_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_WaterCooler_01_new_F_Kit"}
	};
	requiresFire = 0;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{4, "Exile_Item_MetalBoard"},
		{1, "Exile_Item_WaterBarrelKit"},
		{1, "Exile_Item_MetalScrews"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Screwdriver"
	};
	category = "Supply";
};

class CncBarrier: Exile_AbstractCraftingRecipe
{
	name = "Concrete Barrier";
	pictureItem = "Land_CncBarrier_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_CncBarrier_F_Kit"},
		{1,"Exile_Item_WaterCanisterEmpty"},
		{1,"Exile_Item_FuelCanisterEmpty"}
	};
	requiresFire = 0;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{1, "Exile_Item_Cement"},
		{1, "Exile_Item_Sand"},
		{1, "Exile_Item_FuelCanisterFull"},
		{1, "Exile_Item_WaterCanisterDirtyWater"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "Street Stuff";
};

class Stonewall: Exile_AbstractCraftingRecipe
{
	name = "Stone Wall";
	pictureItem = "Land_Stone_4m_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Stone_4m_F_Kit"}
	};
	requiresFire = 0;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{1, "Exile_Item_Cement"},
		{1, "Exile_Item_Sand"}
	};
	tools[] =
	{
		"Exile_Item_Shovel"
	};
	requiresConcreteMixer = 1;
	category = "Walls";
};

class Stonegate: Exile_AbstractCraftingRecipe
{
	name = "Stone Gate";
	pictureItem = "Land_Stone_Gate_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_Stone_Gate_F_Kit"}
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{1, "Exile_Item_MetalPole"},
		{1, "Exile_Item_MetalBoard"},
		{1, "Exile_Item_Cement"},
		{1, "Exile_Item_Sand"}
	};
	tools[] =
	{
		"Exile_Item_Shovel",
		"Exile_Item_Grinder"
	};
	requiresConcreteMixer = 1;
	category = "Walls";
};

class PierLadder: Exile_AbstractCraftingRecipe
{
	name = "Ladder";
	pictureItem = "PierLadder_F_Kit";
	returnedItems[] = 
	{
		{1, "PierLadder_F_Kit"}
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{3, "Exile_Item_MetalPole"},
		{2, "Exile_Item_JunkMetal"}
	};
	tools[] =
	{
		"Exile_Item_Grinder"
	};
	category = "Misc";
};
/*
class CamoNetOPFORopen: Exile_AbstractCraftingRecipe  Removed
{
	name = "CamoNet OPFOR open";
	pictureItem = "CamoNet_OPFOR_open_F_Kit";
	returnedItems[] = 
	{
		{1, "CamoNet_OPFOR_open_F_Kit"}
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{2, "Exile_Item_MetalPole"},
		{1, "Exile_Item_DuctTape"},
		{1, "Exile_Item_MetalWire"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Pliers"
	};
	category = "Tents";
};

class CamoNetINDPopen: Exile_AbstractCraftingRecipe  Removed
{
	name = "CamoNet INDP open";
	pictureItem = "CamoNet_INDP_open_F_Kit";
	returnedItems[] = 
	{
		{1, "CamoNet_INDP_open_F_Kit"}
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{2, "Exile_Item_MetalPole"},
		{1, "Exile_Item_DuctTape"},
		{1, "Exile_Item_MetalWire"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Pliers"
	};
	category = "Tents";
};

class CamoNetBLUFORopen: Exile_AbstractCraftingRecipe  Removed
{
	name = "CamoNet BLUFOR open";
	pictureItem = "CamoNet_BLUFOR_open_F_Kit";
	returnedItems[] = 
	{
		{1, "CamoNet_BLUFOR_open_F_Kit"}
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{2, "Exile_Item_MetalPole"},
		{1, "Exile_Item_DuctTape"},
		{1, "Exile_Item_MetalWire"}
	};
	tools[] =
	{
		"Exile_Item_Grinder",
		"Exile_Item_Pliers"
	};
	category = "Tents";
};*/

class Barrier1: Exile_AbstractCraftingRecipe  //thank you MrDynamite for sharing better Receipideas :)
{
    name = "Barrier";
    pictureItem = "Land_HBarrier_1_F_Kit";
    returnedItems[] =
    {
        {1, "Land_HBarrier_1_F_Kit"}
    };
    requiresFire = 0;
    requiredInteractionModelGroup = "WorkBench";
    components[] =
    {
        {1, "Exile_Item_Sand"}, // Change
		{1, "Exile_Item_MetalWire"}
    };
	tools[] =
	{
		"Exile_Item_Pliers"
	};
	category = "Walls";
};

class Barrier3: Exile_AbstractCraftingRecipe
{
    name = "Barrier3";
    pictureItem = "Land_HBarrier_3_F_Kit";
    returnedItems[] =
    {
        {1, "Land_HBarrier_3_F_Kit"}
    };
    requiresFire = 0;
    requiredInteractionModelGroup = "WorkBench";
    components[] =
    {
		{2, "Exile_Item_Sand"}, // Change
		{1, "Exile_Item_MetalWire"}
    };
	tools[] =
	{
		"Exile_Item_Pliers"
	};
	category = "Walls";
};

class Barrier5: Exile_AbstractCraftingRecipe
{
    name = "Barrier5";
    pictureItem = "Land_HBarrier_5_F_Kit";
    returnedItems[] =
    {    
        {1, "Land_HBarrier_5_F_Kit"}
    };
    requiresFire = 0;
    requiredInteractionModelGroup = "WorkBench";
    components[] =
    {
		{3, "Exile_Item_Sand"}, // Change
		{1, "Exile_Item_MetalWire"}
    };
	tools[] =
	{
		"Exile_Item_Pliers"
	};
	category = "Walls";
};

class SandbagBarrierBig4m: Exile_AbstractCraftingRecipe
{
    name = "Sandbag Barrier Big 4m";
    pictureItem = "Land_HBarrierWall4_F_Kit";
    returnedItems[] =
    {
        {1, "Land_HBarrierWall4_F_Kit"}
    };
    requiresFire = 0;
    requiredInteractionModelGroup = "WorkBench";
    components[] =
    {
        {1, "Land_HBarrier_3_F_Kit"},
		{2, "Exile_Item_Sand"}, // Change
		{2, "Exile_Item_MetalWire"}
    };
	tools[] =
	{
		"Exile_Item_Pliers"
	};
	category = "Walls";
};

class SandbagBarrierBig6m: Exile_AbstractCraftingRecipe
{
    name = "Sandbag Barrier Big 6m";
    pictureItem = "Land_HBarrierWall6_F_Kit";
    returnedItems[] =
    {
        {1, "Land_HBarrierWall6_F_Kit"}
    };
    requiresFire = 0;
    requiredInteractionModelGroup = "WorkBench";
    components[] =
    {
        {1, "Land_HBarrierWall4_F_Kit"},
		{2, "Exile_Item_Sand"}, // Change
		{2, "Exile_Item_MetalWire"}
    };
	tools[] =
	{
		"Exile_Item_Pliers"
	};
	category = "Walls";
};


class BagBunker: Exile_AbstractCraftingRecipe
{
	name = "BagBunker";
	pictureItem = "Land_BagBunker_Tower_F_Kit";
	returnedItems[] = 
	{
		{1, "Land_BagBunker_Tower_F_Kit"}
	};
	requiresFire = 1;
	requiredInteractionModelGroup = "WorkBench";
	components[] = 
	{
		{3, "Exile_Item_Sand"},
		{1, "Exile_Item_MetalBoard"},
		{2, "Exile_Item_MetalPole"},
		{2, "Exile_Item_WoodPlank"},
		{5, "Exile_Item_MetalWire"}
	};
	tools[] =
	{
		"Exile_Item_Pliers"
	};
	category = "Buildings";
};
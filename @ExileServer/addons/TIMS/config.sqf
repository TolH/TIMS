//============================================////============================================//
//=====================================/*-CONFIG START-*/=====================================//
//============================================////============================================//

//==================================//
	/*MAIN_SYSTEM_CONFIG*/
		INVASION_RESET_TIMER		= 120;							// INVASION RESET TIMER. (Default 1800=30MINUTES).
//==================================// 
	/*LOOTS_CONFIG*/
		USE_DDR_LOOT				= 1;							// USE DDR MOD LOOT TABLE
//==================================//
	/*CRATES_CONFIG*/
		CRATE_TYPE					= "Exile_Container_SupplyBox";	// DEFAULT = "Exile_Container_SupplyBox" FOR MOUNTING OPTION.
		CRATE_DAMAGE				= true;							// WILL CRATE BE ABLE TO TAKE DAMAGE (DEFAULT = true).
		CRATE_MONEY					= 20000;						// RANDOM AMOUNT OF MONEY IN THE CRATE. THIS IS THE MAX AMOUNT TO HAVE IN A CRATE.
		CRATE_MASS					= 100;							// CHANGE THE MASS OF THE CRATE. SET A HIGH AMOUNT AND VEHICLES WILL MOVE SLOWER.
		CRATE_TROPHY_CHANCE			= 100;							// THE CHANCE IN % TROPHY WILL SPAWN IN CRATE. (DEFAULT =35%).
//==================================// 
	/*AI_OPTIONNAL CONFIGS*/
		//AI_ROCKET_EQUIP_CHANCE	= 35;							// THE CHANCE IN % AI WILL SPAWN WITH A ROCKET LAUNCHER. (DEFAULT =25%).
		AI_MONEY_DROP				= 350;							// RANDOM MAX AMOUNT OF MONEY IN THE AI INVENTORY.
//==================================// 
	/*AI_VEHICLES SELECTION CONFIGS*/	
		TANK_AI_LIST 				= ["O_MBT_02_cannon_F","O_T_MBT_02_cannon_ghex_F","O_MBT_04_cannon_F","O_APC_Tracked_02_cannon_F","O_MBT_02_arty_F","O_APC_Tracked_02_AA_F","O_T_MBT_04_command_F","O_MBT_04_command_F"];
		HELI_AI_LIST 				= ["O_Heli_Light_02_F"];
		HELI_TRANSPORT_AI_LIST 		= ["O_Heli_Transport_04_covered_F"];
		PLANE_AI_LIST 				= ["O_Plane_CAS_02_F"];
		PLANE_TRANSPORT_AI_LIST		= ["O_T_VTOL_02_infantry_dynamicLoadout_F"];
		BOAT_AI_LIST 				= ["O_T_Boat_Armed_01_hmg_F"];
//==================================//
	/*AI_SKILLS CONFIGS*/
		//SET BETWEEN (0.0 TO 1.0 BEING MAX VALUE)
		AI_SKILLS_HELIPARADROP 		= 1;
		AI_SKILLS_AA_UNIT 			= 1;
		AI_SKILLS_MORTAR_UNIT 		= 1;
		AI_SKILLS_TANK 				= 1;
		AI_SKILLS_PLANE 			= 1;
		AI_SKILLS_HELI 				= 1;
//==================================//
//============================================////============================================//
//======================================/*-CONFIG END-*/======================================//
//============================================////============================================//^

//============================================////============================================//
//=====================================/*-CONFIG START-*/=====================================//
//============================================////============================================//

//==================================//
	/*MAIN SYSTEM CONFIG*/
		INVASION_RESET_TIMER		= 30;							// INVASION RESET TIMER. (Default 1800=30MINUTES).
//==================================// 
	/*LOOTS CONFIG*/
		USE_DDR_LOOT				= 1;							// USE DDR MOD LOOT TABLE
//==================================//
		/*CRATES CONFIG*/
		CRATE_TYPE					= "Exile_Container_SupplyBox";	// DEFAULT = "Exile_Container_SupplyBox" FOR MOUNTING OPTION.
		CRATE_DAMAGE				= true;							// WILL CRATE BE ABLE TO TAKE DAMAGE (DEFAULT = true).
		CRATE_MONEY					= 20000;						// RANDOM AMOUNT OF MONEY IN THE CRATE. THIS IS THE MAX AMOUNT TO HAVE IN A CRATE.
		CRATE_MASS					= 100;							// CHANGE THE MASS OF THE CRATE. SET A HIGH AMOUNT AND VEHICLES WILL MOVE SLOWER.
		CRATE_TROPHY_CHANCE			= 100;							// THE CHANCE IN % TROPHY WILL SPAWN IN CRATE. (DEFAULT =35%).
//==================================// 
	/*AI OPTIONNAL CONFIGS*/
		AI_ROCKET_EQUIP_CHANCE		= 35;							// THE CHANCE IN % AI WILL SPAWN WITH A ROCKET LAUNCHER. (DEFAULT =25%).
		AI_MONEY_DROP				= 350;							// RANDOM MAX AMOUNT OF MONEY IN THE AI INVENTORY.
		TANK_AI_LIST 				= ["O_MBT_02_cannon_F","O_APC_Tracked_02_cannon_F","O_MBT_02_arty_F"];
//==================================//
	/*AI SKILLS CONFIGS*/
		//SET BETWEEN (0.0 TO 1.0 BEING MAX VALUE)
		AI_SKILLS_HELIPARADROP 		= 1;
		AI_SKILLS_AA_UNIT 			= 1;
		AI_SKILLS_MORTAR_UNIT 		= 1;
		AI_SKILLS_TANK 				= 1;

//==================================//
//============================================////============================================//
//======================================/*-CONFIG END-*/======================================//
//============================================////============================================//^

//============================================////============================================//
//=====================================/*-CONFIG START-*/=====================================//
//============================================////============================================//

//==================================//
	/*MAIN SYSTEM CONFIG*/
		//NEED_ONLINE_PLAYER 			= 1;						// NEED THIS AMOUNT OF PLAYER TO START SPAWNING A RANDOM CRATE (Default 1 PLAYER).
		INVASION_RESET_TIMER		= 600;							// INVASION RESET TIMER. (Default 1800=30MINUTES).
		//CRATE_RESET_TIMER	        = 1800;							// HOW MUCH TIME TO WAIT BEFORE REMOVING A SPAWNED CRATE BEFORE SPAWNING A NEW ONE. (Default 1800=30MINUTES)
//==================================//
	/*MAIN TOWN INVASION CONFIG*/


//==================================// 
	/*CRATES & LOOTS CONFIG*/
		CRATE_TYPE					= "Exile_Container_SupplyBox";	// DEFAULT = "Exile_Container_SupplyBox" FOR MOUNTING OPTION.
		CRATE_DAMAGE				= true;							// WILL CRATE BE ABLE TO TAKE DAMAGE (DEFAULT = true).
		CRATE_MONEY					= 20000;						// RANDOM AMOUNT OF MONEY IN THE CRATE. THIS IS THE MAX AMOUNT TO HAVE IN A CRATE.
		CRATE_MASS					= 100;							// CHANGE THE MASS OF THE CRATE. SET A HIGH AMOUNT AND VEHICLES WILL MOVE SLOWER.
		CRATE_TROPHY_CHANCE			= 70;							// THE CHANCE IN % TROPHY WILL SPAWN IN CRATE. (DEFAULT =35%).
		//LOOT_TRACKER 				= 0;							// ENABLE OR DISABLE MOVING CRATE MARKER ON THE MAP. (Default 0=Disable).
		//CRATE_SMOKE_FLARE   		= 500;							// START FLARE AND SMOKE IF PLAYER IS AT "THIS" DISTANCE IN METERS OF THE CRATE.
//==================================// 
	/*AI CONFIG*/
		AI_ROCKET_EQUIP_CHANCE		= 25;							// THE CHANCE IN % AI WILL SPAWN WITH A ROCKET LAUNCHER. (DEFAULT =25%).
		AI_MONEY_DROP				= 350;							// RANDOM MAX AMOUNT OF MONEY IN THE AI INVENTORY.

//==================================// 
	/*AI_SKILLS CONFIGS*/
		//SET BETWEEN (0.0 TO 1.0 BEING MAX VALUE)
		AI_SKILLS_HELIPARADROP 		= [ 1/*aimingAccuracy*/, 1/*aimingShake*/, 1/*aimingSpeed*/, 1/*spotDistance*/, 1/*spotTime*/, 1/*courage*/, 1/*commanding*/, 1/*general*/, 1/*endurance*/, 1/*reloadspeed*/];
		AI_SKILLS_FILLHOUSE 		= [ 1/*aimingAccuracy*/, 1/*aimingShake*/, 1/*aimingSpeed*/, 1/*spotDistance*/, 1/*spotTime*/, 1/*courage*/, 1/*commanding*/, 1/*general*/, 1/*endurance*/, 1/*reloadspeed*/];
		AI_SKILLS_MIL_UNIT 			= [ 1/*aimingAccuracy*/, 1/*aimingShake*/, 1/*aimingSpeed*/, 1/*spotDistance*/, 1/*spotTime*/, 1/*courage*/, 1/*commanding*/, 1/*general*/, 1/*endurance*/, 1/*reloadspeed*/];
		AI_SKILLS_MIL_TANK 			= [ 1/*aimingAccuracy*/, 1/*aimingShake*/, 1/*aimingSpeed*/, 1/*spotDistance*/, 1/*spotTime*/, 1/*courage*/, 1/*commanding*/, 1/*general*/, 1/*endurance*/, 1/*reloadspeed*/];
		AI_SKILLS_MIL_AIR			= [ 1/*aimingAccuracy*/, 1/*aimingShake*/, 1/*aimingSpeed*/, 1/*spotDistance*/, 1/*spotTime*/, 1/*courage*/, 1/*commanding*/, 1/*general*/, 1/*endurance*/, 1/*reloadspeed*/];
	
//==================================//

//============================================////============================================//
//======================================/*-CONFIG END-*/======================================//
//============================================////============================================//^

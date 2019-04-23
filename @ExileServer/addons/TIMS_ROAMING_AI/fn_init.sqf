//============================================////============================================//
	//HEADSHOT VARS
		TIMS_HEADSHOT_CHECK = 0;
	//CUSTOM MAP STUFF
		map_script1 = [] execVM "TIMS_ROAMING_AI\Map\norry.sqf";
		waitUntil {scriptDone map_script1};
		diag_log "-=TIMS_ROAMING_AI=-: CUSTOM MAP STUFF SPAWNED!";
	//WAIT 1 MINUTE BEFORE STARTING TIMS AFTER A SERVER RESTART.
		uiSleep 45;
	//LOAD CONFIG
		config_script1 = [] execVM "TIMS_ROAMING_AI\config.sqf";
		waitUntil {scriptDone config_script1};
		diag_log "=======================================================================";
		diag_log "-=TIMS_ROAMING_AI=-: config File Loaded!";
	//PRECALL LOOT+MISC STUFF
		call compile preprocessFileLineNumbers "TIMS_ROAMING_AI\Loot\Loot_List\Loot_EXILE_WEAPONS_List.sqf";
		call compile preprocessFileLineNumbers "TIMS_ROAMING_AI\Loot\Loot_List\Loot_RHS_WEAPONS_List.sqf";
		call compile preprocessFileLineNumbers "TIMS_ROAMING_AI\Loot\Loot_List\Loot_SCOPES_List.sqf";
		call compile preprocessFileLineNumbers "TIMS_ROAMING_AI\Loot\Loot_List\Loot_MEDIC_List.sqf";
		call compile preprocessFileLineNumbers "TIMS_ROAMING_AI\Loot\Loot_List\Loot_CONSTRUCTION_List.sqf";
		call compile preprocessFileLineNumbers "TIMS_ROAMING_AI\Loot\Loot_List\Loot_TOOLS_List.sqf";
		call compile preprocessFileLineNumbers "TIMS_ROAMING_AI\Loot\Loot_List\Loot_BACKPACKS_List.sqf";
		call compile preprocessFileLineNumbers "TIMS_ROAMING_AI\Loot\Loot_List\Loot_TROPHY_List.sqf";
		call compile preprocessFileLineNumbers "TIMS_ROAMING_AI\Loot\Loot_List\Loot_DDR_List.sqf";
		diag_log "-=TIMS_ROAMING_AI=-: Loot+Misc Loaded!";
		call compile preprocessFileLineNumbers "TIMS_ROAMING_AI\short.sqf";
		diag_log "-=TIMS_ROAMING_AI=-: Short File Loaded!";
	//LOAD MY CUSTOM CRAP ON ALTAS WITH BOAT AND JETS
		if (START_FREE_VEHICLES_SPAWN isEqualTo 1) then
		{
			//ACTIVATED FROM OPTIONS
			RESPAWN_VEHICLE_STARTED = 1;
			hqmain_script1 = [] execVM "TIMS_ROAMING_AI\Map\-=HQ_MAIN=-.sqf";
			waitUntil {scriptDone hqmain_script1};
			diag_log "-=TIMS_ROAMING_AI=-: CUSTOM MAP HQ SPAWNED AT SERVER START!";
		}
		else 
		{
			//NOT ACTIVATED BY OPTION
			HQALREADYSPAWNED = 0;
		};
		diag_log "=======================================================================";
	//WAIT 30SECONDS THEN CHECK IF ROAMING ACTIVATED
		if (AI_ROAMING_ACTIVATED isEqualTo 1) then
		{
			uiSleep 30;
			START_ROAMING_FLYING_PATROL = [] execVM "TIMS_ROAMING_AI\Roaming_AI\-=ROAMING_AI=-.sqf";
		};
	//CHECK IF TIMS_MISSION IS ACTIVATED
		if (TIMS_MISSION_ACTIVATED isEqualTo 1) then
		{
			diag_log "-=TIMS_MISSION=-: TIMS_MISSION ACTIVATED FROM CONFIG! STARTING MISSIONS...";
			diag_log "=======================================================================";
			uiSleep 30;
			START_TIMS_MISSION = [] execVM "TIMS_ROAMING_AI\Missions\init_Missions.sqf";
		};
		//WAIT BEFORE LOADING PATROLLING STUFF (-=ROAMING_AI=-.sqf NEEDS TO BE LOADED FIRST)
		uiSleep 10;
	//ACITVATE CIVILLIAN ACTIVITY
		_nil = [] execVM "TIMS_ROAMING_AI\cos\cosInit.sqf";
		call compile preprocessFileLineNumbers "TIMS_ROAMING_AI\CommonLib\CommonLib.sqf";
		call compile preprocessFileLineNumbers "TIMS_ROAMING_AI\PatrolledAreas\Server\Functions.sqf";
		call compile preprocessFileLineNumbers "TIMS_ROAMING_AI\PatrolledAreas\ConfigAndStart.sqf";
		diag_log "-=TIMS_ROAMING_AI=-: CIVILIAN ACTIVITY Loaded!";
		diag_log "-=TIMS_ROAMING_AI=-: PATROLLEDAREAS Loaded!";
//============================================////============================================//
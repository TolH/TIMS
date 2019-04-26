//============================================////============================================//
	//WAIT 1 MINUTE BEFORE STARTING TIMS AFTER A SERVER RESTART.
		uiSleep 60;
	//LOAD CONFIG
		config_script = [] execVM "TIMS\config.sqf";
		waitUntil {scriptDone config_script};
		diag_log "=======================================================================";
		diag_log "-=T.I.M.S=-: config File Loaded!";
	//CALL STUFF
		call compile preprocessFileLineNumbers "TIMS\Loot\Loot_List\Loot_WEAPONS_List.sqf";
		call compile preprocessFileLineNumbers "TIMS\Loot\Loot_List\Loot_MEDIC_List.sqf";
		call compile preprocessFileLineNumbers "TIMS\Loot\Loot_List\Loot_CONSTRUCTION_List.sqf";
		call compile preprocessFileLineNumbers "TIMS\Loot\Loot_List\Loot_TOOLS_List.sqf";
		call compile preprocessFileLineNumbers "TIMS\Loot\Loot_List\Loot_BACKPACKS_List.sqf";
		call compile preprocessFileLineNumbers "TIMS\Loot\Loot_List\Loot_TROPHY_List.sqf";
		if (USE_DDR_LOOT isEqualTo 1) then 
		{
			call compile preprocessFileLineNumbers "TIMS\Loot\Loot_List\Loot_DDR_List.sqf";
		};
		diag_log "-=T.I.M.S=-: Loot+Misc Loaded!";
	//CALL LOOT RATE/QUALITY
		call compile preprocessFileLineNumbers "TIMS\functions.sqf";
		diag_log "-=T.I.M.S=-: Functions File Loaded!";
		diag_log "=======================================================================";
		//ExecVM "TIMS\missions\init.sqf";
//============================================////============================================//

//============================================////============================================//
//									 -T.I.M.S- (WIP) by TolH
//									   -=CAPTURE & DEFEND=-	
//			MISSION OBJECTIVES:
//          	1: 
//============================================////============================================//
private ["_Missionmarker1","_Missionmarker2","_Missionmarker3","_SPWradioTower","_TowerMarker","_towns","_RandomTownPosition"];
//============================================////============================================//
	//MISSION RUNNING CHECK
	MISSION_NOTIFICATION_MSG = "CAPTURE_DEFEND_MISSION_START_NOTIFICATION"; publicVariable "MISSION_NOTIFICATION_MSG";
	SFX_CUSTOM = "AICAPTURETOWER"; publicVariable "SFX_CUSTOM";
		CAPTURE_DEFEND_STARTED = 1;
		diag_log "=======================================================================";
		diag_log "-=T.I.M.S=-: Mission -Capture_Defend.sqf- Started";
		diag_log "=======================================================================";
	//SELECT A LOCATION
		_towns = nearestLocations [position player, ["NameVillage","NameCity","NameCityCapital"], 40000];
		_RandomTownPosition = position (_towns select (floor (random (count _towns))));
//============================================////============================================//
	//CREATE MISSION MARKER
		_Missionmarker1 = createMarker ["Missionmarker1", _RandomTownPosition];
		//
		_Missionmarker2 = createMarker ["Missionmarker2", getMarkerPos "Missionmarker1"];
		"Missionmarker2" setMarkerColor "ColorRed";
		"Missionmarker2" setMarkerShape "ELLIPSE";
		"Missionmarker2" setMarkerBrush "Border";
		"Missionmarker2" setMarkerSize [1200,1200];
		"Missionmarker2" setMarkerAlpha 1.0;
		//
		_Missionmarker3 = createMarker ["Missionmarker3", getMarkerPos "Missionmarker1"];
		"Missionmarker3" setMarkerColor "ColorGreen";
		"Missionmarker3" setMarkerShape "ELLIPSE";
		"Missionmarker3" setMarkerBrush "Border";
		"Missionmarker3" setMarkerSize [1300,1300];
		"Missionmarker3" setMarkerAlpha 1.0;
	//PAUSE MISSION UNTIL PLAYER ARE AT LEAST 1250m OF MARKER
		["Missionmarker1", 1250, "ColorRed"] ExecVM PAUSE_MISSION;
		waitUntil {uiSleep 3; ANIMEMARKER isEqualTo 0};
		deleteMarker "Missionmarker3";
//============================================////============================================//
	//CREATE MARKERS + AICOUNTER
		"Missionmarker1" setMarkerColor "ColorOrange";
		"Missionmarker1" setMarkerShape "ELLIPSE";
		"Missionmarker1" setMarkerBrush "SolidFull";
		"Missionmarker1" setMarkerSize [1200,1200];
		"Missionmarker1" setMarkerAlpha 0.2;
		//CREATE AI_COUNTER MARKER
		_AI_COUNTER = createMarker ["AI_COUNTER", getMarkerPos "Missionmarker1"];
		"AI_COUNTER" setMarkerColor "ColorGrey";
		"AI_COUNTER" setMarkerType "hd_dot";
//============================================////============================================//
	//POSITION OF MISSION OBJECTS, AI, VEHICLES AND LOOTS
		_kRandSpawnPos = [(getMarkerPos "Missionmarker1"), 1, 600, 0.1, 0, 200, 0] call BIS_fnc_findSafePos;	//RADIOTOWER
		_LootBox_1 = [(getMarkerPos "Missionmarker1"), 25, 100, 1, 0, 150, 0] call BIS_fnc_findSafePos;	//_LootBox_1
		_LootBox_2 = [(getMarkerPos "Missionmarker1"), 10, 75, 1, 0, 150, 0] call BIS_fnc_findSafePos;	//_LootBox_2
//============================================////============================================//
	//CREATE RADIOTOWER
		_SPWradioTower = "Land_TTowerBig_2_F" createVehicle _kRandSpawnPos;
		waitUntil {uiSleep 1; alive _SPWradioTower};
		_SPWradioTower setVectorUp [0,0,1];
		_SPWradioTower allowDamage false;
	//MARKER AT RADIOTOWER
		_TowerMarker = createMarker ["Radio-Tower", getPos _SPWradioTower];
		"Radio-Tower" setMarkerColor "ColorGrey";
		"Radio-Tower" setMarkerType "loc_Transmitter";
		"Radio-Tower" setMarkerText " -RadioTower-";
//============================================////============================================//
	//CREATE ALL CRATES
		//CRATE TYPE
			//_Type_FuelTank = "B_Slingload_01_Fuel_F";
			_Type_AmmoBox = "B_CargoNet_01_ammo_F";
		//CRATE #1
			_supplyBox1 = createVehicle [_Type_AmmoBox, _LootBox_1, [], 0, "CAN_COLLIDE"];
			_supplyBox1 allowDamage false;
			_supplyBox1 enableSimulation true;
		//CRATE #2
			_supplyBox2 = createVehicle [_Type_AmmoBox, _LootBox_2, [], 0, "CAN_COLLIDE"];
			_supplyBox2 allowDamage false;
			_supplyBox2 enableSimulation true;
	//CLEAR CRATE ITEMS
		//CRATE #1
			clearBackpackCargoGlobal _supplyBox1;
			clearWeaponCargoGlobal _supplyBox1;
			clearMagazineCargoGlobal _supplyBox1;
			clearItemCargoGlobal _supplyBox1;
		//CRATE #2
			clearBackpackCargoGlobal _supplyBox2;
			clearWeaponCargoGlobal _supplyBox2;
			clearMagazineCargoGlobal _supplyBox2;
			clearItemCargoGlobal _supplyBox2;
//============================================////============================================//
	//MESSAGE
		SFX_CUSTOM = "NEWMISSIONSFX"; publicVariable "SFX_CUSTOM";
		["Capture the radioTower, defend it then kill the remaining forces!", 10, [[0,0,0,0.2],[1,1,1,0.95]]] remoteExec ["Epoch_message",-2]; // -2 targets everyone but the server  ["the message", 6, [[0,0,0,0.2],[1,1,1,0.95]]]
//============================================////============================================//
	//SPAWN ALL ONFOOT UNITS
		//[LVgroup1] AI IN HOUSES
			_LVgroup1 = ["Missionmarker1",3,false,1,[12,0],200,0.1,nil,nil,1,["TOHL_HARD"]] execVM "TIMS\LV\fillHouse.sqf";
		//[LVgroup2] GROUND PATROL AROUND MISSION MARKER
			_LVgroup2 = ["Missionmarker1",3,900,[true,false],[false,false,false],false,[12,0],[0,0],0.1,nil,nil,2,true,false,["TOHL_HARD"]] execVM "TIMS\LV\militarize.sqf";
			uiSleep 3;//WAIT 3 SECONDS
	//SPAWN ALL VEHICLES UNITS
		//[LVgroup3] VEHICLE PATROL
			_LVgroup3 = ["Missionmarker1",3,1000,[false,false],[true,false,false],false,[0,0],[2,0],0.1,nil,nil,3,true,false,["TOHL_HARD"]] execVM "TIMS\LV\militarize.sqf";
		//[LVgroup4] AIR PATROL
			_LVgroup4 = ["Missionmarker1",3,1150,[false,false],[false,false,true],false,[0,0],[2,0],0.1,nil,nil,4,true,false,["TOHL_HARD"]] execVM "TIMS\LV\militarize.sqf";
		//[LVgroup5] WATER PATROL
			//_LVgroup5 = ["Missionmarker1",3,1050,[false,false],[false,true,false],false,[0,0],[1,0],0.1,nil,nil,5,true,false,["TOHL_HARD"]] execVM "TIMS\LV\militarize.sqf";
//============================================////============================================//
	//WAIT 10 SECONDS BEFORE STARTING MAIN MISSION
		uiSleep 10;
//============================================////============================================//
	//CHANGING THIS WILL BREAK THE MISSION!!!
	//SET MISSION VARS
//============================================////============================================//
		//BONUS -=MP=-
		BONUS_MP_AI				 = 0; 				//AI BONUS MP (START AT 0)
		BONUS_MP_PL				 = 0; 				//PLAYERS BONUS MP (START AT 0)
		_AiCounter   			 = 1;				//MAIN MISSION LOOP 4 SECONDS CHECK
		AI_SF_CG_Timer   		 = 0;				//HELI_PARADROP TIMER CHECK						= 0,1,2 (Default 0)
		//DELETE CHECK
		AI_SF_CG_SPAWNED_WAVE_1	 = 0;				//HELI_PARADROP WAVE 1 SPAWNED? [LVgroup6]		= 0,1 	(Default 0)
		AI_SF_CG_SPAWNED_WAVE_2	 = 0;				//HELI_PARADROP WAVE 2 SPAWNED? [LVgroup7]		= 0,1 	(Default 0)
		AI_SF_CG_SPAWNED_WAVE_3	 = 0;				//HELI_PARADROP WAVE 3 SPAWNED? [LVgroup8]		= 0,1 	(Default 0)
		//RADIOTOWER VARS
		_RadioTowerOwnedByAI	 = 0;				//RadioTower CAPTURED BY AI 	= 1; 	(Default 0)
		_RadioTowerOwnedByPlayer = 0;				//RadioTower CAPTURED BY PLAYER = 1; 	(Default 0)
		RADIOTOWER_StartTimer 	 = 0;				//RADIOTOWER_TIMER 				= 0,1,2,3 (Default 0) 0=OFF 1=CHECK 2=AI 3=PLAYER
		RADIOTOWER_CLAIMED		 = 0;				//RADIOTOWER CLAIMED BY : 0=CHECK 1=AI 2=PLAYER
		//RTcountAI 			 = 0;				//RADIOTOWER AI TIMER
		//RTcountPL 			 = 0;				//RADIOTOWER PLAYER TIMER
		//SET AI_Counter Radius
		_radius 				 = 1250;			//_AiCount RADIUS
		_TowerRadius 			 = RT_CLAIM_RADIUS;	//_PlCount RADIUS
//============================================////============================================//
	//START TRACKING CRATE MARKERS IF ENABLED FROM CONFIG
		if (LOOT_TRACKER isEqualTo 1) then
		{
			[_supplyBox1, _supplyBox2] execVM LOOT_MARKER;
		};
//============================================////============================================//
//============================================////============================================//
	//START MISSION
		while {_AiCounter isEqualTo 1} do 
		{
		  //AICOUNTER
		  _AiCount = ({alive _x AND (side _x) isEqualTo resistance AND (_x distance getMarkerPos "Missionmarker1" < _radius)} count allunits);
		  //RADIOTOWER PLAYER+AI COUNTER
		  _RadioTowerPLCount = ({alive _x AND (side _x) isEqualTo east AND (_x distance getPos _SPWradioTower < _TowerRadius)} count allunits);
		  _RadioTowerAICount = ({alive _x AND (side _x) isEqualTo resistance AND (_x distance getPos _SPWradioTower < _TowerRadius)} count allunits);
		  uiSleep 4;
		  //CREATE AI_COUNTER MARKER
		  "AI_COUNTER" setMarkerText format ["(Ennemies left: (%1)", _AiCount];
			//RADIOTOWER CAPTURED BY AI
			if ((_RadioTowerAICount > _RadioTowerPLCount) && (_RadioTowerOwnedByAI isEqualTo 0) && (RADIOTOWER_CLAIMED isEqualTo 0)) then
			{
				SFX_CUSTOM = "AICAPTURETOWER"; publicVariable "SFX_CUSTOM";
				["AI's are attempting to capture the tower...", 5, [[0,0,0,0.2],[1,1,1,0.95]]] remoteExec ["Epoch_message",-2]; // -2 targets everyone but the server
				"Radio-Tower" setMarkerColor "ColorRed";
				"Radio-Tower" setMarkerText " (Capturing in progress by...: (AI's)";
				_RadioTowerOwnedByAI = 1;
				_RadioTowerOwnedByPlayer = 0;
				//CHECK IF TIMER IS ALREADY STARTED FIRST
				if (RADIOTOWER_StartTimer isEqualTo 0) then 
				{
					//START TIMER
					[] execVM RADIOTOWER_TIMER;
				};
				//
				if (TOWER_BAR_TEST isEqualTo 1) then 
				{
					Execute_Client_SQF = "TIMS\-=CAPTURE_DEFEND=-\AI_tower_Bar_progress.sqf"; publicVariable "Execute_Client_SQF";
					[] execVM Execute_Client_SQF;
				};
				//RESET TIMER
				RTcountAI = 0;
				RADIOTOWER_StartTimer = 2;
			};
			//RADIOTOWER CAPTURED BY PLAYER
			if ((_RadioTowerPLCount > _RadioTowerAICount) && (_RadioTowerOwnedByPlayer isEqualTo 0) && (RADIOTOWER_CLAIMED isEqualTo 0)) then
			{
				SFX_CUSTOM = "PLCAPTURETOWER"; publicVariable "SFX_CUSTOM";
				["Players are attempting to capture the tower...", 5, [[0,0,0,0.2],[1,1,1,0.95]]] remoteExec ["Epoch_message",-2]; // -2 targets everyone but the server
				"Radio-Tower" setMarkerColor "ColorBlue";
				"Radio-Tower" setMarkerText " (Capturing in progress by...: (Players)";
				_RadioTowerOwnedByAI = 0;
				_RadioTowerOwnedByPlayer = 1;
				//SEND IN CLAIMING_GROUP IF ENABLED. PLAYER ONLY FOR NOW
				if (CLAIMING_GROUP isEqualTo 1 && AI_SF_CG_Timer isEqualTo 0) then
				{
					//START HELI_PARADROP AI_SF_Claiming_Group
					AI_SF_CG_Timer = 1;
					//STARTING TIMER
					[] execVM AI_SF_CG;
				};
				//CHECK IF TIMER IS ALREADY STARTED FIRST
				if (RADIOTOWER_StartTimer isEqualTo 0) then 
				{
					//START TIMER
					[] execVM RADIOTOWER_TIMER;
					//SHOW PROGRESS BAR IF ENABLED
				};
				//
				if (TOWER_BAR_TEST isEqualTo 1) then 
				{
					Execute_Client_SQF = "TIMS\-=CAPTURE_DEFEND=-\PL_tower_Bar_progress.sqf"; publicVariable "Execute_Client_SQF";
					[] execVM Execute_Client_SQF;
				};
				//RESET TIMER
				RTcountPL = 0;
				RADIOTOWER_StartTimer = 3;
			};
			//ALL ENNEMIES KILLED AND RADIOTOWER CLAIMED BY PLAYER. ENDING MISSION
			if (_AiCount < 25 && RADIOTOWER_CLAIMED >= 1) then 
			{
				//CHANGE AI_COUNTER MARKER
				"AI_COUNTER" setMarkerColor "ColorOrange";
				"AI_COUNTER" setMarkerText "All objectives completed. Well done soldiers!";
				AI_SF_CG_Timer = 0;
				_AiCounter = 0;
			};
		};
//============================================////============================================//
//============================================////============================================//
	//WAIT UNTIL AI ELEMINATED (< 5)
		waitUntil {uiSleep 5; _AiCounter isEqualTo 0};
	//MESSAGE
		SFX_CUSTOM = "PLCAPTURETOWER"; publicVariable "SFX_CUSTOM";
		["All objectives completed. Well done soldiers!", 6, [[0,0,0,0.2],[1,1,1,0.95]]] remoteExec ["Epoch_message",-2]; // -2 targets everyone but the server
		"Missionmarker1" setMarkerColor "ColorGreen";
		//DELETE ALIVE AI GROUP
		nul1 = [LVgroup1] execVM "TIMS\LV\LV_functions\LV_fnc_removeGroupV2.sqf";
		nul2 = [LVgroup2] execVM "TIMS\LV\LV_functions\LV_fnc_removeGroupV2.sqf";
		nul3 = [LVgroup3] execVM "TIMS\LV\LV_functions\LV_fnc_removeGroupV2.sqf";
		nul4 = [LVgroup4] execVM "TIMS\LV\LV_functions\LV_fnc_removeGroupV2.sqf";
		//nul5 = [LVgroup5] execVM "TIMS\LV\LV_functions\LV_fnc_removeGroupV2.sqf";
		//DELETE AI_SpecialForce_Claiming_Group IF SPAWNED AND ENABLED FROM CONFIG
		if (CLAIMING_GROUP isEqualTo 1) then
		{
			if (AI_SF_CG_SPAWNED_WAVE_1 isEqualTo 1) then
			{
				nul6 = [LVgroup6] execVM "TIMS\LV\LV_functions\LV_fnc_removeGroupV2.sqf";
			};
			if (AI_SF_CG_SPAWNED_WAVE_2 isEqualTo 1) then
			{
				nul7 = [LVgroup7] execVM "TIMS\LV\LV_functions\LV_fnc_removeGroupV2.sqf";
			};
			if (AI_SF_CG_SPAWNED_WAVE_3 isEqualTo 1) then
			{
				nul8 = [LVgroup8] execVM "TIMS\LV\LV_functions\LV_fnc_removeGroupV2.sqf";
			};
		};
//============================================////============================================//
	uiSleep 10;
	SFX_CUSTOM = "PLCAPTURETOWER"; publicVariable "SFX_CUSTOM";
	["Looks like they left some loot behind! Look at your map.", 10, [[0,0,0,0.2],[1,1,1,0.95]]] remoteExec ["Epoch_message",-2]; // -2 targets everyone but the server
	//CREATE ALL CRATES MARKERS
		//(Crate_1)
			_Crate_1 = createMarker ["Crate_1", getPos _supplyBox1];
			"Crate_1" setMarkerSize [0.8,0.8];
			"Crate_1" setMarkerColor "ColorKhaki";
			"Crate_1" setMarkerType "respawn_para";
			"Crate_1" setMarkerText "";		//Construction loot
		//(Crate_2)
			_Crate_2 = createMarker ["Crate_2", getPos _supplyBox2];
			"Crate_2" setMarkerSize [0.8,0.8];
			"Crate_2" setMarkerColor "ColorKhaki";
			"Crate_2" setMarkerType "respawn_para";
			"Crate_2" setMarkerText "";		//Weapons loot
	//LOOT TEST (3 TYPES OF 3 DIFFERENT QUALITY)
		//_Crate_1
		[_supplyBox1,"CONSTRUCTION"] ExecVM NORMAL_Loot_Setup;
		//_Crate_2
		[_supplyBox2,"WEAPONS"] ExecVM HIGH_Loot_Setup;
		[_supplyBox2,"MEDIC"] ExecVM LOW_Loot_Setup;
//============================================////============================================//
	//WAIT X SECONDS BEFORE DELETING EVERYTHING
		uiSleep MISSION_CLEAN_TIME;
		LOOT_TRACKER = 0;
		//DELETE SPECIALS
			if (!alive _SPWradioTower) then
			{
				_wreck = getMarkerPos "Radio-Tower" nearestObject "Land_TTowerBig_2_ruins_F";
				deletevehicle _wreck;
				//WAIT OR WONT DELETE
				uiSleep 1;
			};
		//DELETE LOOTBOX AND OBJECTS
			deletevehicle _supplyBox1;
			deletevehicle _supplyBox2;
			deleteVehicle _SPWradioTower;
		//DELETE MARKER
			deleteMarker "Missionmarker1";
			deleteMarker "Missionmarker2";
			deleteMarker "Radio-Tower";
			deleteMarker "AI_COUNTER";
			deleteMarker "Crate_1";
			deleteMarker "Crate_2";
		//REMOVE DEAD AI GROUP WHEN 1000 METERS OF PLAYER
			nul = [1000] execVM "TIMS\LV\LV_functions\LV_fnc_removeDead.sqf";
//============================================////============================================//
	//MISSION ENDED
		diag_log "-=T.I.M.S=-: Mission -Invasion.sqf- Ended";
		//MISSION ENDED CHECK
			CAPTURE_DEFEND_STARTED = 0;
//============================================////============================================//
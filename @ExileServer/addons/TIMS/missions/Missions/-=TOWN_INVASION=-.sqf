//============================================////============================================//
//									 -TIMS- (WIP) by TolH
//									  -=TOWN_INVASION.sqf=-
//============================================////============================================//
//									  -MISSION OBJECTIVES-:
//          	  1: KILL ALL AI. MILITARIZED GROUP WITH GROUND AND AIR SUPPORT
//          	  2: KILL ALL AI. MILITARIZED GROUP WITH GROUND AND AIR SUPPORT
//          	  3: KILL ALL AI. MILITARIZED GROUP WITH GROUND AND AIR SUPPORT
//          	  4: KILL ALL AI. MILITARIZED GROUP WITH GROUND AND AIR SUPPORT
//============================================////============================================//
	//MISSION RUNNING CHECK
		TOWN_INVASION_STARTED = 1;
	//SEND MESSAGE TO PLAYER
		showNotification = ["TaskAssigned", "Town Invasion started."]; publicVariable "showNotification";
		//MISSION_NOTIFICATION_MSG = "INVASION_MISSION_NOTIFICATION"; publicVariable "MISSION_NOTIFICATION_MSG";
		diag_log "=======================================================================";
		diag_log "-=T.I.M.S=-: -=TOWN_INVASION.sqf=- Started";
		diag_log "=======================================================================";
	//SELECT A LOCATION
		private _towns = nearestLocations [position player, ["NameVillage","NameCity","NameCityCapital"], 40000];
		private _RandomTownPosition = position (_towns select (floor (random (count _towns))));
//============================================////============================================//
	//CREATE MAIN MISSION MARKER
		//"Missionmarker1" MAIN MARKER
			private _Missionmarker1 = createMarker ["Missionmarker1", _RandomTownPosition];
			"Missionmarker1" setMarkerColor "ColorRed";
			"Missionmarker1" setMarkerShape "ELLIPSE";
			"Missionmarker1" setMarkerBrush "SolidFull";
			"Missionmarker1" setMarkerSize [1200,1200];
			"Missionmarker1" setMarkerAlpha 0.06;
		//"Missionmarker2" SECONDARY OUTLINE MARKER
			private _Missionmarker2 = createMarker ["Missionmarker2", getMarkerPos "Missionmarker1"];
			"Missionmarker2" setMarkerColor "ColorRed";
			"Missionmarker2" setMarkerShape "ELLIPSE";
			"Missionmarker2" setMarkerBrush "Border";
			"Missionmarker2" setMarkerSize [1200,1200];
			"Missionmarker2" setMarkerAlpha 1.0;
		//CREATE AI_COUNTER MARKER
			private _AI_COUNTER = createMarker ["AI_COUNTER", getMarkerPos "Missionmarker1"];
			"AI_COUNTER" setMarkerColor "ColorGrey";
			"AI_COUNTER" setMarkerType "hd_dot";
			"AI_COUNTER" setMarkerSize [1,1];
			"AI_COUNTER" setMarkerAlpha 1;
		//CREATE OUTLINE TO ACTIVATION PLAYER NEARBY ZONE
			private _Missionmarker3 = createMarker ["Missionmarker3", getMarkerPos "Missionmarker1"];
			"Missionmarker3" setMarkerColor "ColorGreen";
			"Missionmarker3" setMarkerShape "ELLIPSE";
			"Missionmarker3" setMarkerBrush "Border";
			"Missionmarker3" setMarkerSize [1400,1400];
			"Missionmarker3" setMarkerAlpha 1.0;
		//PAUSE MISSION
			["Missionmarker1", 1400, "ColorRed"] ExecVM PAUSE_MISSION;
			waitUntil {uiSleep 3; ANIMEMARKER isEqualTo 0};
			deleteMarker "Missionmarker3";
//============================================////============================================//
	//SELECT RANDOM LOCATION FOR SPAWNING OBJECTS	
		private _MortarTeamPos  	= [(getMarkerPos "Missionmarker1"), 400, 900, 20, 0, 0, 0] call BIS_fnc_findSafePos;		//_MortarTeamPos
		private _AntiAirTeamPos  	= [(getMarkerPos "Missionmarker1"), 100, 600, 20, 0, 0, 0] call BIS_fnc_findSafePos;		//_AntiAirTeamPos
		private _LootBox_1  		= [(getMarkerPos "Missionmarker1"), 200, 400, 20, 0, 20, 0] call BIS_fnc_findSafePos;		//_LootBox_1
		private _LootBox_2  		= [(getMarkerPos "Missionmarker1"), 300, 600, 20, 0, 20, 0] call BIS_fnc_findSafePos;		//_LootBox_2
//============================================////============================================//
	//CREATE CRATE
		//CRATE #1
			private _supplyBox1 = createVehicle [Crate_Type, _LootBox_1, [], 0, "CAN_COLLIDE"];
			_supplyBox1 allowDamage false;
			_supplyBox1 enableSimulation true;
			_supplyBox1 setMass CRATE_MASS;
			_supplyBox1 enableRopeAttach true;
	//CREATE CRATE
		//CRATE #2
			private _supplyBox2 = createVehicle [Crate_Type, _LootBox_2, [], 0, "CAN_COLLIDE"];
			_supplyBox2 allowDamage false;
			_supplyBox2 enableSimulation true;
			_supplyBox2 setMass CRATE_MASS;
			_supplyBox2 enableRopeAttach true;
	//CLEAR CRATES INVENTORY
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
	//SPAWN AI
		//SPAWN MORTAR TEAM OF 4
		private _GrpSideMortar = createGroup EAST;
		for "_x" from 0 to 3 do 
		{
			private _MortarTeam = "O_G_Mortar_01_F" createVehicle _MortarTeamPos;
			private _unitMR = _GrpSideMortar createUnit ["O_G_Soldier_M_F", _MortarTeam, [], 1, "FORM"];
			_MortarTeam setDir random 360;
			_unitMR allowFleeing 0;
			_unitMR moveInGunner _MortarTeam;
			_unitMR setSkill AI_SKILLS_MORTAR_UNIT;
			_unitMR setBehaviour "AWARE";
			_unitMR setCombatMode "RED";
			_unitMR setVariable ["ExileMoney",round (random AI_MONEY_DROP), true];
			_unitMR addEventHandler ["Killed",{_this execVM "TIMS\custom\AIKilled.sqf"}];
			[_unitMR] joinSilent _GrpSideMortar;
			uiSleep 1;
		};
		//SPAWN ANTIAIR TEST
		private _GrpSideAntiAir = createGroup EAST;
		for "_x" from 0 to 3 do 
		{
			private _AntiAirTeam = "O_static_AA_F" createVehicle _AntiAirTeamPos;
			private _unitAA = _GrpSideAntiAir createUnit ["O_G_Soldier_M_F", _AntiAirTeam, [], 1, "FORM"];
			_AntiAirTeam setDir random 360;
			_unitAA allowFleeing 0;
			_unitAA moveInGunner _AntiAirTeam;
			_unitAA setSkill AI_SKILLS_AA_UNIT;
			_unitAA setBehaviour "AWARE";
			_unitAA setCombatMode "RED";
			_unitAA setVariable ["ExileMoney",round (random AI_MONEY_DROP), true];
			_unitAA addEventHandler ["Killed",{_this execVM "TIMS\custom\AIKilled.sqf"}];
			[_unitAA] joinSilent _GrpSideAntiAir;
			uiSleep 1;
		};
	//SPAWN TANK
		private _TankTeam1 = ["Missionmarker1", 4] execVM "TIMS\AI_script\TIMS_SPAWN_TANK.sqf";
//============================================////============================================//
	//WAIT 30 SECOND TO LET AI SPAWN SO MISSION DOESNT END ABRUTLY
		uiSleep 30;
//============================================////============================================//
	//SET MISSION VARS -=DO NOT MODIFY OR THE MISSION WILL BE BROKEN=-
	//========================================//
	//MAIN MISSION LOOP
		private _AiCounter   			 = 1;				//MAIN MISSION LOOP
		private _AiCounterRange			 = 1200;			//AI RANGE TO COUNT FROM MARKER
		private _AIleft					 = 1;				//NUMBER OF AI LEFT BEFORE ENDING INVASION
	//========================================//
//============================================////============================================//
	//START MISSION
		while {_AiCounter isEqualTo 1} do 
		{
		  //AICOUNTER
		  private _AiCount = ({alive _x AND (side _x) isEqualTo EAST AND (_x distance getMarkerPos "Missionmarker1" < _AiCounterRange)} count allunits);
		  uiSleep 3;
		  //CREATE AI_COUNTER MARKER
		  "AI_COUNTER" setMarkerText format ["(Invaders left: (%1)", _AiCount];
			//ALL REQUIREMENTS TO END MISSION LOOP
			if (_AiCount <= _AIleft) then 
			{
				//CHANGE AI_COUNTER MARKER
				"AI_COUNTER" setMarkerColor "ColorGreen";
				"Missionmarker1" setMarkerColor "ColorGreen";
				"Missionmarker2" setMarkerColor "ColorGreen";
				"AI_COUNTER" setMarkerText "Town Invasion Completed!";
				_AiCounter = 0;
			};
		};
	//WAIT UNTIL AI ELEMINATED
	waitUntil {uiSleep 3; _AiCounter isEqualTo 0};
//============================================////============================================//
	//SETUP LOOT
		//_Crate_1
		[_supplyBox1,"WEAPONS"] ExecVM NORMAL_Loot_Setup;
			uiSleep 1;
		[_supplyBox1,"MEDIC"] ExecVM NORMAL_Loot_Setup;
			uiSleep 1;
		[_supplyBox1,"CONSTRUCTION"] ExecVM NORMAL_Loot_Setup;
			uiSleep 1;
		[_supplyBox1,"TOOLS"] ExecVM NORMAL_Loot_Setup;
			uiSleep 1;
		[_supplyBox1,"BACKPACKS"] ExecVM NORMAL_Loot_Setup;
			uiSleep 1;
		[_supplyBox1,"TROPHY"] ExecVM NORMAL_Loot_Setup;
			uiSleep 1;
		[_supplyBox1,"DDR"] ExecVM NORMAL_Loot_Setup;
			uiSleep 1;
		_supplyBox1 setVariable ["ExileMoney",round (random CRATE_MONEY), true];
		//_Crate_2
		[_supplyBox2,"WEAPONS"] ExecVM NORMAL_Loot_Setup;
			uiSleep 1;
		[_supplyBox2,"MEDIC"] ExecVM NORMAL_Loot_Setup;
			uiSleep 1;
		[_supplyBox2,"CONSTRUCTION"] ExecVM NORMAL_Loot_Setup;
			uiSleep 1;
		[_supplyBox2,"TOOLS"] ExecVM NORMAL_Loot_Setup;
			uiSleep 1;
		[_supplyBox2,"BACKPACKS"] ExecVM NORMAL_Loot_Setup;
			uiSleep 1;
		[_supplyBox2,"TROPHY"] ExecVM NORMAL_Loot_Setup;
			uiSleep 1;
		[_supplyBox2,"DDR"] ExecVM NORMAL_Loot_Setup;
			uiSleep 1;
		_supplyBox2 setVariable ["ExileMoney",round (random CRATE_MONEY), true];
//============================================////============================================//
	//MESSAGE
		showNotification = ["TaskSucceeded", "Town Invasion Completed!"]; publicVariable "showNotification";
//============================================////============================================//
	//SET FLARES+SMOKES RANDOM COLOR OPTION ON LOOT CRATE
		//SMOKE RANDOM COLOR
			private _Smoke_Color1_Array = ["SmokeShell", "SmokeShellRed", "SmokeShellGreen", "SmokeShellYellow", "SmokeShellBlue", "SmokeShellOrange"];
			private _Smoke_Color1 = selectRandom _Smoke_Color1_Array;
			private _Smoke_Color2_Array = ["SmokeShellOrange", "SmokeShellBlue", "SmokeShellYellow", "SmokeShellGreen", "SmokeShellRed", "SmokeShell"];
			private _Smoke_Color2 = selectRandom _Smoke_Color2_Array;
		//START SMOKE
			private _smoke1 = _Smoke_Color1 createVehicle getPos _supplyBox1;
			_smoke1 attachto [_supplyBox1,[0,0,+0.87]];
			private _smoke2 = _Smoke_Color2 createVehicle getPos _supplyBox2;
			_smoke2 attachto [_supplyBox2,[0,0,+0.87]];
		//START FLARE EVERY 12SECONDS 5 TIMES = 60SECS OF FLARES
		for "_x" from 0 to 4 do 
		{
			//FLARE RANDOM COLOR
				private _Flare1_Color_Array = ["F_40mm_Red", "F_40mm_Green", "F_40mm_White"];
				private _Flare1_Color = selectRandom _Flare1_Color_Array;
				private _Flare2_Color_Array = ["F_40mm_White", "F_40mm_Green", "F_40mm_Red"];
				private _Flare2_Color = selectRandom _Flare2_Color_Array;
			//START FLARE EVERY 12SECONDS 5 TIMES = 60SECS OF FLARES
				private _flare1 = _Flare1_Color createVehicle getPos _supplyBox1;
				_flare1 attachto [_supplyBox1,[0,0,+50]];
				private _flare2 = _Flare2_Color createVehicle getPos _supplyBox2;
				_flare2 attachto [_supplyBox2,[0,0,+50]];
				uiSleep 12;
		};
//============================================////============================================//
	//WAIT X SECONDS BEFORE DELETING EVERYTHING
		uiSleep INVASION_RESET_TIMER;
		//DELETE MARKER
			deleteMarker "Missionmarker1";
			deleteMarker "Missionmarker2";
			deleteMarker "AI_COUNTER";
		//DELETE LOOTBOX ONLY IF IT EXIST.
			if (alive _supplyBox1) then 
			{
				deletevehicle _supplyBox1;
			};
			if (alive _supplyBox2) then 
			{
				deletevehicle _supplyBox2;
			};
//============================================////============================================//
	//MISSION ENDED
		diag_log "=======================================================================";
		diag_log "-=T.I.M.S=-: -=TOWN_INVASION.sqf=- ENDED";
		diag_log "=======================================================================";
		//MISSION ENDED CHECK
			TOWN_INVASION_STARTED = 0;
//============================================////============================================//
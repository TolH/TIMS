//============================================////============================================//
//									 -T.I.M.S- (WIP) by TolH
//									  -=TOWN_INVASION.sqf=-
//			MISSION OBJECTIVES:
//          	1: KILL ALL AI. MILITARIZED GROUP WITH GROUND AND AIR SUPPORT
//============================================////============================================//
private ["_towns","_Missionmarker1","_Missionmarker2","_Missionmarker3","_AI_COUNTER",
		 "_radioTower_pos","_Flag1_pos","_Flag2_pos","_Flag1","_Flag2","_FlagMarker1","_FlagMarker2","_radioTower","_radioTower_marker",
		 "_LVgroup1","_LVgroup2","_LVgroup03","_LVgroup3","_LVgroup4","_LVgroup5","_LVgroup6","_LVgroup7","_LVgroup8","_LVgroup9","_LVgroup10","_LVgroup11","_LVgroup12","_LVgroup13","_LVgroup14","_LVgroup15","_LVgroup16","_LVgroup17","_LVgroup18",
		 "_AiCounter","_AiCounterRange","_AiCount","_AIleft","_AIParaDrop_Sent","_RadioTowerCheck","_wreck","_LootBox_1","_LootBox_2","_supplyBox1","_supplyBox2",
		 "_Smoke_Color_Array","_Smoke_Color","_Flare_Color_Array","_Flare_Color","_smoke1","_smoke2","_flare1","_flare2","_flare3","_flare4","_flare5","_flare6","_flare7","_flare8","_flare9","_flare10",
		 "_Flag1_capRange","_Flag2_capRange","_Flag1OwnedByPlayer","_Flag2OwnedByPlayer","_Flag1_PLCount","_Flag2_PLCount","_LVGROUP15_16_SENT","_LVGROUP17_18_SENT"
		];
//============================================////============================================//
	//MISSION RUNNING CHECK
		//showNotification = ["TaskAssigned", "Good luck..."]; publicVariable "showNotification";
		//MISSION_NOTIFICATION_MSG = "INVASION_MISSION_NOTIFICATION"; publicVariable "MISSION_NOTIFICATION_MSG";
		TOWN_INVASION_STARTED = 1;
		diag_log "=======================================================================";
		diag_log "-=T.I.M.S=-: -=BASE_INVASION.sqf=- Started";
		diag_log "=======================================================================";
//============================================////============================================//
	//CREATE MAIN MISSION MARKER
		//"Missionmarker1" MAIN MARKER
			_Missionmarker1 = createMarker ["Missionmarker1", getMarkerPos "BASEINVASION"];
			"Missionmarker1" setMarkerColor "ColorRed";
			"Missionmarker1" setMarkerShape "ELLIPSE";
			"Missionmarker1" setMarkerBrush "SolidFull";
			"Missionmarker1" setMarkerSize [1200,1200];
			"Missionmarker1" setMarkerAlpha 0.06;
		//"Missionmarker2" SECONDARY OUTLINE MARKER
			_Missionmarker2 = createMarker ["Missionmarker2", getMarkerPos "Missionmarker1"];
			"Missionmarker2" setMarkerColor "ColorRed";
			"Missionmarker2" setMarkerShape "ELLIPSE";
			"Missionmarker2" setMarkerBrush "Border";
			"Missionmarker2" setMarkerSize [1200,1200];
			"Missionmarker2" setMarkerAlpha 1.0;
		//CREATE AI_COUNTER MARKER
			_AI_COUNTER = createMarker ["AI_COUNTER", getMarkerPos "Missionmarker1"];
			"AI_COUNTER" setMarkerColor "ColorGrey";
			"AI_COUNTER" setMarkerType "hd_dot";
			"AI_COUNTER" setMarkerSize [1,1];
			"AI_COUNTER" setMarkerAlpha 1;
		//CREATE OUTLINE TO ACTIVATION PLAYER NEARBY ZONE
			_Missionmarker3 = createMarker ["Missionmarker3", getMarkerPos "Missionmarker1"];
			"Missionmarker3" setMarkerColor "ColorGreen";
			"Missionmarker3" setMarkerShape "ELLIPSE";
			"Missionmarker3" setMarkerBrush "Border";
			"Missionmarker3" setMarkerSize [1300,1300];
			"Missionmarker3" setMarkerAlpha 1.0;
		//PAUSE MISSION
			["Missionmarker1", 1300, "ColorRed"] ExecVM PAUSE_MISSION;
			waitUntil {uiSleep 3; ANIMEMARKER isEqualTo 0};
			deleteMarker "Missionmarker3";
//============================================////============================================//
	//SELECT RANDOM LOCATION FOR SPAWNING OBJECTS
		_radioTower_pos = [(getMarkerPos "Missionmarker1"), 650, 1150, 5, 0, 100, 0] call BIS_fnc_findSafePos;	//_radioTower
		_Flag1_pos = [(getMarkerPos "Missionmarker1"), 600, 900, 25, 0, 20, 0] call BIS_fnc_findSafePos;			//_bunker1_pos
		_Flag2_pos = [(getMarkerPos "Missionmarker1"), 300, 600, 25, 0, 20, 0] call BIS_fnc_findSafePos;			//_bunker2_pos
//============================================////============================================//
	//CREATE MISSION OBJECTS
		//CREATE RADIOTOWER
			_radioTower = "Land_TTowerBig_2_F" createVehicle _radioTower_pos;
			waitUntil {uiSleep 1; alive _radioTower};
			_radioTower setVectorUp [0,0,1];
		//CREATE FLAG1
			_Flag1 = "FlagPole_F" createVehicle _Flag1_pos;
			waitUntil {uiSleep 0.2; alive _Flag1};
			_Flag1 allowDamage false;
			_Flag1 setVectorUp [0,0,1];
		//CREATE FLAG2
			_Flag2 = "FlagPole_F" createVehicle _Flag2_pos;
			waitUntil {uiSleep 0.2; alive _Flag2};
			_Flag2 allowDamage false;
			_Flag2 setVectorUp [0,0,1];
	//CREATE MISSION OBJECTS MARKER
		//MARKER AT RADIOTOWER
			_radioTower_marker = createMarker ["Radio_Tower", getPos _radioTower];
			"Radio_Tower" setMarkerColor "ColorOrange";
			"Radio_Tower" setMarkerType "loc_Transmitter";
			"Radio_Tower" setMarkerText " -RadioTower-";
			"Radio_Tower" setMarkerSize [1,1];
			"Radio_Tower" setMarkerAlpha 1;
		//MARKER AT FLAG1
			_BunkerMarker1 = createMarker ["Flag1", getPos _Flag1];
			"Flag1" setMarkerSize [0.75,0.75];
			"Flag1" setMarkerAlpha 0.8;
			"Flag1" setMarkerColor "ColorOrange";
			"Flag1" setMarkerType "loc_Power";
			"Flag1" setMarkerText " #1 Owned by: AI's";
		//MARKER AT FLAG2
			_FlagMarker2 = createMarker ["Flag2", getPos _Flag2];
			"Flag2" setMarkerSize [0.75,0.75];
			"Flag2" setMarkerAlpha 0.8;
			"Flag2" setMarkerColor "ColorOrange";
			"Flag2" setMarkerType "loc_Power";
			"Flag2" setMarkerText " #2 Owned by: AI's";
//============================================////============================================//
	//WAIT UNTIL PLAYER ARE NEAR OF THE MARKER
		//waitUntil {uiSleep 3; ({isPlayer _x AND (_x distance getMarkerPos "Missionmarker1") < 1000} count playableUnits) != 0};
//============================================////============================================//
	//POSITION OF MISSION OBJECTS, AI, VEHICLES AND LOOTS
		_LootBox_1 = [(getMarkerPos "Flag1"), 10, 25, 25, 0, 200, 0, ["o_art","ExileMissionEasyIcon","ExileMissionModerateIcon","ExileMissionDifficultIcon","ExileMissionHardcoreIcon"]] call BIS_fnc_findSafePos;	//_LootBox_1
		_LootBox_2 = [(getMarkerPos "Flag2"), 10, 25, 25, 0, 200, 0, ["o_art","ExileMissionEasyIcon","ExileMissionModerateIcon","ExileMissionDifficultIcon","ExileMissionHardcoreIcon"]] call BIS_fnc_findSafePos;	//_LootBox_2
//============================================////============================================//
	//CREATE CRATE
		//CRATE #1
			_supplyBox1 = createVehicle [Crate_Type, _LootBox_1, [], 0, "CAN_COLLIDE"];
			_supplyBox1 allowDamage false;
			_supplyBox1 enableSimulation true;
			_supplyBox1 setMass CRATE_MASS;
			_supplyBox1 enableRopeAttach true;
	//CLEAR CRATE ITEMS
		//CRATE #1
			clearBackpackCargoGlobal _supplyBox1;
			clearWeaponCargoGlobal _supplyBox1;
			clearMagazineCargoGlobal _supplyBox1;
			clearItemCargoGlobal _supplyBox1;
	//CREATE CRATE
		//CRATE #2
			_supplyBox2 = createVehicle [Crate_Type, _LootBox_2, [], 0, "CAN_COLLIDE"];
			_supplyBox2 allowDamage false;
			_supplyBox2 enableSimulation true;
			_supplyBox2 setMass CRATE_MASS;
			_supplyBox2 enableRopeAttach true;
	//CLEAR CRATE ITEMS
		//CRATE #2
			clearBackpackCargoGlobal _supplyBox2;
			clearWeaponCargoGlobal _supplyBox2;
			clearMagazineCargoGlobal _supplyBox2;
			clearItemCargoGlobal _supplyBox2;
//============================================////============================================//
	//SPAWN ALL HELICOPTER TO PARADROP AT EACH LOCATION
		_LVgroup1 = ["Missionmarker1",3,true,true,3200,0,true,110,150,6,0.55,75,true,true,false,true,["Flag1","Missionmarker1","Flag2"],true,AI_SKILLS_HELIPARADROP,nil,"this addEventHandler ['Killed',{_this execVM 'TIMS\custom\MPKilled.sqf'}];",1,false,false,["TOHL_PARADROP"]] execVM "TIMS\LV\heliParadrop_EXILE.sqf";
		diag_log format ["-=T.I.M.S=-: _LVgroup1  PARTY SENT TO CYCLE PATROL Flag1"];
		uiSleep 2;
		_LVgroup2 = ["Missionmarker1",3,true,true,3250,45,true,100,140,6,0.55,75,true,true,false,true,["Flag2","Missionmarker1","Flag1"],true,AI_SKILLS_HELIPARADROP,nil,"this addEventHandler ['Killed',{_this execVM 'TIMS\custom\MPKilled.sqf'}];",2,false,false,["TOHL_PARADROP"]] execVM "TIMS\LV\heliParadrop_EXILE.sqf";
		diag_log format ["-=T.I.M.S=-: _LVgroup2 PARTY SENT TO CYCLE PATROL Flag2"];
		uiSleep 2;
		_LVgroup3 = ["Radio_Tower",3,true,true,3100,90,true,105,135,6,0.55,75,true,true,false,true,["Missionmarker1","Radio_Tower","Missionmarker1"],true,AI_SKILLS_HELIPARADROP,nil,"this addEventHandler ['Killed',{_this execVM 'TIMS\custom\MPKilled.sqf'}];",3,false,false,["TOHL_PARADROP"]] execVM "TIMS\LV\heliParadrop_EXILE.sqf";
		diag_log format ["-=T.I.M.S=-: _LVgroup3 PARTY SENT TO CYCLE PATROL Radio_Tower"];
/*
	//SPAWN VEHICLE GROUND
		_LVgroup1 = ["Missionmarker1",3,300,[false,false],[true,false,false],false,[10,0],[1,0],AI_SKILLS_MIL_TANK,nil,"this addEventHandler ['Killed',{_this execVM 'TIMS\custom\MPKilled.sqf'}];",1,false,false,["TOHL"]] execVM "TIMS\LV\militarize.sqf";
			uiSleep 1;
		_LVgroup2 = ["Missionmarker1",3,600,[false,false],[true,false,false],false,[10,0],[1,0],AI_SKILLS_MIL_TANK,nil,"this addEventHandler ['Killed',{_this execVM 'TIMS\custom\MPKilled.sqf'}];",2,false,false,["TOHL"]] execVM "TIMS\LV\militarize.sqf";
			uiSleep 1;
	//SPAWN AI PATROLLING GROUND UNIT
		/*_LVgroup3 = ["Missionmarker1",3,500,[true,false],[false,false,false],false,[25,0],[0,0],AI_SKILLS_MIL_UNIT,nil,"this addEventHandler ['Killed',{_this execVM 'TIMS\custom\MPKilled.sqf'}];",3,true,false,["TOHL"]] execVM "TIMS\LV\militarize.sqf";
			uiSleep 2;
		_LVgroup4 = ["Radio_Tower",3,100,[true,false],[false,false,false],false,[10,0],[0,0],AI_SKILLS_MIL_UNIT,nil,"this addEventHandler ['Killed',{_this execVM 'TIMS\custom\MPKilled.sqf'}];",4,true,false,["TOHL"]] execVM "TIMS\LV\militarize.sqf";
			uiSleep 2;
		_LVgroup5 = ["Flag1",3,100,[true,false],[false,false,false],false,[5,0],[0,0],AI_SKILLS_MIL_UNIT,nil,"this addEventHandler ['Killed',{_this execVM 'TIMS\custom\MPKilled.sqf'}];",5,true,false,["TOHL"]] execVM "TIMS\LV\militarize.sqf";
			uiSleep 2;
		_LVgroup6 = ["Flag2",3,100,[true,false],[false,false,false],false,[5,0],[0,0],AI_SKILLS_MIL_UNIT,nil,"this addEventHandler ['Killed',{_this execVM 'TIMS\custom\MPKilled.sqf'}];",6,true,false,["TOHL"]] execVM "TIMS\LV\militarize.sqf";
			uiSleep 2;*//*
		_LVgroup33 = ["Missionmarker1",3,800,[true,false],[false,false,false],false,[25,0],[0,0],AI_SKILLS_MIL_UNIT,nil,"this addEventHandler ['Killed',{_this execVM 'TIMS\custom\MPKilled.sqf'}];",33,true,false,["TOHL"]] execVM "TIMS\LV\militarize.sqf";
			uiSleep 1;
		_LVgroup3 = ["Missionmarker1",3,true,true,1200,0,true,100,140,5,0.6,70,true,false,false,true,["PATROL","Missionmarker1",300],false,AI_SKILLS_HELIPARADROP,nil,"this addEventHandler ['Killed',{_this execVM 'TIMS\custom\MPKilled.sqf'}];",3,false,false,["TOHL_PARADROP"]] execVM "TIMS\LV\heliParadrop_EXILE.sqf";
			uiSleep 1;
		_LVgroup4 = ["Radio_Tower",3,true,true,1200,45,true,105,145,5,0.6,70,true,false,false,true,["PATROL","Radio_Tower",150],false,AI_SKILLS_HELIPARADROP,nil,"this addEventHandler ['Killed',{_this execVM 'TIMS\custom\MPKilled.sqf'}];",4,false,false,["TOHL_PARADROP"]] execVM "TIMS\LV\heliParadrop_EXILE.sqf";
			uiSleep 1;
		_LVgroup5 = ["Flag1",3,true,true,1200,90,true,110,150,5,0.6,70,true,false,false,true,["PATROL","Flag1",150],false,AI_SKILLS_HELIPARADROP,nil,"this addEventHandler ['Killed',{_this execVM 'TIMS\custom\MPKilled.sqf'}];",5,false,false,["TOHL_PARADROP"]] execVM "TIMS\LV\heliParadrop_EXILE.sqf";
			uiSleep 1;
		_LVgroup6 = ["Flag2",3,true,true,1200,135,true,115,155,5,0.6,70,true,false,false,true,["PATROL","Flag2",150],false,AI_SKILLS_HELIPARADROP,nil,"this addEventHandler ['Killed',{_this execVM 'TIMS\custom\MPKilled.sqf'}];",6,false,false,["TOHL_PARADROP"]] execVM "TIMS\LV\heliParadrop_EXILE.sqf";
			uiSleep 1;
	//SPAWN AI PATROLLING IN AIR VEHICLES
		_LVgroup7 = ["Missionmarker1",3,500,[false,false],[false,false,true],false,[0,0],[1,0],AI_SKILLS_MIL_AIR,nil,"this addEventHandler ['Killed',{_this execVM 'TIMS\custom\MPKilled.sqf'}];",7,true,false,["TOHL"]] execVM "TIMS\LV\militarize.sqf";
			uiSleep 1;
		_LVgroup8 = ["Radio_Tower",3,700,[false,false],[false,false,true],false,[0,0],[1,0],AI_SKILLS_MIL_AIR,nil,"this addEventHandler ['Killed',{_this execVM 'TIMS\custom\MPKilled.sqf'}];",8,true,false,["TOHL"]] execVM "TIMS\LV\militarize.sqf";
			uiSleep 1;
		_LVgroup9 = ["Missionmarker1",3,800,[false,false],[false,false,true],false,[0,0],[1,0],AI_SKILLS_MIL_AIR,nil,"this addEventHandler ['Killed',{_this execVM 'TIMS\custom\MPKilled.sqf'}];",9,true,false,["TOHL"]] execVM "TIMS\LV\militarize.sqf";
			uiSleep 1;
		_LVgroup10 = ["Missionmarker1",3,600,[false,false],[false,false,true],false,[0,0],[1,0],AI_SKILLS_MIL_AIR,nil,"this addEventHandler ['Killed',{_this execVM 'TIMS\custom\MPKilled.sqf'}];",10,true,false,["TOHL"]] execVM "TIMS\LV\militarize.sqf";
*/
//============================================////============================================//
	//WAIT 30 SECOND TO LET AI SPAWN SO MISSION DOESNT END ABRUTLY
		uiSleep 60;
//============================================////============================================//
	//SET MISSION VARS -=DO NOT MODIFY OR THE MISSION WILL BE BROKEN=-
	//========================================//
	//MAIN MISSION LOOP
		_AiCounter   			 = 1;				//MAIN MISSION LOOP
		_AiCounterRange			 = 1200;			//AI RANGE TO COUNT FROM MARKER
		_AIleft					 = 5;				//NUMBER OF AI LEFT BEFORE ENDING INVASION
		_AIParaDrop_Sent		 = 0;				//CHECK IF PARADROP TEAM HAS BEEN SENT
		_RadioTowerCheck 		 = 1;				//RADIOTOWER IS ALIVE ?
		_Flag1_capRange		 	 = 40;				//START CAPTURING AT THIS DISTANCE FROM THE FLAG 1
		_Flag2_capRange		 	 = 40;				//START CAPTURING AT THIS DISTANCE FROM THE FLAG 2
		_Flag1OwnedByPlayer		 = 0;				//FLAG 1 CAPTURED BY PLAYER
		_Flag2OwnedByPlayer 	 = 0;				//FLAG 2 CAPTURED BY PLAYER
		FLAG1OWNEDBYPLAYER		 = 0;				//GLOBAL CHECK FLAG1
		FLAG2OWNEDBYPLAYER		 = 0;				//GLOBAL CHECK FLAG2
		_LVGROUP15_16_SENT 		 = 0;				//
		_LVGROUP17_18_SENT 		 = 0;				//
	//========================================//
//============================================////============================================//
	//START MISSION
		while {_AiCounter isEqualTo 1} do 
		{
		  //AICOUNTER
		  _AiCount = ({alive _x AND (side _x) isEqualTo EAST AND (_x distance getMarkerPos "Missionmarker1" < _AiCounterRange)} count allunits);
		  _Flag1_PLCount = ({alive _x AND (side _x) isEqualTo resistance AND (_x distance getMarkerPos "Flag1" < _Flag1_capRange)} count allunits);
		  _Flag2_PLCount = ({alive _x AND (side _x) isEqualTo resistance AND (_x distance getMarkerPos "Flag2" < _Flag2_capRange)} count allunits);
		  uiSleep 3;
		  //CREATE AI_COUNTER MARKER
		  "AI_COUNTER" setMarkerText format ["(Invaders left: (%1)", _AiCount];
			//FLAG #1 CAPTURED BY PLAYER
			if ((_Flag1_PLCount >= 1) && (_Flag1OwnedByPlayer isEqualTo 0)) then
			{
				if (_RadioTowerCheck isEqualTo 1) then 
				{
					_LVgroup15 = ["Flag1",3,true,true,1500,0,true,110,150,5,0.6,70,true,false,false,true,["PATROL","Flag1",150],false,AI_SKILLS_HELIPARADROP,nil,"this addEventHandler ['Killed',{_this execVM 'TIMS\custom\MPKilled.sqf'}];",15,false,false,["TOHL_PARADROP"]] execVM "TIMS\LV\heliParadrop_EXILE.sqf";
					_LVgroup16 = ["Flag1",3,true,true,1500,45,true,115,150,5,0.6,70,true,false,false,true,["PATROL","Flag1",150],false,AI_SKILLS_HELIPARADROP,nil,"this addEventHandler ['Killed',{_this execVM 'TIMS\custom\MPKilled.sqf'}];",16,false,false,["TOHL_PARADROP"]] execVM "TIMS\LV\heliParadrop_EXILE.sqf";
					_LVGROUP15_16_SENT = 1;
				};
				showNotification = ["TaskUpdated", "Player: Capture attempt at location #1"]; publicVariable "showNotification";
				"Flag1" setMarkerColor "ColorBlue";
				"Flag1" setMarkerText " (Capture attempt by: (Players)";
				_Flag1OwnedByPlayer = 1;
				START_FLAG1_TIMER = 1;
				[] execVM FLAG1_TIMER;
			};
			//FLAG #2 CAPTURED BY PLAYER	FLAG1OWNEDBYPLAYER
			if ((_Flag2_PLCount >= 1) && (_Flag2OwnedByPlayer isEqualTo 0)) then
			{
				if (_RadioTowerCheck isEqualTo 1) then 
				{
					_LVgroup17 = ["Flag2",3,true,true,1500,90,true,110,155,5,0.6,70,true,false,false,true,["PATROL","Flag2",150],false,AI_SKILLS_HELIPARADROP,nil,"this addEventHandler ['Killed',{_this execVM 'TIMS\custom\MPKilled.sqf'}];",17,false,false,["TOHL_PARADROP"]] execVM "TIMS\LV\heliParadrop_EXILE.sqf";
					_LVgroup18 = ["Flag2",3,true,true,1500,180,true,115,155,5,0.6,70,true,false,false,true,["PATROL","Flag2",150],false,AI_SKILLS_HELIPARADROP,nil,"this addEventHandler ['Killed',{_this execVM 'TIMS\custom\MPKilled.sqf'}];",18,false,false,["TOHL_PARADROP"]] execVM "TIMS\LV\heliParadrop_EXILE.sqf";
					_LVGROUP17_18_SENT = 1;
				};
				showNotification = ["TaskUpdated", "Player: Capture attempt at location #2"]; publicVariable "showNotification";
				"Flag2" setMarkerColor "ColorBlue";
				"Flag2" setMarkerText " (Capture attempt by: (Players)";
				_Flag2OwnedByPlayer = 1;
				START_FLAG2_TIMER = 1;
				[] execVM FLAG2_TIMER;
			};
			//AI PARADROP TROOP WHEN AI AT ~50% FORCES
		/*	if ((_AiCount <= 40) && (_AIParaDrop_Sent isEqualTo 0) && (_RadioTowerCheck isEqualTo 1)) then 
			{
				//SEND PARADROP TROOP ONLY ONCE
				_LVgroup11 = ["Missionmarker1",3,true,true,1500,0,true,100,140,5,0.6,70,true,false,false,true,["PATROL","Missionmarker1",200],false,AI_SKILLS_HELIPARADROP,nil,"this addEventHandler ['Killed',{_this execVM 'TIMS\custom\MPKilled.sqf'}];",11,false,false,["TOHL_PARADROP"]] execVM "TIMS\LV\heliParadrop_EXILE.sqf";
				_LVgroup12 = ["Radio_Tower",3,true,true,1400,45,true,105,145,5,0.6,70,true,false,false,true,["PATROL","Radio_Tower",150],false,AI_SKILLS_HELIPARADROP,nil,"this addEventHandler ['Killed',{_this execVM 'TIMS\custom\MPKilled.sqf'}];",12,false,false,["TOHL_PARADROP"]] execVM "TIMS\LV\heliParadrop_EXILE.sqf";
				_LVgroup13 = ["Flag1",3,true,true,1300,90,true,110,150,5,0.6,70,true,false,false,true,["PATROL","Flag1",150],false,AI_SKILLS_HELIPARADROP,nil,"this addEventHandler ['Killed',{_this execVM 'TIMS\custom\MPKilled.sqf'}];",13,false,false,["TOHL_PARADROP"]] execVM "TIMS\LV\heliParadrop_EXILE.sqf";
				_LVgroup14 = ["Flag2",3,true,true,1200,135,true,115,155,5,0.6,70,true,false,false,true,["PATROL","Flag2",150],false,AI_SKILLS_HELIPARADROP,nil,"this addEventHandler ['Killed',{_this execVM 'TIMS\custom\MPKilled.sqf'}];",14,false,false,["TOHL_PARADROP"]] execVM "TIMS\LV\heliParadrop_EXILE.sqf";
				_AIParaDrop_Sent = 1;
			};*/
			//RADIOTOWER IS DESTROYED
			if ((!alive _radioTower) && (_RadioTowerCheck isEqualTo 1)) then
			{
				diag_log format ["-=T.I.M.S=-: Mission -Invasion.sqf- TOWER DESTROYED"];
				"Radio_Tower" setMarkerColor "ColorGrey";
				"Radio_Tower" setMarkerText " -=RadioTower=- Destroyed";
				showNotification = ["TaskUpdated", "RadioTower Deactivated! Reinforcements stopped."]; publicVariable "showNotification";
				_RadioTowerCheck = 0;
			};
			//ALL REQUIREMENTS TO END MISSION LOOP
			if ((_AiCount < _AIleft) && (!alive _radioTower) && (FLAG1OWNEDBYPLAYER isEqualTo 1) && (FLAG2OWNEDBYPLAYER isEqualTo 1)) then 
			{
				//CHANGE AI_COUNTER MARKER
				"AI_COUNTER" setMarkerColor "ColorGreen";
				"Missionmarker1" setMarkerColor "ColorGreen";
				"Missionmarker2" setMarkerColor "ColorGreen";
				"Flag2" setMarkerColor "ColorGreen";
				"Flag2" setMarkerText " #2 Owned by: Players";
				"AI_COUNTER" setMarkerText "Town Invasion Completed!";
				_AiCounter = 0;
			};
		};
	//WAIT UNTIL AI ELEMINATED
	waitUntil {uiSleep 5; _AiCounter isEqualTo 0};
//============================================////============================================//
	//LOOT
		//_Crate_1
		[_supplyBox1,"WEAPONS"] ExecVM NORMAL_Loot_Setup;
			uiSleep 0.50;
		[_supplyBox1,"MEDIC"] ExecVM NORMAL_Loot_Setup;
			uiSleep 0.50;
		[_supplyBox1,"CONSTRUCTION"] ExecVM NORMAL_Loot_Setup;
			uiSleep 0.50;
		[_supplyBox1,"TOOLS"] ExecVM NORMAL_Loot_Setup;
			uiSleep 0.50;
		[_supplyBox1,"BACKPACKS"] ExecVM NORMAL_Loot_Setup;
			uiSleep 0.50;
		[_supplyBox1,"TROPHY"] ExecVM NORMAL_Loot_Setup;
			uiSleep 0.50;
		_supplyBox1 setVariable ["ExileMoney",round (random CRATE_MONEY), true];
		//_Crate_2
		[_supplyBox2,"WEAPONS"] ExecVM NORMAL_Loot_Setup;
			uiSleep 0.50;
		[_supplyBox2,"MEDIC"] ExecVM NORMAL_Loot_Setup;
			uiSleep 0.50;
		[_supplyBox2,"CONSTRUCTION"] ExecVM NORMAL_Loot_Setup;
			uiSleep 0.50;
		[_supplyBox2,"TOOLS"] ExecVM NORMAL_Loot_Setup;
			uiSleep 0.50;
		[_supplyBox2,"BACKPACKS"] ExecVM NORMAL_Loot_Setup;
			uiSleep 0.50;
		[_supplyBox2,"TROPHY"] ExecVM NORMAL_Loot_Setup;
			uiSleep 0.50;
		_supplyBox2 setVariable ["ExileMoney",round (random CRATE_MONEY), true];
//============================================////============================================//
	//MESSAGE
		showNotification = ["TaskSucceeded", "Town Invasion Completed!"]; publicVariable "showNotification";
//============================================////============================================//
	//SET FLARES+SMOKES RANDOM COLOR OPTION
		//SMOKE RANDOM COLOR
		_Smoke_Color_Array = ["SmokeShell", "SmokeShellRed", "SmokeShellGreen", "SmokeShellYellow", "SmokeShellBlue", "SmokeShellOrange"];
		_Smoke_Color = selectRandom _Smoke_Color_Array;
		//FLARE RANDOM COLOR
		_Flare_Color_Array = ["F_40mm_Red", "F_40mm_Green", "F_40mm_White"];
		_Flare_Color = selectRandom _Flare_Color_Array;
//============================================////============================================//
	//SPAWN FLARE AND SMOKE
		//_supplyBox1
		//START SMOKE
		_smoke1 = _Smoke_Color createVehicle getPos _supplyBox1;
		_smoke1 attachto [_supplyBox1,[0,0,+0.87]];
		_smoke2 = _Smoke_Color createVehicle getPos _supplyBox2;
		_smoke2 attachto [_supplyBox2,[0,0,+0.87]];
		//START FLARE EVERY 12SECONDS 5 TIMES = 60SECS OF FLARES
		_flare1 = _Flare_Color createVehicle getPos _supplyBox1;
		_flare1 attachto [_supplyBox1,[0,0,+50]];
		_flare6 = _Flare_Color createVehicle getPos _supplyBox2;
		_flare6 attachto [_supplyBox2,[0,0,+50]];
		uiSleep 12;
		_flare2 = _Flare_Color createVehicle getPos _supplyBox1;
		_flare2 attachto [_supplyBox1,[0,0,+50]];
		_flare7 = _Flare_Color createVehicle getPos _supplyBox2;
		_flare7 attachto [_supplyBox2,[0,0,+50]];
		uiSleep 12;
		_flare3 = _Flare_Color createVehicle getPos _supplyBox1;
		_flare3 attachto [_supplyBox1,[0,0,+50]];
		_flare8 = _Flare_Color createVehicle getPos _supplyBox2;
		_flare8 attachto [_supplyBox2,[0,0,+50]];
		uiSleep 12;
		_flare4 = _Flare_Color createVehicle getPos _supplyBox1;
		_flare4 attachto [_supplyBox1,[0,0,+50]];
		_flare9 = _Flare_Color createVehicle getPos _supplyBox2;
		_flare9 attachto [_supplyBox2,[0,0,+50]];
		uiSleep 12;
		_flare5 = _Flare_Color createVehicle getPos _supplyBox1;
		_flare5 attachto [_supplyBox1,[0,0,+50]];
		_flare10 = _Flare_Color createVehicle getPos _supplyBox2;
		_flare10 attachto [_supplyBox2,[0,0,+50]];
//============================================////============================================//
		//DELETE AI GROUP
		nul1 = [LVgroup1] execVM "TIMS\LV\LV_functions\LV_fnc_removeGroupV2.sqf";
		nul2 = [LVgroup2] execVM "TIMS\LV\LV_functions\LV_fnc_removeGroupV2.sqf";
		nul3 = [LVgroup3] execVM "TIMS\LV\LV_functions\LV_fnc_removeGroupV2.sqf";
	/*	nul33 = [LVgroup33] execVM "TIMS\LV\LV_functions\LV_fnc_removeGroupV2.sqf";
		nul3 = [LVgroup3] execVM "TIMS\LV\LV_functions\LV_fnc_removeGroupV2.sqf";
		nul4 = [LVgroup4] execVM "TIMS\LV\LV_functions\LV_fnc_removeGroupV2.sqf";
		nul5 = [LVgroup5] execVM "TIMS\LV\LV_functions\LV_fnc_removeGroupV2.sqf";
		nul6 = [LVgroup6] execVM "TIMS\LV\LV_functions\LV_fnc_removeGroupV2.sqf";
		nul7 = [LVgroup7] execVM "TIMS\LV\LV_functions\LV_fnc_removeGroupV2.sqf";
		nul8 = [LVgroup8] execVM "TIMS\LV\LV_functions\LV_fnc_removeGroupV2.sqf";
		nul9 = [LVgroup9] execVM "TIMS\LV\LV_functions\LV_fnc_removeGroupV2.sqf";
		nul10 = [LVgroup10] execVM "TIMS\LV\LV_functions\LV_fnc_removeGroupV2.sqf";*/
		//DELETE PARATROOP IF SPAWNED
		if (_AIParaDrop_Sent isEqualTo 1) then 
		{
			nul11 = [LVgroup11] execVM "TIMS\LV\LV_functions\LV_fnc_removeGroupV2.sqf";
			nul12 = [LVgroup12] execVM "TIMS\LV\LV_functions\LV_fnc_removeGroupV2.sqf";
			nul13 = [LVgroup13] execVM "TIMS\LV\LV_functions\LV_fnc_removeGroupV2.sqf";
			nul14 = [LVgroup14] execVM "TIMS\LV\LV_functions\LV_fnc_removeGroupV2.sqf";
		};
		if (_LVGROUP15_16_SENT isEqualTo 1) then 
		{
			nul15 = [LVgroup15] execVM "TIMS\LV\LV_functions\LV_fnc_removeGroupV2.sqf";
			nul16 = [LVgroup16] execVM "TIMS\LV\LV_functions\LV_fnc_removeGroupV2.sqf";
		};
		if (_LVGROUP17_18_SENT isEqualTo 1) then 
		{
			nul17 = [LVgroup17] execVM "TIMS\LV\LV_functions\LV_fnc_removeGroupV2.sqf";
			nul18 = [LVgroup18] execVM "TIMS\LV\LV_functions\LV_fnc_removeGroupV2.sqf";
		};
//============================================////============================================//
	//WAIT X SECONDS BEFORE DELETING EVERYTHING
		uiSleep INVASION_RESET_TIMER;
		//DELETE RADIOTOWER RUINS
			_wreck = getMarkerPos "Radio_Tower" nearestObject "Land_TTowerBig_2_ruins_F";
			deletevehicle _wreck;
			//WAIT OR WONT DELETE
			uiSleep 1;
		//DELETE MARKER
			deleteMarker "Missionmarker1";
			deleteMarker "Missionmarker2";
			deleteMarker "AI_COUNTER";
			deleteMarker "Radio_Tower";
			deleteMarker "Flag1";
			deleteMarker "Flag2";
			deleteMarker "BASEINVASION";
		//DELETE LOOTBOX AND OBJECTS
			deleteVehicle _Flag1;
			deleteVehicle _Flag2;
			//WAIT OR WONT DELETE
			uiSleep 1;
		//REMOVE DEAD AI GROUP WHEN 2000 METERS OF PLAYER
			nul = [1500] execVM "TIMS\LV\LV_functions\LV_fnc_removeDead.sqf";
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
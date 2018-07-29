//============================================////============================================//
//									 -T.I.M.S- (WIP) by TolH
//									  -=TOWN_INVASION.sqf=-
//			MISSION OBJECTIVES:
//          	1: KILL ALL AI. MILITARIZED GROUP WITH GROUND AND AIR SUPPORT
//============================================////============================================//
private ["_towns","_RandomTownPosition","_Missionmarker1","_Missionmarker2","_Missionmarker3","_AI_COUNTER",
		 "_radioTower_pos","_Flag1_pos","_Flag2_pos","_Flag1","_Flag2","_FlagMarker1","_FlagMarker2","_radioTower","_radioTower_marker",
		 "_LVgroup1","_LVgroup2","_LVgroup3","_LVgroup4","_LVgroup5","_LVgroup6","_LVgroup7","_LVgroup8","_LVgroup9","_LVgroup10","_LVgroup11","_LVgroup12","_LVgroup13",
		 "_AiCounter","_AiCounterRange","_AiCount","_AIleft","_AIParaDrop_Sent","_RadioTowerCheck","_wreck",
		 "_Flag1_capRange","_Flag2_capRange","_Flag1OwnedByPlayer","_Flag2OwnedByPlayer","_Flag1_PLCount","_Flag2_PLCount"
		];
//============================================////============================================//
	//MISSION RUNNING CHECK
		showNotification = ["TaskAssigned", "Town Invasion Started! Approach with caution..."]; publicVariable "showNotification";
		TOWN_INVASION_STARTED = 1;
		diag_log "=======================================================================";
		diag_log "-=T.I.M.S=-: -=TOWN_INVASION.sqf=- Started";
		diag_log "=======================================================================";
//============================================////============================================//
	//PICK RANDOM POSITION
		//TOWN RANDOM SELECTION
		_towns = nearestLocations [position player, ["NameCity","NameCityCapital"], 40000];
		_RandomTownPosition = position (_towns select (floor (random (count _towns))));
//============================================////============================================//
	//CREATE MAIN MISSION MARKER
		//"Missionmarker1" MAIN MARKER
			_Missionmarker1 = createMarker ["Missionmarker1", _RandomTownPosition];
			"Missionmarker1" setMarkerColor "ColorRed";
			"Missionmarker1" setMarkerShape "ELLIPSE";
			"Missionmarker1" setMarkerBrush "SolidFull";
			"Missionmarker1" setMarkerSize [2000,2000];
			"Missionmarker1" setMarkerAlpha 0.06;
		//"Missionmarker2" SECONDARY OUTLINE MARKER
			_Missionmarker2 = createMarker ["Missionmarker2", getMarkerPos "Missionmarker1"];
			"Missionmarker2" setMarkerColor "ColorRed";
			"Missionmarker2" setMarkerShape "ELLIPSE";
			"Missionmarker2" setMarkerBrush "Border";
			"Missionmarker2" setMarkerSize [2000,2000];
			"Missionmarker2" setMarkerAlpha 1.0;
		//"Missionmarker3" SPAWN RANGE INDICATOR
			_Missionmarker3 = createMarker ["Missionmarker3", getMarkerPos "Missionmarker1"];
			"Missionmarker3" setMarkerColor "ColorOrange";
			"Missionmarker3" setMarkerShape "ELLIPSE";
			"Missionmarker3" setMarkerBrush "Border";
			"Missionmarker3" setMarkerSize [2050,2050];
			"Missionmarker3" setMarkerAlpha 1.0;
		//CREATE AI_COUNTER MARKER
			_AI_COUNTER = createMarker ["AI_COUNTER", getMarkerPos "Missionmarker1"];
			"AI_COUNTER" setMarkerColor "ColorGrey";
			"AI_COUNTER" setMarkerType "hd_dot";
			"AI_COUNTER" setMarkerSize [1,1];
			"AI_COUNTER" setMarkerAlpha 1;
//============================================////============================================//
	//SELECT RANDOM LOCATION FOR SPAWNING OBJECTS
		_radioTower_pos = [(getMarkerPos "Missionmarker1"), 500, 1600, 5, 0, 100, 0] call BIS_fnc_findSafePos;	//_radioTower
		_Flag1_pos = [(getMarkerPos "Missionmarker1"), 800, 1300, 25, 0, 20, 0] call BIS_fnc_findSafePos;			//_bunker1_pos
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
			//_Flag1_GetPos = getPos _Flag1;
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
		waitUntil {uiSleep 3; ({isPlayer _x AND (_x distance getMarkerPos "Missionmarker1") < 2050} count playableUnits) != 0};
		//DELETE RANGE INDICATOR MARKER
			deleteMarker "Missionmarker3";
//============================================////============================================//
	//SPAWN AI PATROLLING IN HOUSE
		_LVgroup1 = ["Missionmarker1",3,true,2,[12,0],1200,AI_SKILLS_FILLHOUSE,nil,"this addEventHandler ['Killed',{_this execVM 'TIMS\custom\MPKilled.sqf'}];",1,["TOHL"]] execVM "TIMS\LV\fillHouse.sqf";
			uiSleep 2;
	//SPAWN AI PATROLLING GROUND UNIT
		_LVgroup2 = ["Missionmarker1",3,1900,[true,false],[false,false,false],false,[13,0],[0,0],AI_SKILLS_MIL_UNIT,nil,"this addEventHandler ['Killed',{_this execVM 'TIMS\custom\MPKilled.sqf'}];",2,true,false,["TOHL"]] execVM "TIMS\LV\militarize.sqf";
			uiSleep 2;
		_LVgroup3 = ["Radio_Tower",3,100,[true,false],[false,false,false],false,[10,0],[0,0],AI_SKILLS_MIL_UNIT,nil,"this addEventHandler ['Killed',{_this execVM 'TIMS\custom\MPKilled.sqf'}];",3,true,false,["TOHL"]] execVM "TIMS\LV\militarize.sqf";
			uiSleep 2;
		_LVgroup4 = ["Flag1",3,100,[true,false],[false,false,false],false,[5,0],[0,0],AI_SKILLS_MIL_UNIT,nil,"this addEventHandler ['Killed',{_this execVM 'TIMS\custom\MPKilled.sqf'}];",4,true,false,["TOHL"]] execVM "TIMS\LV\militarize.sqf";
			uiSleep 2;
		_LVgroup5 = ["Flag2",3,100,[true,false],[false,false,false],false,[5,0],[0,0],AI_SKILLS_MIL_UNIT,nil,"this addEventHandler ['Killed',{_this execVM 'TIMS\custom\MPKilled.sqf'}];",5,true,false,["TOHL"]] execVM "TIMS\LV\militarize.sqf";
			uiSleep 2;
	//SPAWN AI PATROLLING IN AIR VEHICLES
		_LVgroup6 = ["Missionmarker1",3,1500,[false,false],[false,false,true],false,[0,0],[1,0],AI_SKILLS_MIL_AIR,nil,"this addEventHandler ['Killed',{_this execVM 'TIMS\custom\MPKilled.sqf'}];",6,true,false,["TOHL"]] execVM "TIMS\LV\militarize.sqf";
			uiSleep 2;
		_LVgroup7 = ["Radio_Tower",3,1200,[false,false],[false,false,true],false,[0,0],[1,0],AI_SKILLS_MIL_AIR,nil,"this addEventHandler ['Killed',{_this execVM 'TIMS\custom\MPKilled.sqf'}];",7,true,false,["TOHL"]] execVM "TIMS\LV\militarize.sqf";
			uiSleep 2;
		_LVgroup8 = ["Flag1",3,1200,[false,false],[false,false,true],false,[0,0],[1,0],AI_SKILLS_MIL_AIR,nil,"this addEventHandler ['Killed',{_this execVM 'TIMS\custom\MPKilled.sqf'}];",8,true,false,["TOHL"]] execVM "TIMS\LV\militarize.sqf";
			uiSleep 2;
		_LVgroup9 = ["Flag2",3,1200,[false,false],[false,false,true],false,[0,0],[1,0],AI_SKILLS_MIL_AIR,nil,"this addEventHandler ['Killed',{_this execVM 'TIMS\custom\MPKilled.sqf'}];",9,true,false,["TOHL"]] execVM "TIMS\LV\militarize.sqf";

	//SPAWN AI PATROLLING IN GROUND VEHICLES
		_LVgroup14 = ["Missionmarker1",3,800,[false,false],[true,false,false],false,[0,0],[3,0],AI_SKILLS_MIL_TANK,nil,"this addEventHandler ['Killed',{_this execVM 'TIMS\custom\MPKilled.sqf'}];",14,true,false,["TOHL"]] execVM "TIMS\LV\militarize.sqf";
	/*uiSleep 5;
		_LVgroup7 = ["Radio_Tower",3,500,[false,false],[true,false,false],false,[0,0],[1,0],AI_SKILLS_MIL_TANK,nil,"this addEventHandler ['Killed',{_this execVM 'TIMS\custom\MPKilled.sqf'}];",7,true,false,["TOHL"]] execVM "TIMS\LV\militarize.sqf";
	uiSleep 5;
		_LVgroup8 = ["Flag1",3,500,[false,false],[true,false,false],false,[0,0],[1,0],AI_SKILLS_MIL_TANK,nil,"this addEventHandler ['Killed',{_this execVM 'TIMS\custom\MPKilled.sqf'}];",8,true,false,["TOHL"]] execVM "TIMS\LV\militarize.sqf";
	uiSleep 5;
		_LVgroup9 = ["Flag2",3,500,[false,false],[true,false,false],false,[0,0],[1,0],AI_SKILLS_MIL_TANK,nil,"this addEventHandler ['Killed',{_this execVM 'TIMS\custom\MPKilled.sqf'}];",9,true,false,["TOHL"]] execVM "TIMS\LV\militarize.sqf";
	uiSleep 5;*/
//============================================////============================================//
	//WAIT 10 SECOND TO LET AI SPAWN SO MISSION DOESNT END ABRUTLY
		uiSleep 10;
//============================================////============================================//
	//========================================//
	//SET MISSION VARS -=DO NOT MODIFY OR THE MISSION WILL BE BROKEN=-
	//========================================//
	//MAIN MISSION LOOP
		_AiCounter   			 = 1;				//MAIN MISSION LOOP
		_AiCounterRange			 = 1800;			//AI RANGE TO COUNT FROM MARKER
		_AIleft					 = 10;				//NUMBER OF AI LEFT BEFORE ENDING INVASION
		_AIParaDrop_Sent		 = 0;				//CHECK IF PARADROP TEAM HAS BEEN SENT
		_RadioTowerCheck 		 = 1;				//RADIOTOWER IS ALIVE ?
		//FLAGS
		_Flag1_capRange		 	 = 40;				//START CAPTURING AT THIS DISTANCE FROM THE FLAG 1
		_Flag2_capRange		 	 = 40;				//START CAPTURING AT THIS DISTANCE FROM THE FLAG 2
		_Flag1OwnedByPlayer		 = 0;				//FLAG 1 CAPTURED BY PLAYER
		_Flag2OwnedByPlayer 	 = 0;				//FLAG 2 CAPTURED BY PLAYER
		FLAG1OWNEDBYPLAYER		 = 0;
		FLAG2OWNEDBYPLAYER		 = 0;
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
				showNotification = ["TaskUpdated", "Player: Capturing attempt at location #1"]; publicVariable "showNotification";
				"Flag1" setMarkerColor "ColorBlue";
				"Flag1" setMarkerText " (Capture attempt by: (Players)";
				_Flag1OwnedByPlayer = 1;
				START_FLAG1_TIMER = 1;
				[] execVM FLAG1_TIMER;
			};
			//FLAG #2 CAPTURED BY PLAYER
			if ((_Flag2_PLCount >= 1) && (_Flag2OwnedByPlayer isEqualTo 0)) then
			{
				showNotification = ["TaskUpdated", "Player: Capturing attempt at location #2"]; publicVariable "showNotification";
				"Flag2" setMarkerColor "ColorBlue";
				"Flag2" setMarkerText " (Capture attempt by: (Players)";
				_Flag2OwnedByPlayer = 1;
				START_FLAG2_TIMER = 1;
				[] execVM FLAG2_TIMER;
			};
			//AI PARADROP TROOP WHEN AI AT ~50% FORCES
			if ((_AiCount <= 30) && (_AIParaDrop_Sent isEqualTo 0)) then 
			{
				//SEND PARADROP TROOP ONLY ONCE
				_LVgroup10 = ["Missionmarker1",3,true,true,2000,0,true,100,140,5,0.6,70,true,false,false,true,["PATROL","Missionmarker1",200],false,AI_SKILLS_HELIPARADROP,nil,"this addEventHandler ['Killed',{_this execVM 'TIMS\custom\MPKilled.sqf'}];",10,false,false,["TOHL_PARADROP"]] execVM "TIMS\LV\heliParadrop_EXILE.sqf";
				_LVgroup11 = ["Radio_Tower",3,true,true,2000,45,true,105,145,5,0.6,70,true,false,false,true,["PATROL","Radio_Tower",150],false,AI_SKILLS_HELIPARADROP,nil,"this addEventHandler ['Killed',{_this execVM 'TIMS\custom\MPKilled.sqf'}];",11,false,false,["TOHL_PARADROP"]] execVM "TIMS\LV\heliParadrop_EXILE.sqf";
				_LVgroup12 = ["Flag1",3,true,true,2000,90,true,110,150,5,0.6,70,true,false,false,true,["PATROL","Flag1",150],false,AI_SKILLS_HELIPARADROP,nil,"this addEventHandler ['Killed',{_this execVM 'TIMS\custom\MPKilled.sqf'}];",12,false,false,["TOHL_PARADROP"]] execVM "TIMS\LV\heliParadrop_EXILE.sqf";
				_LVgroup13 = ["Flag2",3,true,true,2000,135,true,115,155,5,0.6,70,true,false,false,true,["PATROL","Flag2",150],false,AI_SKILLS_HELIPARADROP,nil,"this addEventHandler ['Killed',{_this execVM 'TIMS\custom\MPKilled.sqf'}];",13,false,false,["TOHL_PARADROP"]] execVM "TIMS\LV\heliParadrop_EXILE.sqf";
				_AIParaDrop_Sent = 1;
			};
			//WAIT UNTIL RADIOTOWER IS DESTROYED AND RIGHT AMOUNT OF AI KILLED
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
	//MESSAGE
		showNotification = ["TaskSucceeded", "Town Invasion Completed!"]; publicVariable "showNotification";
		//DELETE AI GROUP
		nul1 = [LVgroup1] execVM "TIMS\LV\LV_functions\LV_fnc_removeGroupV2.sqf";
		nul2 = [LVgroup2] execVM "TIMS\LV\LV_functions\LV_fnc_removeGroupV2.sqf";
		nul3 = [LVgroup3] execVM "TIMS\LV\LV_functions\LV_fnc_removeGroupV2.sqf";
		nul4 = [LVgroup4] execVM "TIMS\LV\LV_functions\LV_fnc_removeGroupV2.sqf";
		nul5 = [LVgroup5] execVM "TIMS\LV\LV_functions\LV_fnc_removeGroupV2.sqf";
		nul6 = [LVgroup6] execVM "TIMS\LV\LV_functions\LV_fnc_removeGroupV2.sqf";
		nul7 = [LVgroup7] execVM "TIMS\LV\LV_functions\LV_fnc_removeGroupV2.sqf";
		nul8 = [LVgroup8] execVM "TIMS\LV\LV_functions\LV_fnc_removeGroupV2.sqf";
		nul9 = [LVgroup9] execVM "TIMS\LV\LV_functions\LV_fnc_removeGroupV2.sqf";
		//DELETE PARATROOP IF SPAWNED
		if (_AIParaDrop_Sent isEqualTo 1) then 
		{
			nul10 = [LVgroup10] execVM "TIMS\LV\LV_functions\LV_fnc_removeGroupV2.sqf";
			nul11 = [LVgroup11] execVM "TIMS\LV\LV_functions\LV_fnc_removeGroupV2.sqf";
			nul12 = [LVgroup12] execVM "TIMS\LV\LV_functions\LV_fnc_removeGroupV2.sqf";
			nul13 = [LVgroup13] execVM "TIMS\LV\LV_functions\LV_fnc_removeGroupV2.sqf";
		};
		nul14 = [LVgroup14] execVM "TIMS\LV\LV_functions\LV_fnc_removeGroupV2.sqf";
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
		//DELETE LOOTBOX AND OBJECTS
			deleteVehicle _Flag1;
			deleteVehicle _Flag2;
			//WAIT OR WONT DELETE
			uiSleep 1;
		//REMOVE DEAD AI GROUP WHEN 3000 METERS OF PLAYER
			nul = [3000] execVM "TIMS\LV\LV_functions\LV_fnc_removeDead.sqf";
//============================================////============================================//
	//MISSION ENDED
		diag_log "=======================================================================";
		diag_log "-=T.I.M.S=-: -=TOWN_INVASION.sqf=- ENDED";
		diag_log "=======================================================================";
		//MISSION ENDED CHECK
			TOWN_INVASION_STARTED = 0;
//============================================////============================================//
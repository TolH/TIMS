//============================================////============================================//
//									 -T.I.M.S- (WIP) by TolH
//									   -=CRATE_LOOTS_1=-
//============================================////============================================//
private [
			"_LootPosition","_LootBox_1","_supplyBox1","_supplyBox2","_Crate_1","_smoke","_flare1","_flare2","_towns",
			"_RandomTownPosition","_Smoke_Color_Array","_Smoke_Color","_Flare_Color_Array","_Flare_Color","_CRATE_DAMAGE"
		];
//============================================////============================================//
	//MISSION RUNNING CHECK
		MISSION_NOTIFICATION_MSG = "RANDOM_LOOT_CRATE_NOTIFICATION"; publicVariable "MISSION_NOTIFICATION_MSG";
		SFX_CUSTOM = "CRATEALERTSFX"; publicVariable "SFX_CUSTOM";
		CRATE_LOOTS_1 = 1;
		diag_log "=======================================================================";
		diag_log "-=T.I.M.S=-: EVENT -=CRATE_LOOT=-.sqf- Started";
		diag_log "=======================================================================";
	//SELECT A LOCATION
		_towns = nearestLocations [position player, ["NameVillage","NameCity","NameCityCapital"], 40000];
		_RandomTownPosition = position (_towns select (floor (random (count _towns))));
//============================================////============================================//
	//CREATE MISSION MARKER
		_LootPosition = createMarker ["LootPosition", _RandomTownPosition];
//============================================////============================================//
	//POSITION OF MISSION OBJECTS, AI, VEHICLES AND LOOTS
		_LootBox_1 = [(getMarkerPos "LootPosition"), 250, 1500, 25, 0, 200, 0, ["o_art","ExileMissionEasyIcon","ExileMissionModerateIcon","ExileMissionDifficultIcon","ExileMissionHardcoreIcon"]] call BIS_fnc_findSafePos;	//_LootBox_1
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
//============================================////============================================//
	//CREATE ALL CRATES MARKERS
		//(Crate_1)
			_Crate_1 = createMarker ["Crate_1", getPos _supplyBox1];
			"Crate_1" setMarkerSize [1,1];
			"Crate_1" setMarkerColor "ColorGreen";
			"Crate_1" setMarkerType "respawn_para";
			"Crate_1" setMarkerText "Goodies";
//============================================////============================================//
	//START TRACKING CRATE MARKERS IF ENABLED FROM CONFIG
		if (LOOT_TRACKER isEqualTo 1) then
		{
			LOOT_TRACKER_CFG = 1;
			[_supplyBox1] execVM LOOT_MARKER;
		};
//============================================////============================================//
	//WAIT UNTIL PLAYER ARE AT LEAST (CONFIG)METER OF MARKER "_smoke","_bigflare","_flare",
		waitUntil {uiSleep 3; ({isPlayer _x AND (_x distance _supplyBox1) < CRATE_SMOKE_FLARE} count playableUnits) != 0};
//============================================////============================================//
	//SEND PARADROP TROOPER AT CRATE LOCATION WHEN PLAYER ARE NEARBY
		//_LVgroup1 = ["Crate_1",false,3,0,false,true,"Crate_1","random",1000,true,false,6,0.75,[false,true,true,false],nil,"removeBackpack this; this addBackpack 'B_Carryall_oucamo'; this addWeapon 'CUP_launch_RPG7V'; this addMagazine 'CUP_PG7V_M'; this addMagazine 'CUP_PG7V_M'; this addMagazine 'CUP_PG7V_M'; this addMagazine 'CUP_PG7V_M'; this addMagazine 'CUP_PG7V_M';",1,false,false,["TOHL"]] execVM "TIMS\LV\reinforcementChopper.sqf";
		//GOOD ONE// _LVgroup1 = ["Crate_1",3,true,true,1000,"random",true,110,140,5,0.6,60,true,false,false,true,["PATROL","Crate_1",75],false,[0.2,0.7,0.6,1,1,0.8,0.9,0.7,0.8,0.8],nil,nil,1,false,false,["TOHL"]] execVM "TIMS\LV\heliParadrop.sqf";
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
		//START SMOKE
		_smoke = _Smoke_Color createVehicle getPos _supplyBox1;
		_smoke attachto [_supplyBox1,[0,0,+0.87]];
		//START FLARE EVERY 12SECONDS 5 TIMES = 60SECS OF FLARES
		_flare1 = _Flare_Color createVehicle getPos _supplyBox1;
		_flare1 attachto [_supplyBox1,[0,0,+50]];
		uiSleep 12;
		_flare2 = _Flare_Color createVehicle getPos _supplyBox1;
		_flare2 attachto [_supplyBox1,[0,0,+50]];
		uiSleep 12;
		_flare3 = _Flare_Color createVehicle getPos _supplyBox1;
		_flare3 attachto [_supplyBox1,[0,0,+50]];
		uiSleep 12;
		_flare4 = _Flare_Color createVehicle getPos _supplyBox1;
		_flare4 attachto [_supplyBox1,[0,0,+50]];
		uiSleep 12;
		_flare5 = _Flare_Color createVehicle getPos _supplyBox1;
		_flare5 attachto [_supplyBox1,[0,0,+50]];
//============================================////============================================//
	//LOOT
		//_Crate_1
		[_supplyBox1,"WEAPONS"] ExecVM NORMAL_Loot_Setup;
		uiSleep 0.2;
		[_supplyBox1,"MEDIC"] ExecVM NORMAL_Loot_Setup;
		uiSleep 0.1;
		[_supplyBox1,"CONSTRUCTION"] ExecVM NORMAL_Loot_Setup;
		uiSleep 0.1;
		[_supplyBox1,"TOOLS"] ExecVM NORMAL_Loot_Setup;
		uiSleep 0.1;
		[_supplyBox1,"BACKPACKS"] ExecVM NORMAL_Loot_Setup;
		_supplyBox1 setVariable ["ExileMoney",round (random CRATE_MONEY), true];
//============================================////============================================//
	//SKIP OPTIONS IF CRATE IS SOLD
	_CRATE_DAMAGE = CRATE_DAMAGE;
	_supplyBox1 allowDamage _CRATE_DAMAGE;
	_Crate_Time_Counter = CRATE_RESET_TIMER;
	_Start_Timer = 1;
		//START MAIN TIMER
		while {_Start_Timer isEqualTo 1} do 
		{
		  _Crate_Time_Counter = _Crate_Time_Counter -1;
		  uiSleep 1;
			//TIMER EXPIRED
			if (_Crate_Time_Counter <= 0) then 
			{
				//TIMER EXPIRED, EXIT CHECK
				_Start_Timer = 0;
			};
			//CRATE HAS BEEN SOLD OR DESTROYED
			if (!alive _supplyBox1) then 
			{
				//CRATE HAS BEEN SOLD OR DESTROYED, EXIT CHECK
				_Start_Timer = 0;
			};
		};
//============================================////============================================//
	//DELETING EVERYTHING
		//STOP LOOT TRACKER IF STILL RUNNING AND OR RESET VAR FOR NEXT RUN
		LOOT_TRACKER_CFG = 0;
		//DELETE LOOTBOX ONLY IF IT EXIST.
		if (alive _supplyBox1) then 
		{
			deletevehicle _supplyBox1;
		};
		//DELETE MARKERS
		deleteMarker "LootPosition";
		deleteMarker "Crate_1";
		//DELETE AIGROUP
		//nul1 = [LVgroup1] execVM "TIMS\LV\LV_functions\LV_fnc_removeGroupV2.sqf";
//============================================////============================================//
	//MISSION ENDED
		diag_log "-=T.I.M.S=-: EVENT -=CRATE_LOOT=-.sqf- Ended";
		//MAKE SURE TO WAIT HERE FOR MARKER DELETETION FROM LOOT TRACKER THAT IS SET TO 3 SECONDS
		uiSleep CRATE_RESET_TIMER;
		//MISSION ENDED CHECK
			CRATE_LOOTS_1 = 0;
//============================================////============================================//
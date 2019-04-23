//============================================////============================================//
//									 -TIMS- (C130J) by TolH\0908
//============================================////============================================//
//									  -MISSION OBJECTIVES-:
//          	  		1: KILLS THE C130J AND GET THE LOOT IT CARRIES
//============================================////============================================//
//MISSION RUNNING CHECK
	TIMS_MISSION_STARTED = 1;
//============================================//
//SEND MESSAGE TO PLAYER
	MISSION_NOTIFICATION_MSG = "RANDOM_PATROL_C130J_NOTIFICATION"; publicVariable "MISSION_NOTIFICATION_MSG";
	SFX_CUSTOM = "CRATEALERTSFX"; publicVariable "SFX_CUSTOM";
	diag_log "=======================================================================";
	diag_log "-=TIMS_ROAMING=-: -=C130J.sqf=- Started";
	diag_log "=======================================================================";
//============================================//
//
private _GrpSideC130J = createGroup EAST;
private _360random = getMarkerPos "MAINMARKERCOUNTAREA" getPos [5000 * sqrt random 1, random 360];
private _vehC130J = "RHS_C130J";
private _vehJets = "GNT_C185T";
private _vehLoot = "GNT_C185T";
	//CREATE C130J
	private _C130Jspawn = createVehicle [_vehC130J, _360random, [], 0, "FLY"];
	uiSleep 0.3;
	//CREATE CREW FOR VEHICLE
	createVehicleCrew _C130Jspawn;
		{
			uiSleep 0.1;
			_x setCaptive 1;
			[_x] joinSilent _GrpSideC130J;
			_x setSkill 1;
			[_x, "MAINMARKERCOUNTAREA", "delete:", 15] execVM "TIMS_ROAMING_AI\Roaming_AI\UPS.sqf";
			uiSleep 0.1;
			//[_x, _C130Jspawn] execVM "TIMS_ROAMING_AI\Scripts\delete.sqf";
		} forEach crew _C130Jspawn;
	_C130Jspawn setUnloadInCombat [false, false];
	_C130Jspawn allowCrewInImmobile true;
	_C130Jspawn setvehicleammo 1;
	[_C130Jspawn, 240] execVM "TIMS_ROAMING_AI\Roaming_AI\deleteVehicles.sqf";
	_C130Jspawn addEventHandler ["Killed",{ BONUS_VR_HUNT_POINT = BONUS_VR_HUNT_POINT + 10; _this execVM "TIMS_ROAMING_AI\Roaming_AI\EH_KILLED_VEHICLE.sqf"; }];
	uiSleep 3;
	//
	private _Escort1 = createVehicle [_vehJets, _360random, [], 0, "FLY"];
	uiSleep 0.2;
	//CREATE CREW FOR VEHICLE
	createVehicleCrew _Escort1;
		{
			uiSleep 0.1;
			[_x] joinSilent _GrpSideC130J;
			_x setSkill 0.02;
			[_x, "MAINMARKERCOUNTAREA", "delete:", 15] execVM "TIMS_ROAMING_AI\Roaming_AI\UPS.sqf";
			uiSleep 0.1;
		} forEach crew _Escort1;
	_Escort1 setUnloadInCombat [false, false];
	_Escort1 allowCrewInImmobile true;
	_Escort1 setvehicleammo 1;
	[_Escort1, 60] execVM "TIMS_ROAMING_AI\Roaming_AI\deleteVehicles.sqf";
	_Escort1 addEventHandler ["Killed",{ BONUS_VR_HUNT_POINT = BONUS_VR_HUNT_POINT + 10; _this execVM "TIMS_ROAMING_AI\Roaming_AI\EH_KILLED_VEHICLE.sqf"; }];
	uiSleep 3;
	//
	private _Escort2 = createVehicle [_vehJets, _360random, [], 0, "FLY"];
	uiSleep 0.2;
	//CREATE CREW FOR VEHICLE
	createVehicleCrew _Escort2;
		{
			uiSleep 0.1;
			[_x] joinSilent _GrpSideC130J;
			_x setSkill 0.02;
			[_x, "MAINMARKERCOUNTAREA", "delete:", 15] execVM "TIMS_ROAMING_AI\Roaming_AI\UPS.sqf";
			uiSleep 0.1;
		} forEach crew _Escort2;
	_Escort2 setUnloadInCombat [false, false];
	_Escort2 allowCrewInImmobile true;
	_Escort2 setvehicleammo 1;
	[_Escort2, 60] execVM "TIMS_ROAMING_AI\Roaming_AI\deleteVehicles.sqf";
	_Escort2 addEventHandler ["Killed",{ BONUS_VR_HUNT_POINT = BONUS_VR_HUNT_POINT + 10; _this execVM "TIMS_ROAMING_AI\Roaming_AI\EH_KILLED_VEHICLE.sqf"; }];
	uiSleep 2;
	//DISABLE COLLISION FOR PLANE TEAM SO THEY STOP CRASHING INTO EACH OTHERS
	_C130Jspawn disableCollisionWith _Escort1;
	uiSleep 0.1;
	_C130Jspawn disableCollisionWith _Escort2;
	uiSleep 0.1;
	_Escort1 disableCollisionWith _C130Jspawn;
	uiSleep 0.1;
	_Escort2 disableCollisionWith _C130Jspawn;
	uiSleep 0.1;
	_Escort1 disableCollisionWith _Escort2;
	uiSleep 0.1;
	_Escort2 disableCollisionWith _Escort1;
	uiSleep 0.1;
	//CREATE CRATE #1
	private _C130JBox1 = createVehicle [CRATE_TYPE_TIMS, position _C130Jspawn, [], 0, "CAN_COLLIDE"];
	uiSleep 0.1;
	_C130JBox1 allowDamage false;
	_C130JBox1 attachto [_C130Jspawn, [0,13,-12]];
	clearBackpackCargoGlobal _C130JBox1;
	clearMagazineCargoGlobal _C130JBox1;
	clearWeaponCargoGlobal _C130JBox1;
	clearItemCargoGlobal _C130JBox1;
	uiSleep 0.1;
	_C130JBox1 enableSimulation true;
	_C130JBox1 setMass CRATE_MASS_TIMS;
	_C130JBox1 enableRopeAttach true;
	uiSleep 0.1;
	//CREATE A RANDOM VEHICLE REWARD
	_C130Jspawn allowDamage false;
	private _C130JLootVeh1 = createVehicle [_vehLoot, position _C130Jspawn, [], 0, "FLY"];
	_C130Jspawn disableCollisionWith _C130JLootVeh1;
	_C130JLootVeh1 disableCollisionWith _C130Jspawn;
	_C130JLootVeh1 allowDamage false;
	uiSleep 0.1;
	_C130JLootVeh1 attachto [_C130Jspawn, [0,-5,-12]];
	clearBackpackCargoGlobal _C130JLootVeh1;
	clearMagazineCargoGlobal _C130JLootVeh1;
	clearWeaponCargoGlobal _C130JLootVeh1;
	clearItemCargoGlobal _C130JLootVeh1;
	uiSleep 0.1;
	_C130JLootVeh1 enableSimulation true;
	_C130JLootVeh1 enableRopeAttach true;
	_C130JLootVeh1 engineOn false;
	uiSleep 0.1;
	_C130Jspawn allowDamage true;	
//============================================//
//VARS
C130J_LOOP = 1;
private _radiusCnt = 1000;
private _SmokeCoolDown = 0;
private _LOOT_RANDOMIZER = ["EXILEWEAPONS","RHSWEAPONS","SCOPES","MEDIC","CONSTRUCTION","TOOLS","TROPHY","DDR","BACKPACKS"];
//============================================//
//START ALIVE CHECK TO END MISSION
while {C130J_LOOP isEqualTo 1} do 
{
  uiSleep 2;
  private _PlayerAroundChk = ({alive _x AND (side _x) isEqualTo resistance AND (_x distance getPos _C130Jspawn < _radiusCnt)} count allunits);
	if ((_PlayerAroundChk >= 1) && (_SmokeCoolDown isEqualTo 0)) then
	{
		if (alive _C130Jspawn) then 
		{
			private _SmokerandomColorC130J = selectRandom ["SmokeShellBlue","SmokeShellGreen"];
			private _smokeLeftWing1C130J = "SmokeShellRed" createVehicle (position _C130Jspawn); 
			_smokeLeftWing1C130J attachto [_C130Jspawn, [-15,0,-1.2]];
			private _smokeRightWing1C130J = "SmokeShellRed" createVehicle (position _C130Jspawn);
			_smokeRightWing1C130J attachto [_C130Jspawn, [+15,0,-1.2]];
			private _smokeEngine1C130J = _SmokerandomColorC130J createVehicle (position _C130Jspawn);
			_smokeEngine1C130J attachto [_C130Jspawn, [0,-15,-1]];
			uiSleep 0.1;
			private _smokeLeftWing2C130J = "SmokeShellRed" createVehicle (position _C130Jspawn); 
			_smokeLeftWing2C130J attachto [_C130Jspawn, [-15,0,-1.2]];
			private _smokeRightWing2C130J = "SmokeShellRed" createVehicle (position _C130Jspawn);
			_smokeRightWing2C130J attachto [_C130Jspawn, [+15,0,-1.2]];
			private _smokeEngine2C130J = _SmokerandomColorC130J createVehicle (position _C130Jspawn);
			_smokeEngine2C130J attachto [_C130Jspawn, [0,-15,-1]];
			uiSleep 0.2;
			private _smokeLeftWing3C130J = "SmokeShellRed" createVehicle (position _C130Jspawn); 
			_smokeLeftWing3C130J attachto [_C130Jspawn, [-15,0,-1.2]];
			private _smokeRightWing3C130J = "SmokeShellRed" createVehicle (position _C130Jspawn);
			_smokeRightWing3C130J attachto [_C130Jspawn, [+15,0,-1.2]];
			private _smokeEngine3C130J = _SmokerandomColorC130J createVehicle (position _C130Jspawn);
			_smokeEngine3C130J attachto [_C130Jspawn, [0,-15,-1]];
		};
	  uiSleep 0.1;
		if (alive _Escort1) then 
		{
			private _smokeEngine1Escort1 = "SmokeShellRed" createVehicle (position _Escort1);
			_smokeEngine1Escort1 attachto [_Escort1, [0,-5,-1]];
			uiSleep 0.1;
			private _smokeEngine2Escort1 = "SmokeShellRed" createVehicle (position _Escort1);
			_smokeEngine2Escort1 attachto [_Escort1, [0,-5,-1]];
			uiSleep 0.2;
			private _smokeEngine3Escort1 = "SmokeShellRed" createVehicle (position _Escort1);
			_smokeEngine3Escort1 attachto [_Escort1, [0,-5,-1]];
		};
	  uiSleep 0.1;
		if (alive _Escort2) then 
		{
			private _smokeEngine1Escort2 = "SmokeShellRed" createVehicle (position _Escort2);
			_smokeEngine1Escort2 attachto [_Escort2, [0,-5,-1]];
			uiSleep 0.1;
			private _smokeEngine2Escort2 = "SmokeShellRed" createVehicle (position _Escort2);
			_smokeEngine2Escort2 attachto [_Escort2, [0,-5,-1]];
			uiSleep 0.2;
			private _smokeEngine3Escort2 = "SmokeShellRed" createVehicle (position _Escort2);
			_smokeEngine3Escort2 attachto [_Escort2, [0,-5,-1]];
		};
	  uiSleep 0.1;
	  _SmokeCoolDown = 120;
	  diag_log "-=TIMS_ROAMING=-: -=C130J.sqf=- PLAYER NEARBY CHK TEST... SMOKE FIRED!!!";
	};
	if !(alive _C130Jspawn) then
	{
		detach _C130JBox1;
		detach _C130JLootVeh1;
		//TEST CRATE BOOST UP AFTER PLANE DIES SO PARACHUTE ANIMATION HAPPENS IN THE AIR INSTEAD OF SOMETIMES ON THE GROUND
		_C130JBox1 disableCollisionWith _C130Jspawn;
		_C130JLootVeh1 disableCollisionWith _C130Jspawn;
		private _dirLoot = random(360);
		private _speedLoot = 30;
		_C130JBox1 setVelocity [_speedLoot * sin(_dirLoot), _speedLoot * cos(_dirLoot),45];
		uiSleep 0.5;
		_C130JLootVeh1 setVelocity [_speedLoot * sin(_dirLoot), _speedLoot * cos(_dirLoot),45];
		uiSleep 5;
		private _para1 = createVehicle ["o_parachute_02_F", position _C130JBox1, [], 0, 'FORM'];
		_para1 setPos (getPos _C130JBox1);
		_C130JBox1 attachTo [_para1, [0, 0, 1.65]];
		private _para2 = createVehicle ["o_parachute_02_F", position _C130JLootVeh1, [], 0, 'FORM'];
		_para2 setPos (getPos _C130JLootVeh1);
		_C130JLootVeh1 attachTo [_para2, [0, 0, 1.65]];
		//START PRE-SMOKES/FLARES
		private _PREsmoke1 = "SmokeShellRed" createVehicle getPos _C130JBox1;
		_PREsmoke1 attachto [_C130JBox1,[0,0,+0.87]];
		private _PREsmoke2 = "SmokeShellGreen" createVehicle getPos _C130JLootVeh1;
		_PREsmoke2 attachto [_C130JLootVeh1,[0,0,+0.87]];
		private _PREflare1 = "F_40mm_Red" createVehicle getPos _C130JBox1;
		_PREflare1 attachto [_C130JBox1,[0,0,+50]];
		private _PREflare2 = "F_40mm_Green" createVehicle getPos _C130JLootVeh1;
		_PREflare2 attachto [_C130JLootVeh1,[0,0,+50]];
		private _LootRndAmount = round (4 + random 3);
		_C130JBox1 allowDamage true;
		_C130JLootVeh1 allowDamage true;
		//SETUP LOOT CRATE#1
		[_C130JBox1,"TROPHY"] ExecVM NORMAL_Loot_Setup;
		uiSleep 2;
		_C130JBox1 setVariable ["ExileMoney",round (random CRATE_MONEY_TIMS), true];
		uiSleep 0.1;
		for "_x" from 1 to _LootRndAmount do 
		{
			//SETUP LOOT CRATE#1
			[_C130JBox1,selectRandom _LOOT_RANDOMIZER] ExecVM NORMAL_Loot_Setup;
			uiSleep 3;
		};
		//(Crate_1 MARKER)
			private _Crate_1 = createMarker ["Crate_1", getPos _C130JBox1];
			"Crate_1" setMarkerSize [1.00,1.00];
			"Crate_1" setMarkerColor "ColorRed";
			"Crate_1" setMarkerType "respawn_para";
			"Crate_1" setMarkerText "";
		//(Vehicle MARKER)
			private _VehLoot = createMarker ["Veh_Loot", getPos _C130JLootVeh1];
			"Veh_Loot" setMarkerSize [1.00,1.00];
			"Veh_Loot" setMarkerColor "ColorGreen";
			"Veh_Loot" setMarkerType "n_mech_inf";
			"Veh_Loot" setMarkerText "";
			[_C130JBox1, "Crate_1"] execVM LOOT_MARKER;
			uiSleep 0.1;
			[_C130JLootVeh1, "Veh_Loot"] execVM LOOT_MARKER;
			uiSleep 0.1;
		//FLARES+SMOKE COLORS
			private _Smoke_Color1 = "SmokeShellRed";
			private _Smoke_Color2 = "SmokeShellGreen";
			private _Flare1_Color = "F_40mm_Red";
			private _Flare2_Color = "F_40mm_Green";
		//START SMOKE
			private _smoke1 = _Smoke_Color1 createVehicle getPos _C130JBox1;
					_smoke1 attachto [_C130JBox1,[0,0,+0.87]];
			private _smoke2 = _Smoke_Color2 createVehicle getPos _C130JLootVeh1;
					_smoke2 attachto [_C130JLootVeh1,[0,0,+0.87]];
		//START FLARE EVERY 12SECONDS 5 TIMES = 60SECS OF FLARES
		for "_x" from 1 to 5 do 
		{
			private _flare1 = _Flare1_Color createVehicle getPos _C130JBox1;
					_flare1 attachto [_C130JBox1,[0,0,+50]];
			private _flare2 = _Flare2_Color createVehicle getPos _C130JLootVeh1;
					_flare2 attachto [_C130JLootVeh1,[0,0,+50]];
			uiSleep 12;
		};
		C130J_LOOP = 0;
	};
	if (_SmokeCoolDown > 0) then 
	{
		_SmokeCoolDown = _SmokeCoolDown -2;
	};
};
uiSleep 1200;
if (alive _C130JBox1) then 
{
	deleteVehicle _C130JBox1;
};
if (alive _C130JLootVeh1) then 
{
	deleteVehicle _C130JLootVeh1;
};
if (alive _Escort1) then 
{
	deleteVehicle _Escort1;
};
if (alive _Escort2) then 
{
	deleteVehicle _Escort2;
};
//MISSION RUNNING CHECK
diag_log "-=TIMS_ROAMING=-: -=C130J.sqf=- ENDED!!!";
TIMS_MISSION_STARTED = 0;
//============================================//
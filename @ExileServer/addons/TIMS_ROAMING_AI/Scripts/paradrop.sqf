/*
[0] execVM "TIMS_ROAMING_AI\Roaming_AI\paradrop.sqf";   "o_parachute_02_F" BIG  "I_Heli_Transport_02_F","B_Heli_Transport_01_camo_F",
*/
//===========================================//
private _VehicleSpawn = _this select 0;
private _heliType = ["RHS_C130J"] call BIS_fnc_selectRandom;
private _heliDistance = 4500;
private _flyHeight = 150;
private _jumpDistanceFromTarget = 325;
private _openHeight = 75;
private _smokes = true;
private _landingSpot = [playableUnits] call BIS_fnc_selectRandom;
private _landingSpotPos = getPos (selectRandom _landingSpot);
//"ROAMINGAIPARAPATROL" setmarkerpos _landingSpotPos;
//===========================================//
//Spawn chopper
private _GrpSideParadrop = createGroup EAST;
private _heliDirection = random 360;
private _spos = [(_landingSpotPos select 0) + (sin _heliDirection) * _heliDistance, (_landingSpotPos select 1) + (cos _heliDirection) * _heliDistance, _flyHeight];
private _heli = createVehicle [_heliType, _spos, [], 0, "FLY"];
	createVehicleCrew _heli;
	{
		_x setCaptive 1;
		[_x] joinSilent _GrpSideParadrop;
		_x setSkill 1;
		uiSleep 0.1;
	}forEach crew _heli;
[_heli, 240] execVM "TIMS_ROAMING_AI\Roaming_AI\deleteVehicles.sqf";
_heli addEventHandler ["Killed",{ BONUS_VR_HUNT_POINT = BONUS_VR_HUNT_POINT + 10; _this execVM "TIMS_ROAMING_AI\Roaming_AI\EH_KILLED_VEHICLE.sqf"; }];
//===========================================//
//Count angle between chopper and target, and end spot for chopper
private _dir = ((_landingSpotPos select 0) - (_spos select 0)) atan2 ((_landingSpotPos select 1) - (_spos select 1));
private _flySpot = [(_landingSpotPos select 0) + (sin _dir) * _heliDistance, (_landingSpotPos select 1) + (cos _dir) * _heliDistance, _flyHeight];
//===========================================//
//WAYPOINTS
private _wp0 = _GrpSideParadrop addWaypoint [_landingSpotPos, 0, 1];
[_GrpSideParadrop,1] setWaypointBehaviour "CARELESS";
[_GrpSideParadrop,1] setWaypointCombatMode "BLUE";
[_GrpSideParadrop,1] setWaypointCompletionRadius 60;
private _wp1 = _GrpSideParadrop addWaypoint [_flySpot, 0, 2];
[_GrpSideParadrop,2] setWaypointBehaviour "CARELESS";
[_GrpSideParadrop,2] setWaypointCombatMode "BLUE";
[_GrpSideParadrop,2] setWaypointCompletionRadius 5000;
_heli flyInHeight _flyHeight;
//===========================================//
//Make heli & crew dissapear if something goes wrong or if heli is at its end spot
[_heli,_GrpSideParadrop,_flySpot,_landingSpotPos,_heliDistance] spawn {
	params ["_heli","_GrpSideParadrop","_flySpot","_landingSpotPos","_heliDistance"];
	while{([_heli, _flySpot] call BIS_fnc_distance2D)>200}do{
		if(!alive _heli || !canMove _heli)exitWith{};
		uiSleep 5;
	};
	waitUntil{([_heli, _landingSpotPos] call BIS_fnc_distance2D)>(_heliDistance * .5)};
	{_heli deleteVehicleCrew _x} forEach crew _heli;
	deleteVehicle _heli;
};
//===========================================//
//Wait till it's close enough
waitUntil{([_heli, _landingSpotPos] call BIS_fnc_distance2D)<_jumpDistanceFromTarget};
//===========================================//
//Create para group
_GrpSidePara = createGroup EAST;
_CountForVehicle = 0;
private _RandomAmountPara = round (3 + random 5);
for "_x" from 1 to _RandomAmountPara do 
{
	private _randomMEN = selectRandom AI_ROAMING_MEN_CHOICE;
	private _PARA_AI_SKILLS_ROAMING = selectRandom AI_SKILLS_ROAMING_RND;
	private _man2 = _GrpSidePara createUnit [_randomMEN, [(getPos _heli) select 0,(getPos _heli) select 1, ((getPos _heli) select 2) - 3], [], 1, "FORM"];
	uiSleep 0.06;
	[_man2] joinSilent _GrpSidePara;
	_man2 setPos [(getPos _heli) select 0,(getPos _heli) select 1, ((getPos _heli) select 2) - 3];
	uiSleep 0.06;
	_man2 setSkill _PARA_AI_SKILLS_ROAMING;
	_man2 setVariable ["ExileMoney",round (random AI_MONEY_DROP), true];
	[_man2, "MAINMARKERCOUNTAREA", "NOWAIT", "delete:", 300] execVM "TIMS_ROAMING_AI\Roaming_AI\UPS.sqf";
	uiSleep 0.06;
	_man2 addEventHandler ["Killed",{ BONUS_VR_HUNT_POINT = BONUS_VR_HUNT_POINT + 1; ROAMING_PARA_COUNT = ROAMING_PARA_COUNT - 1; _this execVM "TIMS_ROAMING_AI\Roaming_AI\EH_KILLED_FOOT.sqf"; }];
	uiSleep 0.06;
	ROAMING_PARA_COUNT = ROAMING_PARA_COUNT + 1;
	[_man2,_heli,_openHeight,_smokes] spawn{
		params ["_man2","_heli","_openHeight","_smokes","_smoke","_para"];
		waitUntil{((getPos _man2)select 2)<_openHeight};
		_para = createVehicle ["Steerable_Parachute_F", position _man2, [], ((direction _heli)-25+(random 50)), 'NONE'];
		_para setPos (getPos _man2);
		_man2 moveInDriver _para;
		if (_smokes) then 
		{
			waitUntil{((getPos _man2)select 2)<15};
			_RandomSmokeChance = round (random 100);
			//SMOKE 50% CHANCE
			if (_RandomSmokeChance <= 40) then 
			{
				_smokeColors = ["SmokeShell","SmokeShellRed","SmokeShellGreen","SmokeShellBlue"] call BIS_fnc_selectRandom;
				_smoke = _smokeColors createVehicle (getPos _man2);
			};
		};
	};
  uiSleep 0.15;
  if ((_VehicleSpawn isEqualTo 1) && (_CountForVehicle isEqualTo 7)) then 
  {
	_GrpSideParaVec = createGroup EAST;
	private _PARAV_AI_SKILLS_ROAMING = selectRandom AI_SKILLS_ROAMING_RND;
	private _RandomGroundVehicle = createVehicle [selectRandom AI_ROAMING_GROUND_CHOICE, [(getPos _heli) select 0,(getPos _heli) select 1, ((getPos _heli) select 2) - 3], [], 1, "FORM"];
	uiSleep 0.2;
	[_RandomGroundVehicle, 240] execVM "TIMS_ROAMING_AI\Roaming_AI\deleteVehicles.sqf";
	_RandomGroundVehicle addEventHandler ["Killed",{ BONUS_VR_HUNT_POINT = BONUS_VR_HUNT_POINT + 5; ROAMING_GROUND_COUNT = ROAMING_GROUND_COUNT - 1; _this execVM "TIMS_ROAMING_AI\Roaming_AI\EH_KILLED_VEHICLE.sqf"; }];
	ROAMING_GROUND_COUNT = ROAMING_GROUND_COUNT + 1;
	_RandomGroundVehicle setPos [(getPos _heli) select 0,(getPos _heli) select 1, ((getPos _heli) select 2) - 3];
	createVehicleCrew _RandomGroundVehicle;
	{
		[_x] joinSilent _GrpSideParaVec;
		_x setSkill _PARAV_AI_SKILLS_ROAMING;
		[_x, "MAINMARKERCOUNTAREA", "NOWAIT", "delete:", 60] execVM "TIMS_ROAMING_AI\Roaming_AI\UPS.sqf";
		uiSleep 0.2;
	}forEach crew _RandomGroundVehicle;
	_RandomGroundVehicle setUnloadInCombat [false, false];
	[_RandomGroundVehicle,_heli,_openHeight,_smokes] spawn{
		params ["_RandomGroundVehicle","_heli","_openHeight","_smokes","_smoke","_para"];
		waitUntil{((getPos _RandomGroundVehicle)select 2)<_openHeight};
		_para = createVehicle ["o_parachute_02_F", position _RandomGroundVehicle, [], ((direction _heli)-25+(random 50)), 'FORM'];
		_para setPos (getPos _RandomGroundVehicle);
		_RandomGroundVehicle attachTo [_para, [0, 0, 1.65]];
	};
	uiSleep 0.15;
  };
  _CountForVehicle = _CountForVehicle + 1;
};
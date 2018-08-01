//ARMA3Alpha function LV_fnc_fullLandVehicle v2.0 - by SPUn / Kaarto Media
//Spawns random vehicle full of units and returns the driver 
private ["_hq","_veh","_grp","_roads","_radius","_pos1","_man1","_man","_i","_pos","_side","_vehSpots","_vehicle","_vCrew","_crew","_driver","_classModuleFilters","_cMember","_clean"];
_pos = param [0,[0,0,0]];
_side = param [1,0];
_classModuleFilters = param [2,[]];
_syncedUnit = param [3,nil];
_dissapearDistance = param [4,nil];
_clean = param [5,false];


_vehTANK = ["O_MBT_02_cannon_F", "O_APC_Tracked_02_cannon_F", "O_MBT_02_arty_F"];

_veh = selectRandom _vehTANK;
_vehSpots = getNumber (configFile >> "CfgVehicles" >> _veh >> "transportSoldier");
_pos = [(getMarkerPos "Missionmarker1"), 400, 900, 10, 0, 100, 0] call BIS_fnc_findSafePos;
uiSleep 1;

_vehicle = createVehicle [_veh, _pos, [], 0, "NONE"];
if(_clean)then{
	_vehicle setVariable ["syncedUnit",_syncedUnit,false];
	_vehicle setVariable ["dissapearDistance",_dissapearDistance,false];
	_vehicle addEventHandler ["killed", {_this execVM "TIMS\LV\LV_functions\LV_fnc_ACAIkilled.sqf"}];
};
_vehicle setPos _pos;

_vehicle allowDamage false;
uiSleep 1;
if(((vectorUp _vehicle) select 2) != 0)then{ _vehicle setvectorup [0,0,0]; };
uiSleep 1;
_vehicle allowDamage true;


_newGroupOPFOR = createGroup EAST;

_vCrew = [_vehicle, _newGroupOPFOR] call BIS_fnc_spawnCrew;
_crew = crew _vehicle;
[_crew] joinSilent _newGroupOPFOR;
if(_clean)then{
	for "_i" from 0 to ((count _crew) - 1) do{
		_cMember = _crew select _i;
		_cMember setVariable ["syncedUnit",_syncedUnit,false];
		_cMember setVariable ["dissapearDistance",_dissapearDistance,false];
		_cMember addEventHandler ["killed", {_this execVM "TIMS\LV\LV_functions\LV_fnc_ACAIkilled.sqf"}];
	};
};
/*
if(_vehSpots > 0)then{
	_i = 1; 
	for "_i" from 1 to _vehSpots do {
		_man1 = getText (configFile >> "CfgVehicles" >> _veh >> "crew");
		_man = _newGroupOPFOR createUnit [_man1, _pos, [], 0, "NONE"];
		_man moveInCargo _vehicle;
		[_man] joinSilent _newGroupOPFOR;
		if(_clean)then{
			_man setVariable ["syncedUnit",_syncedUnit,false];
			_man setVariable ["dissapearDistance",_dissapearDistance,false];
			_man addEventHandler ["killed", {_this execVM "TIMS\LV\LV_functions\LV_fnc_ACAIkilled.sqf"}];
		};
		uiSleep 0.5;
	};
};*/

_driver = driver _vehicle;
_driver
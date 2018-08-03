//============================================////============================================//
/*
											-=TolH=- 
						Usage: 	["SpawnType", "marker", 300, 900, _amount] ExecVM SPAWN_TANK;
									 VEHICLE SPAWNER BY TYPE
	Usage: _tankTeam1 = ["SpawnType","MARKER", _MinDist, _MaxDist, _TankTeamSize, _Grp] ExecVM AI_SPAWNER;
*/
//============================================////============================================//
private ["_SpawnType","_MarkerPOS","_MinPos","_MaxPos","_amount","_Grp",						//MAIN SELECTION
		 "_TankRandomPos","_randomTank","_TankVehicle","_TankDriver","_TankGunner","_TankCmd",	//TANK SPAWNER
		 "_MortarRandomPos","_MortarVehicle","_unitMR","_Mortar_Dir",							//MORTAR SPAWNER
		 "_AARandomPos","_AAVehicle","_unitAA","_AA_Dir"];										//AA SPAWNER
//============================================//
	_SpawnType =		_this select 0;
	_MarkerPos = 		_this select 1;
	_MinPos = 			_this select 2;
	_MaxPos = 			_this select 3;
	_amount = 			_this select 4;
	_Grp = 				_this select 5;
//============================================//
//============================================////============================================//
//============================================//
//TANK TEAM SPAWNER
//============================================//
if (_SpawnType isEqualTo "TANK") then 
{
	_TankRandomPos = [(getMarkerPos _MarkerPos), _MinPos, _MaxPos, 20, 0, 0.4, 0] call BIS_fnc_findSafePos;
	for "_x" from 0 to _amount-1 do 
	{
		_randomTank = selectRandom TANK_AI_LIST;
		_TankVehicle = createVehicle [_randomTank, _TankRandomPos, [], 0, "NONE"];
		_TankVehicle allowDamage false;
		if (((vectorUp _TankVehicle) select 2) != 0) then 
		{ 
			_TankVehicle setvectorup [0,0,0];
		};
		_TankVehicle addEventHandler ["Killed",{_this execVM "TIMS\-=AI_SCRIPT=-\EH_AI_TANK_KILLED.sqf"}];
		uiSleep 0.5;
			//DRIVER
			_TankDriver = _Grp createUnit ["O_G_Soldier_M_F", _TankVehicle, [], 1, "FORM"];
			_TankDriver moveInDriver _TankVehicle;
			_TankDriver setSkill AI_SKILLS_TANK;
			_TankDriver setBehaviour "AWARE";
			_TankDriver setCombatMode "RED";
			_TankDriver addEventHandler ["Killed",{_this execVM "TIMS\-=AI_SCRIPT=-\EH_AI_CREW_KILLED.sqf"}];
			[_TankDriver] joinSilent _Grp;
			uiSleep 0.5;
			nul1=[_TankDriver, "PatrolMarker"] execVM "TIMS\-=AI_SCRIPT=-\UPS.sqf";
			uiSleep 1;
			//GUNNER
			_TankGunner = _Grp createUnit ["O_G_Soldier_M_F", _TankVehicle, [], 1, "FORM"];
			_TankGunner moveInGunner _TankVehicle;
			_TankGunner setSkill AI_SKILLS_TANK;
			_TankGunner setBehaviour "AWARE";
			_TankGunner setCombatMode "RED";
			_TankGunner addEventHandler ["Killed",{_this execVM "TIMS\-=AI_SCRIPT=-\EH_AI_CREW_KILLED.sqf"}];
			[_TankGunner] joinSilent _Grp;
			uiSleep 0.5;
			nul2=[_TankGunner, "PatrolMarker"] execVM "TIMS\-=AI_SCRIPT=-\UPS.sqf";
			uiSleep 0.5;
			//COMMANDER
			_TankCmd = _Grp createUnit ["O_G_Soldier_M_F", _TankVehicle, [], 1, "FORM"];
			_TankCmd moveInCommander  _TankVehicle;
			_TankCmd setSkill AI_SKILLS_TANK;
			_TankCmd setBehaviour "AWARE";
			_TankCmd setCombatMode "RED";
			_TankCmd addEventHandler ["Killed",{_this execVM "TIMS\-=AI_SCRIPT=-\EH_AI_CREW_KILLED.sqf"}];
			[_TankCmd] joinSilent _Grp;
			uiSleep 0.5;
			nul3=[_TankCmd, "PatrolMarker"] execVM "TIMS\-=AI_SCRIPT=-\UPS.sqf";
			_TankVehicle allowDamage true;
		uiSleep 0.5;
	};
};
//============================================//
//PLANES TEAM SPAWNER
//============================================//
if (_SpawnType isEqualTo "PLANE") then 
{
	_PlaneRandomPos = [(getMarkerPos _MarkerPos), _MinPos, _MaxPos, 20, 0, 1, 0] call BIS_fnc_findSafePos;
	//_PlaneRandomPos2 = [(_PlaneRandomPos1 select 0), (_PlaneRandomPos1 select 1), (_PlaneRandomPos1 select 2)+200];
	for "_x" from 0 to _amount-1 do 
	{
		_randomPlane = selectRandom PLANE_AI_LIST;
		_PlaneVehicle = createVehicle [_randomPlane, _PlaneRandomPos, [], 0, "FLY"];
		_PlaneVehicle allowDamage false;
		_PlaneVehicle addEventHandler ["Killed",{_this execVM "TIMS\-=AI_SCRIPT=-\EH_AI_TANK_KILLED.sqf"}];
			//DRIVER
			_PlaneDriver = _Grp createUnit ["O_G_Soldier_M_F", _PlaneVehicle, [], 1, "FORM"];
			_PlaneDriver moveInDriver _PlaneVehicle;
			_PlaneDriver setSkill AI_SKILLS_PLANE;
			_PlaneDriver setBehaviour "AWARE";
			_PlaneDriver setCombatMode "RED";
			_PlaneDriver addEventHandler ["Killed",{_this execVM "TIMS\-=AI_SCRIPT=-\EH_AI_CREW_KILLED.sqf"}];
			[_PlaneDriver] joinSilent _Grp;
			uiSleep 0.5;
			nul1=[_PlaneDriver, "PatrolMarker"] execVM "TIMS\-=AI_SCRIPT=-\UPS.sqf";
			_PlaneVehicle allowDamage true;
		uiSleep 0.5;
	};
};
//============================================//
//BOAT TEAM SPAWNER
//============================================//
if (_SpawnType isEqualTo "BOAT") then 
{
	//
};
//============================================//
//MORTAR TEAM SPAWNER
//============================================//

if (_SpawnType isEqualTo "MORTAR") then 
{
	_Mortar_Dir = 0;
	_MortarRandomPos = [(getMarkerPos _MarkerPos), _MinPos, _MaxPos, 15, 0, 0.1, 0] call BIS_fnc_findSafePos;
	for "_x" from 0 to _amount+2 do 
	{
		_MortarVehicle = "O_G_Mortar_01_F" createVehicle _MortarRandomPos;
		_MortarVehicle allowDamage false;
		_MortarVehicle setDir _Mortar_Dir;
		if (((vectorUp _MortarVehicle) select 2) != 0) then 
		{ 
			_MortarVehicle setvectorup [0,0,0];
		};
		_MortarVehicle allowDamage true;
		_MortarVehicle addEventHandler ["Killed",{_this execVM "TIMS\-=AI_SCRIPT=-\EH_AI_OTHER_KILLED.sqf"}];
		_unitMR = _Grp createUnit ["O_G_Soldier_M_F", _MortarVehicle, [], 1, "FORM"];
		_unitMR moveInGunner _MortarVehicle;
		_unitMR allowFleeing 0;
		_unitMR setSkill AI_SKILLS_MORTAR_UNIT;
		_unitMR setBehaviour "AWARE";
		_unitMR setCombatMode "RED";
		_unitMR setVariable ["ExileMoney",round (random AI_MONEY_DROP), true];
		_unitMR addEventHandler ["Killed",{_this execVM "TIMS\-=AI_SCRIPT=-\EH_AI_MEN_KILLED.sqf"}];
		[_unitMR] joinSilent _Grp;
		_Mortar_Dir = _Mortar_Dir +90;
		uiSleep 1;
	};
};
//============================================//
//AA TEAM SPAWNER
//============================================//
if (_SpawnType isEqualTo "AA") then 
{
	_AA_Dir = 0;
	_AARandomPos = [(getMarkerPos _MarkerPos), _MinPos, _MaxPos, 15, 0, 0.1, 0] call BIS_fnc_findSafePos;
	for "_x" from 0 to _amount+2 do 
	{
		_AAVehicle = "O_static_AA_F" createVehicle _AARandomPos;
		_AAVehicle allowDamage false;
		_AAVehicle setDir _AA_Dir;
		if (((vectorUp _AAVehicle) select 2) != 0) then 
		{ 
			_AAVehicle setvectorup [0,0,0];
		};
		_AAVehicle allowDamage true;
		_AAVehicle addEventHandler ["Killed",{_this execVM "TIMS\-=AI_SCRIPT=-\EH_AI_OTHER_KILLED.sqf"}];
		_unitAA = _Grp createUnit ["O_G_Soldier_M_F", _AAVehicle, [], 1, "FORM"];
		_unitAA moveInGunner _AAVehicle;
		_unitAA allowFleeing 0;
		_unitAA setSkill AI_SKILLS_AA_UNIT;
		_unitAA setBehaviour "AWARE";
		_unitAA setCombatMode "RED";
		_unitAA setVariable ["ExileMoney",round (random AI_MONEY_DROP), true];
		_unitAA addEventHandler ["Killed",{_this execVM "TIMS\-=AI_SCRIPT=-\EH_AI_MEN_KILLED.sqf"}];
		[_unitAA] joinSilent _Grp;
		_AA_Dir = _AA_Dir +90;
		uiSleep 1;
	};
};
//============================================//
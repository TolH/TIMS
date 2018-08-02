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
		 "_MortarRandomPos","_MortarVehicle","_unitMR",											//MORTAR SPAWNER
		 "_AARandomPos","_AAVehicle","_unitAA"];												//AA SPAWNER
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
	_TankRandomPos = [(getMarkerPos _MarkerPos), _MinPos, _MaxPos, 20, 0, 20, 0] call BIS_fnc_findSafePos;
	for "_x" from 0 to _amount do 
	{
		_randomTank = selectRandom TANK_AI_LIST;
		_TankVehicle = createVehicle [_randomTank, _TankRandomPos, [], 0, "NONE"];
		_TankVehicle allowDamage false;
		if (((vectorUp _TankVehicle) select 2) != 0) then 
		{ 
			_TankVehicle setvectorup [0,0,0];
		};
		_TankVehicle allowDamage true;
		_TankVehicle addEventHandler ["Killed",{_this execVM "TIMS\-=AI_SCRIPT=-\EH_AI_TANK_KILLED.sqf"}];
		uiSleep 0.1;
			//DRIVER
			_TankDriver = _Grp createUnit ["O_G_Soldier_M_F", _TankVehicle, [], 1, "FORM"];
			_TankDriver moveInDriver _TankVehicle;
			_TankDriver setSkill AI_SKILLS_TANK;
			_TankDriver setBehaviour "AWARE";
			_TankDriver setCombatMode "RED";
			_TankDriver addEventHandler ["Killed",{_this execVM "TIMS\-=AI_SCRIPT=-\EH_AI_CREW_KILLED.sqf"}];
			[_TankDriver] joinSilent _Grp;
			uiSleep 0.2;
			//GUNNER
			_TankGunner = _Grp createUnit ["O_G_Soldier_M_F", _TankVehicle, [], 1, "FORM"];
			_TankGunner moveInGunner _TankVehicle;
			_TankGunner setSkill AI_SKILLS_TANK;
			_TankGunner setBehaviour "AWARE";
			_TankGunner setCombatMode "RED";
			_TankGunner addEventHandler ["Killed",{_this execVM "TIMS\-=AI_SCRIPT=-\EH_AI_CREW_KILLED.sqf"}];
			[_TankGunner] joinSilent _Grp;
			uiSleep 0.2;
			//COMMANDER
			_TankCmd = _Grp createUnit ["O_G_Soldier_M_F", _TankVehicle, [], 1, "FORM"];
			_TankCmd moveInCommander  _TankVehicle;
			_TankCmd setSkill AI_SKILLS_TANK;
			_TankCmd setBehaviour "AWARE";
			_TankCmd setCombatMode "RED";
			_TankCmd addEventHandler ["Killed",{_this execVM "TIMS\-=AI_SCRIPT=-\EH_AI_CREW_KILLED.sqf"}];
			[_TankCmd] joinSilent _Grp;
		uiSleep 0.5;
	};
};
//============================================//
//MORTAR TEAM SPAWNER
//============================================//
if (_SpawnType isEqualTo "MORTAR") then 
{
	_MortarRandomPos = [(getMarkerPos _MarkerPos), _MinPos, _MaxPos, 10, 0, 5, 0] call BIS_fnc_findSafePos;
	for "_x" from 0 to _amount+2 do 
	{
		private _MortarVehicle = "O_G_Mortar_01_F" createVehicle _MortarRandomPos;
		_MortarVehicle allowDamage false;
		_MortarVehicle setDir random 360;
		if (((vectorUp _MortarVehicle) select 2) != 0) then 
		{ 
			_MortarVehicle setvectorup [0,0,0];
		};
		_MortarVehicle allowDamage true;
		_MortarVehicle addEventHandler ["Killed",{_this execVM "TIMS\-=AI_SCRIPT=-\EH_AI_OTHER_KILLED.sqf"}];
		private _unitMR = _Grp createUnit ["O_G_Soldier_M_F", _MortarVehicle, [], 1, "FORM"];
		_unitMR moveInGunner _MortarVehicle;
		_unitMR allowFleeing 0;
		_unitMR setSkill AI_SKILLS_MORTAR_UNIT;
		_unitMR setBehaviour "AWARE";
		_unitMR setCombatMode "RED";
		_unitMR setVariable ["ExileMoney",round (random AI_MONEY_DROP), true];
		_unitMR addEventHandler ["Killed",{_this execVM "TIMS\-=AI_SCRIPT=-\EH_AI_MEN_KILLED.sqf"}];
		[_unitMR] joinSilent _Grp;
		uiSleep 1;
	};
};
//============================================//
//AA TEAM SPAWNER
//============================================//
if (_SpawnType isEqualTo "AA") then 
{
	_AARandomPos = [(getMarkerPos _MarkerPos), _MinPos, _MaxPos, 10, 0, 2, 0] call BIS_fnc_findSafePos;
	for "_x" from 0 to _amount+2 do 
	{
		private _AAVehicle = "O_static_AA_F" createVehicle _AARandomPos;
		_AAVehicle allowDamage false;
		_AAVehicle setDir random 360;
		if (((vectorUp _AAVehicle) select 2) != 0) then 
		{ 
			_AAVehicle setvectorup [0,0,0];
		};
		_AAVehicle allowDamage true;
		_AAVehicle addEventHandler ["Killed",{_this execVM "TIMS\-=AI_SCRIPT=-\EH_AI_OTHER_KILLED.sqf"}];
		private _unitAA = _Grp createUnit ["O_G_Soldier_M_F", _AAVehicle, [], 1, "FORM"];
		_unitAA moveInGunner _AAVehicle;
		_unitAA allowFleeing 0;
		_unitAA setSkill AI_SKILLS_AA_UNIT;
		_unitAA setBehaviour "AWARE";
		_unitAA setCombatMode "RED";
		_unitAA setVariable ["ExileMoney",round (random AI_MONEY_DROP), true];
		_unitAA addEventHandler ["Killed",{_this execVM "TIMS\-=AI_SCRIPT=-\EH_AI_MEN_KILLED.sqf"}];
		[_unitAA] joinSilent _Grp;
		uiSleep 1;
	};
};
//============================================//
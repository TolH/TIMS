//============================================////============================================//
/*
											-=TolH=- 
						Usage: 	["marker", 4, grp] ExecVM SPAWN_TANK;
									 SPAWN x AMOUNT OF TANKS
*/
//============================================////============================================//
private ["_MarkerPOS","_amount","_GrpSideTank","_amountFix","_TankRandomPos","_randomTank","_vehicle","_TankDriver"];
	_MarkerPOS = _this select 0;		// FIRST ELEMENT    == POSITION
	_amount = _this select 1;			// SECOND ELEMENT    == AMOUNT
//============================================////============================================//
	_GrpSideTank = createGroup EAST;
	_amountFix = _amount -1;
	for "_x" from 0 to _amountFix do 
	{
		_TankRandomPos = [(getMarkerPos _MarkerPOS), 300, 900, 25, 0, 20, 0] call BIS_fnc_findSafePos;
		_randomTank = selectRandom TANK_AI_LIST;
		_vehicle = createVehicle [_randomTank, _TankRandomPos, [], 0, "NONE"];
		_TankDriver = _GrpSideTank createUnit ["O_G_Soldier_M_F", _vehicle, [], 1, "FORM"];
			_vehicle addEventHandler ["Killed",{_this execVM "TIMS\custom\AIKilled.sqf"}];
			_vehicle allowDamage false;
			_TankDriver moveInDriver _vehicle;
			_TankDriver setSkill AI_SKILLS_TANK;
			_TankDriver setBehaviour "AWARE";
			_TankDriver setCombatMode "RED";
			[_TankDriver] joinSilent _GrpSideTank;
			if (((vectorUp _vehicle) select 2) != 0) then 
			{ 
				_vehicle setvectorup [0,0,0];
			};
			_vehicle allowDamage true;
		uiSleep 1;
	};
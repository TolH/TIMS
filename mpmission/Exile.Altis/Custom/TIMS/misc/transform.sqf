//	getPosATL && setPosATL  	= FOR GROUND
//	getPosASLW && setPosASLW  	= FOR WATER
_vehicle = vehicle player;
_vel = velocity player; 
_dirPlayer = direction player;
_speed = 1;
_speedBoat = 1;
_speedTank = -0.8;
_speedTank2 = 0.8;
_speedAir = 50;
_isWater = surfaceIsWater position player;
	if ((typeOf vehicle player == "I_Plane_Fighter_03_dynamicLoadout_F") && (!_isWater)) exitWith 
	{
		_VehPos1 = [getPosATL player select 0, getPosATL player select 1, getPosATL player select 2];
		deletevehicle _vehicle;
		player allowDamage false;
		deletevehicle _vehicle;
		_Ground_Transform_Vehicle = "rhsusf_m1043_w_mk19" createVehicle _VehPos1;
		_Ground_Transform_Vehicle allowDamage false;
		_Ground_Transform_Vehicle setPosATL _VehPos1;
		_Ground_Transform_Vehicle engineOn true;
		player moveInDriver _Ground_Transform_Vehicle;
		addCamShake [6, 3, 15];
		_Ground_Transform_Vehicle setDir _dirPlayer;
		_Ground_Transform_Vehicle setVelocity 
			[ 
				(_vel select 0) + (sin _dirPlayer * _speed),
				(_vel select 1) + (cos _dirPlayer * _speed),
				(_vel select 2)
			];
		_Ground_Transform_Vehicle addEventHandler ["Killed",{(_this select 0) spawn {uiSleep 5; deleteVehicle _this}}];
		clearBackpackCargoGlobal _Ground_Transform_Vehicle;
		clearMagazineCargoGlobal _Ground_Transform_Vehicle;
		clearWeaponCargoGlobal _Ground_Transform_Vehicle;
		clearItemCargoGlobal _Ground_Transform_Vehicle;
		uiSleep 3;
		//CREATE CREW FOR mk19
		//_Grp = createGroup resistance;
		_Grp = group player;
		createVehicleCrew _Ground_Transform_Vehicle;
			{
				[_x] joinSilent _Grp;
				_x setSkill 1;
				_x allowFleeing 0;
				_x setCombatMode "RED";
				[_x, _Ground_Transform_Vehicle] execVM "Custom\TIMS\misc\delete.sqf";
				//_x addEventHandler ["Killed",{(_this select 0) spawn {uiSleep 1; deleteVehicle _this}}];
				uiSleep 0.1;
			} forEach crew _Ground_Transform_Vehicle;
		uisleep 7;
		player allowDamage true;
		_Ground_Transform_Vehicle allowDamage true;
	};
	if ((typeOf vehicle player == "I_Plane_Fighter_03_dynamicLoadout_F") && (_isWater)) exitWith 
	{
		_VehPos1 = [getPosATL player select 0, getPosATL player select 1, getPosATL player select 2];
		player allowDamage false;
		deletevehicle _vehicle;
		_WaterPOS1 = [getPosASLW player select 0, getPosASLW player select 1];
		_WaterPOS2 = [getPosASLW player select 0, getPosASLW player select 1, (getPosASLW player select 2)+15];
		_Water_Transform_Vehicle = "I_Boat_Armed_01_minigun_F" createVehicle  _WaterPOS1;
		_Water_Transform_Vehicle setPosASL _WaterPOS2;
		_Water_Transform_Vehicle allowDamage false;
		_Water_Transform_Vehicle engineOn true;
		player moveInDriver _Water_Transform_Vehicle;
		addCamShake [6, 3, 15];
		_Water_Transform_Vehicle setDir _dirPlayer;
		_Water_Transform_Vehicle setVelocity 
			[ 
				(_vel select 0) + (sin _dirPlayer * _speedBoat),
				(_vel select 1) + (cos _dirPlayer * _speedBoat),
				(_vel select 2)
			];
		_Water_Transform_Vehicle addEventHandler ["Killed",{(_this select 0) spawn {uiSleep 5; deleteVehicle _this}}];
		clearBackpackCargoGlobal _Water_Transform_Vehicle;
		clearMagazineCargoGlobal _Water_Transform_Vehicle;
		clearWeaponCargoGlobal _Water_Transform_Vehicle;
		clearItemCargoGlobal _Water_Transform_Vehicle;
		uiSleep 3;
		//CREATE CREW FOR mk19
		//_Grp = createGroup resistance;
		_Grp = group player;
		createVehicleCrew _Water_Transform_Vehicle;
			{
				[_x] joinSilent _Grp;
				_x setSkill 1;
				_x allowFleeing 0;
				_x setCombatMode "RED";
				[_x, _Water_Transform_Vehicle] execVM "Custom\TIMS\misc\delete.sqf";
				//_x addEventHandler ["Killed",{(_this select 0) spawn {uiSleep 1; deleteVehicle _this}}];
				uiSleep 0.1;
			} forEach crew _Water_Transform_Vehicle;
		uisleep 7;
		player allowDamage true;
		_Water_Transform_Vehicle allowDamage true;
	};
	if ((typeOf vehicle player == "rhsusf_m1043_w_mk19") && (speed vehicle player >= 100)) exitWith 
	{
		_VehPos2 = [getPosATL player select 0, getPosATL player select 1, (getPosATL player select 2) +10];
		player allowDamage false;
		deletevehicle _vehicle;
		player setPosATL _VehPos2;
		_Air_Transform_Vehicle1 = "I_Plane_Fighter_03_dynamicLoadout_F" createVehicle _VehPos2;
		_Air_Transform_Vehicle1 allowDamage false;
		_Air_Transform_Vehicle1 engineOn true;
		_Air_Transform_Vehicle1 setAirplaneThrottle 1;
		_Air_Transform_Vehicle1 setPosATL _VehPos2;
		player moveInDriver _Air_Transform_Vehicle1;
		addCamShake [6, 3, 15];
		_Air_Transform_Vehicle1 setDir _dirPlayer;
		uiSleep 0.2;
		_Air_Transform_Vehicle1 setVelocity 
			[ 
				(_vel select 0) + (sin _dirPlayer * _speedAir),
				(_vel select 1) + (cos _dirPlayer * _speedAir),
				(_vel select 2)
			];
		_Air_Transform_Vehicle1 addEventHandler ["Killed",{(_this select 0) spawn {uiSleep 5; deleteVehicle _this}}];
		clearBackpackCargoGlobal _Air_Transform_Vehicle1;
		clearMagazineCargoGlobal _Air_Transform_Vehicle1;
		clearWeaponCargoGlobal _Air_Transform_Vehicle1;
		clearItemCargoGlobal _Air_Transform_Vehicle1;
		uiSleep 10;
		player allowDamage true;
		_Air_Transform_Vehicle1 allowDamage true;
	};
	if ((typeOf vehicle player == "rhsusf_m1043_w_mk19") && (speed vehicle player <= -25)) exitWith 
	{
		_VehPos2 = [getPosATL player select 0, getPosATL player select 1, getPosATL player select 2];
		player allowDamage false;
		deletevehicle _vehicle;
		player setPosATL _VehPos2;
		_Tank_Transform_Vehicle1 = "rhsgref_ins_t72bb" createVehicle _VehPos2;
		_Tank_Transform_Vehicle1 allowDamage false;
		_Tank_Transform_Vehicle1 engineOn true;
		player moveInDriver _Tank_Transform_Vehicle1;
		addCamShake [6, 3, 15];
		_Tank_Transform_Vehicle1 setDir _dirPlayer;
		_Tank_Transform_Vehicle1 setVelocity 
			[ 
				(_vel select 0) + (sin _dirPlayer * _speedTank),
				(_vel select 1) + (cos _dirPlayer * _speedTank),
				(_vel select 2)
			];
		_Tank_Transform_Vehicle1 addEventHandler ["Killed",{(_this select 0) spawn {uiSleep 5; deleteVehicle _this}}];
		clearBackpackCargoGlobal _Tank_Transform_Vehicle1;
		clearMagazineCargoGlobal _Tank_Transform_Vehicle1;
		clearWeaponCargoGlobal _Tank_Transform_Vehicle1;
		clearItemCargoGlobal _Tank_Transform_Vehicle1;
		uisleep 10;
		player allowDamage true;
		_Tank_Transform_Vehicle1 allowDamage true;
	};
	if (typeOf vehicle player == "rhsgref_ins_t72bb") exitWith 
	{
		_VehPos2 = [getPosATL player select 0, getPosATL player select 1, getPosATL player select 2];
		player allowDamage false;
		deletevehicle _vehicle;
		player setPosATL _VehPos2;
		_Tank_Transform_Vehicle2 = "rhsusf_m1043_w_mk19" createVehicle _VehPos2;
		_Tank_Transform_Vehicle2 allowDamage false;
		_Tank_Transform_Vehicle2 engineOn true;
		player moveInDriver _Tank_Transform_Vehicle2;
		addCamShake [6, 3, 15];
		_Tank_Transform_Vehicle2 setDir _dirPlayer;
		_Tank_Transform_Vehicle2 setVelocity 
			[ 
				(_vel select 0) + (sin _dirPlayer * _speedTank2),
				(_vel select 1) + (cos _dirPlayer * _speedTank2),
				(_vel select 2)
			];
		_Tank_Transform_Vehicle2 addEventHandler ["Killed",{(_this select 0) spawn {uiSleep 5; deleteVehicle _this}}];
		clearBackpackCargoGlobal _Tank_Transform_Vehicle2;
		clearMagazineCargoGlobal _Tank_Transform_Vehicle2;
		clearWeaponCargoGlobal _Tank_Transform_Vehicle2;
		clearItemCargoGlobal _Tank_Transform_Vehicle2;
		uiSleep 3;
		//CREATE CREW FOR mk19
		//_Grp = createGroup resistance;
		_Grp = group player;
		createVehicleCrew _Tank_Transform_Vehicle2;
			{
				[_x] joinSilent _Grp;
				_x setSkill 1;
				_x allowFleeing 0;
				_x setCombatMode "RED";
				[_x, _Tank_Transform_Vehicle2] execVM "Custom\TIMS\misc\delete.sqf";
				//_x addEventHandler ["Killed",{(_this select 0) spawn {uiSleep 1; deleteVehicle _this}}];
				uiSleep 0.1;
			} forEach crew _Tank_Transform_Vehicle2;
		uisleep 7;
		player allowDamage true;
		_Tank_Transform_Vehicle2 allowDamage true;
	};
	if (typeOf vehicle player == "I_Boat_Armed_01_minigun_F") exitWith 
	{
		_VehPos2 = [getPos player select 0, getPos player select 1, (getPos player select 2) +10];
		player allowDamage false;
		deletevehicle _vehicle;
		player setPosWorld _VehPos2;
		_Air_Transform_Vehicle2 = "I_Plane_Fighter_03_dynamicLoadout_F" createVehicle _VehPos2;
		_Air_Transform_Vehicle2 allowDamage false;
		_Air_Transform_Vehicle2 engineOn true;
		_Air_Transform_Vehicle2 setAirplaneThrottle 1;
		_Air_Transform_Vehicle2 setPosWorld _VehPos2;									   
		player moveInDriver _Air_Transform_Vehicle2;
		addCamShake [6, 3, 15];
		_Air_Transform_Vehicle2 setDir _dirPlayer;
		_Air_Transform_Vehicle2 setVelocity 
			[ 
				(_vel select 0) + (sin _dirPlayer * _speedAir),
				(_vel select 1) + (cos _dirPlayer * _speedAir),
				(_vel select 2)
			];
		_Air_Transform_Vehicle2 addEventHandler ["Killed",{(_this select 0) spawn {uiSleep 5; deleteVehicle _this}}];
		clearBackpackCargoGlobal _Air_Transform_Vehicle2;
		clearMagazineCargoGlobal _Air_Transform_Vehicle2;
		clearWeaponCargoGlobal _Air_Transform_Vehicle2;
		clearItemCargoGlobal _Air_Transform_Vehicle2;
		uiSleep 10;
		player allowDamage true;
		_Air_Transform_Vehicle2 allowDamage true;
	};
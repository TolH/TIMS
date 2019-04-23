if (!isServer) exitWith {};
//Define variables
_unit 		= _this select 0;
_delay 		= _this select 1;
_deserted 	= _this select 2;
_respawns 	= _this select 3;
_marker 	= _this select 4;
_Safepos 	= _this select 5;
_Wpos 		= _this select 6;
//
_dir = getDir _unit;
_position = getPosASL _unit;
_type = typeOf _unit;
_dead = false;
_nodelay = false;
_running = 1;
//TRADER BLACKLISTED POSITION
_CheckBlacklistedArea1 = [14601.708,16878.266,18];	//MafiaTraderCity
	_BlacklistedMAFIASafeTP = [14468.357,17099.99,25];			//SAFE_TP_Mafia
_CheckBlacklistedArea2 = [23334.605,24188.938,4.0095582];	//TraderZoneSilderas
	_BlacklistedSILDERASSafeTP = [23650.381,23937.342,25];		//SAFE_TP_Silderas
_CheckBlacklistedArea3 = [2998.0603,18175.479,3.7756021];	//TraderZoneFolia
	_BlacklistedFOLIASafeTP = [3404.6963,18095.344,30];	 		//SAFE_TP_Folia
// Start monitoring the vehicle
while {_running isEqualTo 1} do 
{
	while {RESPAWN_VEHICLE_STARTED isEqualTo 1} do 
	{
	  uiSleep (2 + random 5);
		if ((getDammage _unit > 0.8) and ({alive _x} count crew _unit == 0)) then
		{
			_dead = true;
		};
		//CHECK IF NOT ALIVE
		if (!alive _unit) then 
		{
			_dead = true;
			_nodelay = false;
		};
		//TEST TP OUT OF TRADER ZONE TO NOT BE ABLE TO SELL THE VEHICLE
		if (getPosASL _unit distance _CheckBlacklistedArea1 < 135) then
		{
			uiSleep 1;
			_unit setPosWorld _BlacklistedMAFIASafeTP;
		};
		if (getPosASL _unit distance _CheckBlacklistedArea2 < 150) then
		{
			uiSleep 1;
			_unit setPosWorld _BlacklistedSILDERASSafeTP;
		};
		if (getPosASL _unit distance _CheckBlacklistedArea3 < 150) then
		{
			uiSleep 1;
			_unit setPosWorld _BlacklistedFOLIASafeTP;
		};
		// Check if the vehicle is deserted.
		if (_deserted > 0) then
		{
			if ((getPosASL _unit distance _position > 10) and ({alive _x} count crew _unit == 0) and (getDammage _unit < 0.8)) then
			{
				_timeout = time + _deserted;
				uiSleep 0.1;
				_marker setMarkerColor "ColorBLUE";
				waitUntil {_timeout < time or !alive _unit or {alive _x} count crew _unit > 0};
				if ({alive _x} count crew _unit > 0) then 
				{
					_dead = false;
					_marker setMarkerColor "ColorGUER";
				};
				if ({alive _x} count crew _unit == 0) then 
				{
					_dead = true;
					_nodelay = true;
				};
			};
		};
		// Respawn vehicle
		if (_dead) then
		{
			if (_nodelay) then {uiSleep 0.1; _nodelay = false;} else {uiSleep _delay;};
			_unit setvehicleammo 0;
			uiSleep 0.1;
			_unit setvehicleammo 0;
			uiSleep 0.1;
			deleteVehicle _unit;
			uiSleep (10 + random 15);
			_unit = _type createVehicle _Safepos;
			_unit allowDamage false;
			uiSleep 0.1;
			_unit setPosWorld _Wpos;
			_unit setDir _dir;
			uiSleep 0.1;
			[_unit, _marker] execVM "TIMS_ROAMING_AI\Roaming_AI\Player_Vehicle_Marker.sqf";
			_marker setMarkerColor "ColorGUER";
			_dead = false;
			uiSleep 3;
			clearBackpackCargoGlobal _unit;
			clearMagazineCargoGlobal _unit;
			clearWeaponCargoGlobal _unit;
			clearItemCargoGlobal _unit;
			uiSleep 0.1;
			_unit setvehicleammo 1;
			_unit allowDamage true;
		};
	};
  //WAIT UNTIL MISSION RESPAWN AND TP PLAYER BACK IF THEY TRY TO SELL THE FREE VEHICLE WHEN MISSION NOT RUNNING
  uiSleep (2 + random 5);
	if (alive _unit) then 
	{
		//TEST TP OUT OF TRADER ZONE TO NOT BE ABLE TO SELL THE VEHICLE
		if (getPosASL _unit distance _CheckBlacklistedArea1 < 175) then
		{
			uiSleep 1;
			_unit setPosWorld _BlacklistedMAFIASafeTP;
		};
		if (getPosASL _unit distance _CheckBlacklistedArea2 < 175) then
		{
			uiSleep 1;
			_unit setPosWorld _BlacklistedSILDERASSafeTP;
		};
		if (getPosASL _unit distance _CheckBlacklistedArea3 < 175) then
		{
			uiSleep 1;
			_unit setPosWorld _BlacklistedFOLIASafeTP;
		};
	};
};
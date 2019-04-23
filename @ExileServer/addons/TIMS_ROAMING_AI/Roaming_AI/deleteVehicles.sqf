//EXEMPLE: [_RandomGroundVehiclePRE,240] execVM "TIMS_ROAMING_AI\Roaming_AI\deleteVehicles.sqf";
private ["_Vehicle","_Delete","_timeC"];
_Vehicle = _this select 0;
_Delete = _this select 1;
_timeC = 0;
while {alive _Vehicle} do 
{
   _timeC = _timeC +10;
   uiSleep 10;
	if (_timeC >= 120) then 
	{
		//SET FUEL+AMMO TO FULL EVERY X TIME
		_Vehicle setvehicleammo 1;
		_Vehicle setFuel 1;
		_timeC = 0;
	};
};
uiSleep _Delete;
//DEAD VEHICLE DELETE
deleteVehicle _Vehicle;
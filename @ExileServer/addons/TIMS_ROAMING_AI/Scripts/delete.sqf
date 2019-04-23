//EXEMPLE: [_unit,_unitVehicle] execVM "TIMS_ROAMING_AI\Roaming_AI\deleteVehicles.sqf";
private ["_unit","_unitVehicle","_timeD"];
_unit = _this select 0;
_unitVehicle = _this select 1;
_timeD = 0;
while {alive _unitVehicle} do 
{
	_timeD = _timeD +3;
	uiSleep 3;
	if (_timeD >= 600) then 
	{
		//SET FUEL+AMMO TO FULL EVERY X TIME
		_unitVehicle setvehicleammo 1;
		_unitVehicle setFuel 1;
		_timeD = 0;
	};
};
//DEAD VEHICLE DELETE CREW
uiSleep 600;
deleteVehicle _unit;
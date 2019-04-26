_unit = _this select 0;
_unitVehicle = _this select 1;
while {alive _unitVehicle} do 
{
	//Do nothing if vehicle is alive
	uiSleep 3;
};
//DEAD VEHICLE DELETE CREW
deleteVehicle _unit;
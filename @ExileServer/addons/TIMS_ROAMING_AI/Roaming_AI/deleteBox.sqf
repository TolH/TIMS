private ["_Box","_timeDelete","_timeC","_ticking"];
_Box = _this select 0;
_timeDelete = _this select 1;
_timeC = 0;
_ticking = 1;
while {_ticking == 1} do 
{
	_timeC = _timeC +1;
	uiSleep 1;
	if (_timeC >= _timeDelete) then 
	{
		deleteVehicle _Box;
		_ticking = 0;
	};
};
_restartInterval = _this select 0;
_warningSchedule = _this select 1;
_restartWarningTxt = _this select 2;
_enableDebug = _this select 3;

while { count _warningSchedule > 0 } do
{
	_timeLeft = ceil(_restartInterval * 60 - serverTime / 60); // For live use

	if (_timeLeft < 0) exitWith { systemChat"_timeLeft < 0"; };

	_find = _warningSchedule find _timeLeft;

	if (_enableDebug) then
	{
		hintSilent parseText format["%1 Minutes left<br /><br />Interval: %2<br /><br />Warning Schedule:<br />%3<br /><br />Time passed:<br />%4", _timeLeft, _restartInterval, _warningSchedule, time];
	};

	if (_find > -1) then
	{
		[_warningSchedule select _find, _restartWarningTxt] spawn SC_fnc_ServerRestartWarningShow;
		_warningSchedule = _warningSchedule - [_warningSchedule select _find];
	};

	uiSleep 1;
};

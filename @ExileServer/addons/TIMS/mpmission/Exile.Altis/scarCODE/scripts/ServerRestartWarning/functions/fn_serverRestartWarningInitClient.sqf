/*
	Author: IT07
	Script name: Missionfile-based server restart warnings by IT07
	Version: 02039_PATCH1
*/

if hasInterface then
{
	[] spawn
	{
		_settings = ["restartWarningTxt","warningSchedule","enableDebug","serverUptimeHours"] call SC_fnc_serverRestartWarningGetSetting;
		_restartWarningTxt = [_settings, 0, "== WARNING ==", [""]] call BIS_fnc_param;
		_warningSchedule = [_settings, 1, [], [[]]] call BIS_fnc_param;
		_enableDebug = if (([_settings, 2, -1, [0]] call BIS_fnc_param) isEqualTo 1) then { true } else { false };
		_restartInterval = [_settings, 3, 4, [0]] call BIS_fnc_param;
		waitUntil { uiSleep 1; not isNull(findDisplay 46); isNull(findDisplay 101); isNull(findDisplay 24001); isNull(findDisplay 24002) };
		if (count _warningSchedule > 0 and _restartInterval > 0) then // Only start if the warning schedule isn't empty and if restartInterval is valid
		{
			[_restartInterval, _warningSchedule, _restartWarningTxt, _enableDebug] spawn SC_fnc_serverRestartWarningTimeCheck;
		};
	};
};

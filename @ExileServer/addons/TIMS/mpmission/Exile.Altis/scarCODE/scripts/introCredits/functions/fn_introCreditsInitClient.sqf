/*
	Author: IT07 (Original was made by BIS)

	Description:
	if installed in a mission file, any player joining the mission will see credits on their screen as configured below.
	Players have the ability to skip credits by using the scroll menu action which is available until the credits are done showing.

	Params:
	none

	Returns:
	nothing
*/

if hasInterface then
{
	[] spawn
	{
		_creditsFnc =
		{
			_onScreenTime = _this select 0;
			_waitFor = _this select 1;
			_credits = _this select 2;
			_titleColor = _this select 3;
			_subColor = _this select 4;
			uiSleep _waitFor;
			{
				_selectTitle = _x select 0;
				_selectSubs = _x select 1;
				_all = format ["<t size='1.2' align='right' font='PuristaBold'>%2</t><br />", _titleColor, _selectTitle];
				_all = _all + format["<t size='1' color='%1' align='right'>", _subColor];
				{
					_all = _all + format ["%1<br />", _x];
				} forEach _selectSubs;
				_all = _all + "</t>";
				_onScreenTime + (((count _selectSubs) - 1) * 0.5);
				[_all, [safezoneX + 0.1 * safezoneW,safezoneW * 0.88], [safezoneY + 0.7 * safezoneH, safezoneH * 0.3], _onScreenTime, 0, 0, 777] call BIS_fnc_dynamicText;
				uiSleep 0.5;
			} forEach _credits;
		};

		playsound "INTROMUSIC";
		_settings = ["onScreenTime","waitFor","credits","titleColor","subColor"] call SC_fnc_introCreditsGetSetting;
		_onScreenTime = [_settings, 0, 7, [0]] call BIS_fnc_param;
		_waitFor = [_settings, 1, 2.5, [0]] call BIS_fnc_param;
		_credits = [_settings, 2, [], [[]]] call BIS_fnc_param;
		_titleColor = [_settings, 3, "#57877b", [""]] call BIS_fnc_param;
		_subColor = [_settings, 4, "#FFF", [""]] call BIS_fnc_param;
		waitUntil { uiSleep 1; not isNull(findDisplay 46); isNull(findDisplay 101); isNull(findDisplay 24001); isNull(findDisplay 24002) };
		_playCredits = [_onScreenTime, _waitFor, _credits, _titleColor, _subColor] spawn _creditsFnc;
		_skip = player addAction ["Skip credits...",{terminate (_this select 3); player removeAction (_this select 2)}, _playCredits, -1, false, true];
		waitUntil { uiSleep 0.5; scriptDone _playCredits };
		player removeAction _skip;
	};
};

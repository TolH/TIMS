/*
    Author: IT07

    Description:
    gets config value of given var from ServerIntroCredits config

	Params:
	method 1:
		_this: STRING - name of SINGLE config value to get from root of sc_cfgIntroCredits
	method 2:
		_this select 0: ARRAY of STRINGS - MULTIPLE config values to get from root of sc_cfgIntroCredits

    Returns:
	method 1: ANYTHING
	method 2: ARRAY with results
*/

private["_cfg","_v","_r","_path"];
_r = [];
_check =
{
	if (isNumber _cfg) then
	{
		_v = getNumber _cfg
	};
	if not(isNumber _cfg) then
	{
		if (isText _cfg) then
		{
			_v = getText _cfg
		};
		if not(isText _cfg) then
		{
			if (isArray _cfg) then
			{
				_v = getArray _cfg
			};
		};
	};
};

if (typeName _this isEqualTo "STRING") then
{
	_cfg = missionConfigFile >> "cfgScarCODE" >> "sc_cfgIntroCredits" >> _this;
	call _check;
	if not(isNil"_v") then
	{
		_r = _v;
	};
};

if (typeName _this isEqualTo "ARRAY") then
{
	if (typeName (_this select 0) isEqualTo "ARRAY") then
	{
		if (typeName (_this select 1) isEqualTo "ARRAY") then
		{
			_cfg = missionConfigFile >> "cfgScarCODE" >> "sc_cfgIntroCredits";
			_path = _cfg;
			{
				_path = _path >> _x; // Build the config path
			} forEach (_this select 0);
			{
				_cfg = _path >> _x;
				call _check;
				_r pushBack _v;
			} forEach (_this select 1);
		};
	};
	if not(typeName (_this select 0) isEqualTo "ARRAY") then
	{
		if not(typeName (_this select 1) isEqualTo "ARRAY") then
		{
			{
				_cfg = missionConfigFile >> "cfgScarCODE" >> "sc_cfgIntroCredits" >> _x;
				call _check;
				_r pushBack _v;
			} forEach _this;
		};
	};
};

if isNil"_v" then { _r = "No result" };
_r

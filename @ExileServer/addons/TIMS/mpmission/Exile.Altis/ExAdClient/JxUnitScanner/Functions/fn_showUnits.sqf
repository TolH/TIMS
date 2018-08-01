// created by Jaxx0rr
params ["_display","_types","_radius","_prefix","_slideClass","_xc","_yc","_mapDivFactorX","_mapDivFactorY","_playerx","_playery","_vposx","_vposy","_log","_cs"];

_slideClass = "ExAd_JX";

_middleX = 0.418;
_middleY = 0.37;

//_mapDivFactorX = 300;
//_mapDivFactorY = 400;

_mapDivFactorX = 910;
_mapDivFactorY = 700;

_playerx = getPos player select 0;
_playery = getPos player select 1;

//hide all icons
_i = 1;
while {_i <= 30} do {
	_pname = format [_prefix+"%1", _i];
	[_display, _slideClass, _pname, [0, 0], false] call ExAd_fnc_setPicture;
	_i =_i + 1;
};
_log = "ShowUnits>>";

//scan the area
_vlist = [player, _types, _radius] call ExAd_fnc_scanArea;

_log = _log + "Units:";

_vi = 1;
{
	_objClass = if(typeName _x isEqualTo "ARRAY") then{_x select 1} else {typeOf _x};
	_tposition = format [" POS:%1,%2,%3", getPos _x select 0, getPos _x select 1, getPos _x select 2];

	if (_objClass != "Exile_Unit_Player" && _objClass != "Salema_F" && _objClass != "Ornate_random_F" && _objClass != "Mackerel_F" && _objClass != "Tuna_F" && _objClass != "Mullet_F" && _objClass != "CatShark_F" && _objClass != "Rabbit_F" && _objClass != "Snake_random_F" && _objClass != "Turtle_F" && _objClass != "Hen_random_F" && _objClass != "Cock_random_F" && _objClass != "Cock_white_F" && _objClass != "Goat_random_F" && _objClass != "Sheep_random_F") then {

		_log = _log + _objClass + " | ";

		_vposx = getPos _x select 0;
		_vposy = getPos _x select 1;

		if (_playerx > _vposx) then {
			_xc = _middleX-(_playerx-_vposx)/_mapDivFactorX;
		} else {
			_xc = _middleX+(_vposx-_playerx)/_mapDivFactorX;
		};

		if (_playery > _vposy) then {
			_yc = _middleY+(_playery-_vposy)/_mapDivFactorY;
		} else {
			_yc = _middleY-(_vposy-_playery)/_mapDivFactorY;
		};

		//hint format ["_playerx:%1 _vposx:%2 _xc:%3", _playerx, _vposx, _xc];
		
		_cs = ([_objClass, 0, 9] call BIS_fnc_trimString);
		
		if (_cs == "RyanZombie") then {
			_prefix = "picZ";
		};

		_pname = format [_prefix+"%1", _vi];
		if (_vi <= 30) then {
			[_display, _slideClass, _pname, [_xc, _yc], true] call ExAd_fnc_setPicture;
		};

		_name = getText(configFile >> "CfgVehicles" >> _objClass >> "displayName")+_tposition;

		//_index = lbAdd[_idc, _name];
		//_pic = getText(configFile >> "CfgVehicles" >> _objClass >> "picture");
		_vi =_vi + 1;
	};
} forEach _vlist;

_log;
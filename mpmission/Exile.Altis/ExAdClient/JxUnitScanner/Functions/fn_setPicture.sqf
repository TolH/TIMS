// created by Jaxx0rr

params ["_display","_parent","_name","_position","_show","_ctrl"];

_ctrl = ([_display, _parent, _name] call ExAd_fnc_getAppCtrl);
_ctrl ctrlSetPosition _position;
if (_show) then {
	_ctrl ctrlSetTextColor [1,1,1,1];
} else {
	_ctrl ctrlSetTextColor [0,0,0,0];
};
_ctrl ctrlCommit 0;

true
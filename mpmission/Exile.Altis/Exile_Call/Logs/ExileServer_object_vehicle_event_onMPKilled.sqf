/*
	ExileServer_object_vehicle_event_onMPKilled
*/
if !(isServer) exitWith {true};
params['_unit','_killer','_instigator'];
//============================================//
_killerName = if(alive _killer)then{_killer setVariable['ExileName',name _killer];name _killer}else{_killer getVariable['ExileName','']};
_killerUID = _killer getVariable ['ExileOwnerUID',getPlayerUID _killer];
_log = format['%1 @%2 killed by %3(%4) %5',
	typeOf _unit,
	getPos _unit,
	_killerName,
	_killerUID,
	typeOf _killer
];
//============================================//
['VEHICLE_DESTROYED',_log] call FNC_A3_CUSTOMLOG;
//0908 TEST
diag_log format ["-=VEHICLE_DESTROYED=- %1 @%2 killed by %3(%4) %5", typeOf _unit, getPos _unit, _killerName, _killerUID, typeOf _killer];
//============================================//
_unit call ExileServer_object_vehicle_remove;
_unit setVariable ['ExileDiedAt', time];
true
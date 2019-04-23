/*
Add Script to individual units spawned by COS.
_unit = unit. Refer to Unit as _unit.
*/

_unit = (_this select 0);
_unit setCaptive 1;
_unit addEventHandler ["Killed",{ _this execVM "TIMS_ROAMING_AI\Roaming_AI\EH_KILLED_CIV.sqf"; }];
//_unit addAction ["Hello", {hint "Open AddScript_Unit.sqf to apply pedestrian scripts"}];// EXAMPLE SCRIPT
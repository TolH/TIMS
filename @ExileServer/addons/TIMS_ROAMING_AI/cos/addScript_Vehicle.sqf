/*
Add Script to vehicles spawned by COS.
_veh = Vehicle. Refer to vehicle as _veh.
*/

_veh =(_this select 0);
_veh addEventHandler ["Killed",{ _this execVM "TIMS_ROAMING_AI\Roaming_AI\EH_KILLED_CIV.sqf"; }];
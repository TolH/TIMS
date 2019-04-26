GUARD_AImax = 0;
//TEST SPECTATOR CAM FOR VIEWING BASE.
["Initialize", [player]] call BIS_fnc_EGSpectator;
uiSleep 12;
["Terminate"] call BIS_fnc_EGSpectator;
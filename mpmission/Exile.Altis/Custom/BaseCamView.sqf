//TEST SPECTATOR CAM FOR VIEWING BASE.
["Initialize", [player]] call BIS_fnc_EGSpectator;
uiSleep 30;
["Terminate"] call BIS_fnc_EGSpectator;
player switchCamera "EXTERNAL";
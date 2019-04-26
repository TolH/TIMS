if (!hasInterface && !isDedicated) exitWith {};
//============================================//
if (!isDedicated and hasInterface) then 
{
	waitUntil {alive vehicle player};	
	waitUntil {typeOF player != "Exile_Unit_GhostPlayer"};
	//playSound "INTRO";
	uisleep 1;
	player switchCamera "EXTERNAL";
};
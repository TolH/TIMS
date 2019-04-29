//============================================////============================================//
//					 -= RACING SCRIPT OFFROAD FOR Racing event by TOLH/0908 =-
//TO USE: [3] execVM "Custom\TIMS\-=Events=-\DeleteParticules.sqf";
//============================================////============================================//
//============================================//
private _TimeDelay = _this select 0;
//============================================//
uiSleep _TimeDelay;
//DELETE PARTICULES EFFECTS FROM BOOSTING
	{
		if (typeof _x == "#particlesource") then 
		{ 
			deletevehicle _x;
		};
	} foreach (player nearObjects 7);
//============================================//
//============================================////============================================//
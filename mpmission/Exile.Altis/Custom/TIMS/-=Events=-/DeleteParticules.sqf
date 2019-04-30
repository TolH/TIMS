//============================================////============================================//
//					 -= RACING SCRIPT OFFROAD FOR Racing event by TOLH/0908 =-
//TO USE: [3] execVM "Custom\TIMS\-=Events=-\DeleteParticules.sqf";
//============================================////============================================//
//============================================//
private _TimeDelay = _this select 0;
//============================================//
uiSleep 3;
//DELETE PARTICULES EFFECTS FROM BOOSTING
	{
		if (typeof _x == "#particlesource") then 
		{ 
			deletevehicle _x;
		};
	} foreach (player nearObjects 8);
uiSleep 2;
//RUN AGAIN AFTER 2 SECONDS CAUSE SOMETIMES THE EFFECT ISNT FOUND
	{
		if (typeof _x == "#particlesource") then 
		{ 
			deletevehicle _x;
		};
	} foreach (player nearObjects 8);
//============================================//
//============================================////============================================//
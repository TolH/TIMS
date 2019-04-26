//DELETE BODYGUARD IF PLAYER ISNT THE LEADER ANYMORE. THIS PREVENT WORKAROUND OF THE HANDLER WHEN CHANGING GROUP.
//CALLED THAT FILE FROM bodyguard.sqf
//USE: [_unit] execVM "Custom\TIMS\Bodyguard\BodyGuard_Delete.sqf";
//MADE BY #/-TOHL-/-0908-/#
_unit = _this select 0;
_PlayerLeader = leader _unit;
	while { ((isPlayer _PlayerLeader) && (alive _PlayerLeader)) } do 
	{
		//ALL GOOD JUST WAIT UNTIL GROUP LEADER ISNT A PLAYER ANYMORE OR THE PLAYER IS DEAD THEN DELETE AI GROUP
		uiSleep 2;
	};
	//IF PLAYER LEADER ISNT LEADER ANYMORE, DELETE BODYGUARD
	deleteVehicle _unit;
	GUARD_AImax = 0;
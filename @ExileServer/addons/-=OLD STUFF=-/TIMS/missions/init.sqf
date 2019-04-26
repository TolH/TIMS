if (!isDedicated) exitWith {};
	private ["_playerCount"];
//============================================////============================================//
	//VARS
	TOWN_INVASION_STARTED = 0;
	CRATE_LOOTS_1 = 0;
		while {true} do
		{
		  //CHECK EVERY 2 minutes
		  uiSleep 300;
			_playerCount = {alive _x} count playableUnits;
			//CHECK IF RIGHT AMOUNT OF PLAYER ONLINE AND IF INVASION NOT STARTED ALREADY
			if ((_playerCount >= NEED_ONLINE_PLAYER) && (CRATE_LOOTS_1 isEqualTo 0)) then 
			{
				//mission_script1 = [] execVM "TIMS\missions\Missions\-=CRATE_LOOT=-.sqf";
				//mission_script1 = [] execVM "TIMS\missions\Missions\-=TOWN_INVASION=-.sqf";
				//mission_script2 = [] execVM "TIMS\missions\Missions\-=BASE_INVASION=-.sqf";
			};
		};
//============================================////============================================//
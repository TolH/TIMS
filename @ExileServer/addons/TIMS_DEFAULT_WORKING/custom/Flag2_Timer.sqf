/*
										-=NORRY=- 
									 (Flag2_Timer.sqf)

					Usage: 	[] ExecVM FLAG2_TIMER;

*/
private ["_timer2"];
//============================================////============================================//
	//_Flag = _this select 0;	// first ELEMENT selected
	//_POS = _this select 1;	// second ELEMENT selected
//============================================////============================================//
	//VAR
		//_FlagPole1 setPos [(_FlagPole1POS select 0), (_FlagPole1POS select 1), (_FlagPole1POS select 2) - 10];
		_timer2 = 0;
	//START MARKER ANIMATION
		while {START_FLAG2_TIMER isEqualTo 1} do 
		{
		  _timer2 = _timer2 + 1;
		  //_FlagPole1 setPos [(_FlagPole1POS select 0), (_FlagPole1POS select 1), (_FlagPole1POS select 2) + 1];
		  uiSleep 1;
			/*if (_timer1 isEqualTo 30) then
			{
				//MOVE FLAG
				_FlagPole1 setPos [(_FlagPole1POS select 0), (_FlagPole1POS select 1), (_FlagPole1POS select 2) + 1];
			};*/
			//TIMER
			if (_timer2 >= 120) then
			{
				//CAPTURE FLAG2 COMPLETED
				showNotification = ["TaskUpdated", "Players captured location #2"]; publicVariable "showNotification";
				"Flag2" setMarkerColor "ColorGreen";
				"Flag2" setMarkerText " (Captured by: (Players)";
				START_FLAG2_TIMER = 0;
				FLAG2OWNEDBYPLAYER = 1;
			};
		};
//============================================////============================================//
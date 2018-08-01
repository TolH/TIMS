/*
										-=NORRY=- 
									 (Flag1_Timer.sqf)

					Usage: 	[] ExecVM FLAG1_TIMER;

*/
private ["_timer1"];
//============================================////============================================//
	//_Flag = _this select 0;	// first ELEMENT selected
	//_POS = _this select 1;	// second ELEMENT selected
//============================================////============================================//
	//VAR
		//_FlagPole1 setPos [(_FlagPole1POS select 0), (_FlagPole1POS select 1), (_FlagPole1POS select 2) - 10];
		_timer1 = 0;
	//START MARKER ANIMATION
		while {START_FLAG1_TIMER isEqualTo 1} do 
		{
		  _timer1 = _timer1 + 1;
		  //_FlagPole1 setPos [(_FlagPole1POS select 0), (_FlagPole1POS select 1), (_FlagPole1POS select 2) + 1];
		  uiSleep 1;
			/*if (_timer1 isEqualTo 30) then
			{
				//MOVE FLAG
				_FlagPole1 setPos [(_FlagPole1POS select 0), (_FlagPole1POS select 1), (_FlagPole1POS select 2) + 1];
			};*/
			//TIMER
			if (_timer1 >= 120) then
			{
				//CAPTURE FLAG1 COMPLETED
				showNotification = ["TaskUpdated", "Players captured location #1"]; publicVariable "showNotification";
				"Flag1" setMarkerColor "ColorGreen";
				"Flag1" setMarkerText " (Captured by: (Players)";
				START_FLAG1_TIMER = 0;
				FLAG1OWNEDBYPLAYER = 1;
			};
		};
//============================================////============================================//
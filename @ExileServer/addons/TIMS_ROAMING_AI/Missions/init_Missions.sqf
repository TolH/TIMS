if (!isDedicated) exitWith {};
private ["_playerCountStart"];
//============================================////============================================//
	//VARS
	TIMS_MISSION_STARTED = 0;
	TIMS_CAPTURE_TOWERS_STARTED = 0;
		while {true} do
		{
		  //CHECK EVERY 15 minutes
		  waitUntil {uiSleep 5; TIMS_MISSION_STARTED isEqualTo 0};
		  uiSleep 900;
		  _playerCountStart = {alive _x} count playableUnits;
			//CHECK IF RIGHT AMOUNT OF PLAYER ONLINE
			if ((_playerCountStart >= NEED_ONLINE_PLAYER_TIMS) && (TIMS_MISSION_STARTED isEqualTo 0)) then 
			{
				mission_script1 = [] execVM "TIMS_ROAMING_AI\Missions\-=C130J=-.sqf";
			};
			/*uiSleep 120;
			if ((_playerCountStart >= NEED_ONLINE_PLAYER_TIMS) && (TIMS_CAPTURE_TOWERS_STARTED isEqualTo 0)) then 
			{
				mission_script1 = [] execVM "TIMS_ROAMING_AI\Missions\-=Capture_Towers=-.sqf";
			};*/
			if (_playerCountStart < NEED_ONLINE_PLAYER_TIMS) then 
			{
				diag_log "-=TIMS_ROAMING_MISSION=-: NOT ENOUGH PLAYER ONLINE! CHECKING AGAIN LATER...";
			};
		};
//============================================////============================================//
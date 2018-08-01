/*
										-=TolH=- 
								(Loot_Crate_Markers.sqf)
							   Track mission loot markers.
					Usage: 
					LOOT_TRACKER = 1;
					[_supplyBox1] execVM LOOT_MARKER;
*/
//============================================////============================================//
	//OBJECTS ARRAY
	_Crate1 = _this select 0;	// first element of passed array is read,
//============================================////============================================//
	//VAR
	_CRATE1_TRACKING = 1;
//============================================////============================================//
	//START TRACKING
	while {LOOT_TRACKER_CFG isEqualTo 1} do 
	{
	  //MOVE MARKER EVERY 2 SECONDS
	  uiSleep 2;
	  "Crate_1" setmarkerpos getPos _Crate1;
		//TRACK CRATE #1
		if ((!alive _Crate1) && (_CRATE1_TRACKING isEqualTo 1)) then
		{
			deletevehicle _Crate1;
			deleteMarker "Crate_1";
			//STOP TRACKING
			_CRATE1_TRACKING = 0;
		};
		//STOP TRACKING
		if (_CRATE1_TRACKING isEqualTo 0) then
		{
			//STOP TRACKING
			LOOT_TRACKER_CFG = 0;
		};
	};
//============================================////============================================//
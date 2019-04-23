/*
										-=TolH=- 
								(Loot_Crate_Markers.sqf)
							   Track mission loot markers.
					Usage: 
					[_supplyBox1, "marker"] execVM LOOT_MARKER;
*/
//============================================////============================================//
	//OBJECTS ARRAY
	private _Crate = _this select 0;
	private _marker = _this select 1;
//============================================////============================================//
	//VAR
	private _CRATE_TRACKING = 1;
//============================================////============================================//
	//START TRACKING
	while {_CRATE_TRACKING isEqualTo 1} do 
	{
	  //MOVE MARKER EVERY 2 SECONDS
	  uiSleep 2;
	  _marker setmarkerpos getPos _Crate;
		//TRACK CRATE
		if !(alive _Crate) then
		{
			uiSleep 2;
			//DELETE IF SOLD OR DESTROYED
			//deletevehicle _Crate;
			deleteMarker _marker;
			//STOP TRACKING
			_CRATE_TRACKING = 0;
		};
	};
//============================================////============================================//
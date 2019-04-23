/*
										-=TolH=- 
								(Player_Vehicle_Marker.sqf)
							   Track Player vehicle for invasion.
					Usage: 
					[_vehicle, "marker"] execVM PLAYER_VEHICLE_MARKER;
*/
//============================================////============================================//
	//OBJECTS ARRAY
	private _Vehicle = _this select 0;
	private _marker = _this select 1;
//============================================////============================================//
	private _VehicleTracking = 1;
	//START TRACKING
	while {_VehicleTracking isEqualTo 1} do 
	{
		uiSleep 3;
		//TRACK ALIVE VEHICLES
		if (alive _Vehicle) then
		{
			_marker setmarkerpos getPos _Vehicle;
		}
		else 
		{
			//VEHICLE IS DEAD
			_marker setMarkerColor "ColorGrey";
			_VehicleTracking = 0;
		};
	};
//============================================////============================================//
/*
										-=NORRY=- 
									  (OnHold.sqf)
									 Mission On Hold.
					Usage: 	["marker",  radius, "colordifficulty"] ExecVM PAUSE_MISSION;
							marker position , _radius
							waitUntil {uiSleep 2; animeMarker isEqualTo 0};
	This will put a rotating marker on map pausing mission so no ai spawn until a player is a certain distance.
*/
//============================================////============================================//
	_MarkerPOS = _this select 0;	// first ELEMENT == MARKER POSITION TO PUT MARKER
	_radius = _this select 1;	// SECOND ELEMENT == RADIUS OF WICH PAUSED MISSION WILL RESUME WHEN 
	_colorDifficulty = _this select 2;	//THIRD ELEMENT
//============================================////============================================//
	//VAR
		ANIMEMARKER = 1;
		_degree = 0;
	//CREATE MAIN MISSION ANIMATED MARKER
		_OnHold = createMarker ["OnHold", getMarkerPos _MarkerPOS];
		"OnHold" setMarkerColor "ColorOrange";
		"OnHold" setMarkerType "Select";
		"OnHold" setMarkerSize [2.0,2.0];
		"OnHold" setMarkerAlpha 1.0;
		"OnHold" setMarkerText "";
		//SECONDARY MARKER
		_SecondaryMarker = createMarker ["SecondaryMarker", getMarkerPos "OnHold"];
		"SecondaryMarker" setMarkerColor _colorDifficulty;
		"SecondaryMarker" setMarkerType "hd_warning";
		"SecondaryMarker" setMarkerType "";
		"SecondaryMarker" setMarkerSize [1.2,1.2];
	//START MARKER ANIMATION
		while {ANIMEMARKER isEqualTo 1} do 
		{
		  _degree = _degree + 6;
		  _PlayerAround = ({alive _x AND (side _x) isEqualTo resistance AND (_x distance getMarkerPos _MarkerPOS < _radius)} count allunits);
		  "OnHold" setMarkerDir _degree;
		  uiSleep 0.04;
			//MADE A COMPLETE ROTATION RESTARTING AT ZERO DEGREE
			if (_degree isEqualTo 360) then
			{
				_degree = 0;
			};
			//START CHECKS FOR RADIUS
			if (_PlayerAround >= 1) then
			{
				//NAME MARKER
				"OnHold" setMarkerText "<<==== Loading mission...";
				//RESUME MISSION
				showNotification = ["TaskAssigned", "Player nearby Invaded Town! Starting in 15 seconds. Good Luck..."]; publicVariable "showNotification";
				uiSleep 15;
				ANIMEMARKER = 0;
			};
		};
	//PLAYER NEARBY, DELETING MARKER AND STARTING MISSION...
		if (ANIMEMARKER isEqualTo 0) then 
		{
			//DELETE MARKER
			deleteMarker "OnHold";
			deleteMarker "SecondaryMarker";
		};
//============================================////============================================//
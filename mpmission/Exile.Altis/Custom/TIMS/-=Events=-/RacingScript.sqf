//============================================////============================================//
//					 -= RACING SCRIPT FOR Racing event by TOLH/0908 =-
//TO USE: [_AI_Checkpoint,_RacingVehicle] execVM "Custom\TIMS\-=Events=-\RacingScript.sqf";
//============================================////============================================//
//============================================//
private _AI_Checkpoint = _this select 0;
private _RacingVehicle = _this select 1;
//============================================//
private _vehicle = vehicle player;
private _inVehicle = (_vehicle != player);
private _AddLocation = 0;
//============================================//
	while {RACETIMER > 0} do 
	{
		private _VehicleDistCheckpoint = _RacingVehicle distance _AI_Checkpoint;
		private _nearestRoad = [getPosATL _RacingVehicle, 50] call BIS_fnc_nearestRoad;
		private _nearestRoadRespawn = [getPosATL _RacingVehicle, 100] call BIS_fnc_nearestRoad;
		//START RANGE CHECK
		if (_VehicleDistCheckpoint <= 28) then 
		{
			_AddLocation = _AddLocation + 1;
			//GIVE TIME WHEN NEAR THE ARROW
			RACETIMER = RACETIMER + 30;
			["SuccessTitleAndText", ["TIME BONUS: (+30)"]] call ExileClient_gui_toaster_addTemplateToast;
			//MOVE ARROW TO NEXT TARGET
			if (_AddLocation == 0) then { ["SuccessTitleAndText", ["CHECK_#0"]] call ExileClient_gui_toaster_addTemplateToast; };
			if (_AddLocation == 1) then { _AI_Checkpoint setPos (getMarkerPos "RACING_WAYPOINT_1"); ["SuccessTitleAndText", ["CHECK_#1"]] call ExileClient_gui_toaster_addTemplateToast; };
			if (_AddLocation == 2) then { _AI_Checkpoint setPos (getMarkerPos "RACING_WAYPOINT_2"); ["SuccessTitleAndText", ["CHECK_#2"]] call ExileClient_gui_toaster_addTemplateToast; };
			if (_AddLocation == 3) then { _AI_Checkpoint setPos (getMarkerPos "RACING_WAYPOINT_3"); ["SuccessTitleAndText", ["CHECK_#3"]] call ExileClient_gui_toaster_addTemplateToast; };
			if (_AddLocation == 4) then { _AI_Checkpoint setPos (getMarkerPos "RACING_WAYPOINT_4"); ["SuccessTitleAndText", ["CHECK_#4"]] call ExileClient_gui_toaster_addTemplateToast; };
			if (_AddLocation == 5) then { _AI_Checkpoint setPos (getMarkerPos "RACING_WAYPOINT_5"); ["SuccessTitleAndText", ["CHECK_#5"]] call ExileClient_gui_toaster_addTemplateToast; };
			if (_AddLocation == 6) then { _AI_Checkpoint setPos (getMarkerPos "RACING_WAYPOINT_6"); ["SuccessTitleAndText", ["CHECK_#6"]] call ExileClient_gui_toaster_addTemplateToast; };
			if (_AddLocation == 7) then { _AI_Checkpoint setPos (getMarkerPos "RACING_WAYPOINT_7"); ["SuccessTitleAndText", ["CHECK_#7"]] call ExileClient_gui_toaster_addTemplateToast; };
			if (_AddLocation == 8) then { _AI_Checkpoint setPos (getMarkerPos "RACING_WAYPOINT_8"); ["SuccessTitleAndText", ["CHECK_#8"]] call ExileClient_gui_toaster_addTemplateToast; };
			if (_AddLocation == 9) then { _AI_Checkpoint setPos (getMarkerPos "RACING_WAYPOINT_9"); ["SuccessTitleAndText", ["CHECK_#9"]] call ExileClient_gui_toaster_addTemplateToast; };
			if (_AddLocation == 10) then { _AI_Checkpoint setPos (getMarkerPos "RACING_WAYPOINT_10"); ["SuccessTitleAndText", ["CHECK_#10 (100%) CONGRATS! You won nothing... for now."]] call ExileClient_gui_toaster_addTemplateToast; };
			_AddLocation = _AddLocation + 1;
		};
		//CHECK IF VEHICLE IS ON THE ROADS, IF NOT TP HIM BACK TO NEAREST ONE. INCLUDING ALSO DAMAGE IN THAT CHECK (LIKE CHECK IF WHEELS ARE BROKEN OR NOT)
		if (_RacingVehicle distance _nearestRoad > 18) then 
		{
			//JUST SEND NOTIFICATION FOR NOW AS TESTING
			["ErrorTitleAndText", ["TIME BONUS: OFFROAD (-5)"]] call ExileClient_gui_toaster_addTemplateToast;
			RACETIMER = RACETIMER - 5;
			_RacingVehicle setPos [(getPos _nearestRoadRespawn select 0), (getPos _nearestRoadRespawn select 1), (getPos _nearestRoadRespawn select 2)+3];
		};
		//IF PLAYER GET OUT OF THE CAR OR FROM THE DRIVER SEAT THEN RACE ENDS
		if !(_inVehicle and (driver _vehicle == player)) then 
		{ 
			RACETIMER = 0; 
		};
		RACETIMER = RACETIMER - 1;
	  uiSleep 1;
	};
//============================================//
//END RACE AND DELETE EVERYTHING
_RacingVehicle allowdamage true;
_RacingVehicle setdamage 1;
["ErrorTitleAndText", ["THE RACE IS OVER FOR YOU!"]] call ExileClient_gui_toaster_addTemplateToast;
uiSleep 5;
deleteVehicle _RacingVehicle;
deleteVehicle _AI_Checkpoint;
uiSleep 2;
private _TeleportPos = profileNamespace getVariable "TP_BACK_POS";
titleText ["Teleporting you back...", "BLACK OUT", 7];
uiSleep 7;
player setPos _TeleportPos;
titleText ["", "BLACK IN", 7];
player allowdamage true;
//============================================//
//============================================////============================================//
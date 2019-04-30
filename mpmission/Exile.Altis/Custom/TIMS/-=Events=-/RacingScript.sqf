//============================================////============================================//
//					 -= RACING SCRIPT FOR Racing event by TOLH/0908 =-
//TO USE: [_AI_Checkpoint,_RacingVehicle,_SpeedBonusArrowOrange] execVM "Custom\TIMS\-=Events=-\RacingScript.sqf";
//============================================////============================================//
//============================================//
private _AI_Checkpoint = _this select 0;
private _RacingVehicle = _this select 1;
private _SpeedBonusArrowOrange = _this select 2;
//============================================//
private _vehicle = vehicle player;
private _inVehicle = (_vehicle != player);
private _SpeedBoostADD = 0;
private _AddLocation = 0;
private _CarAFK = 0;
private _speed = 50;
PLAYER_IS_RACING = 1; //SEND NAMEPLATE ACTIVATION ONLY FOR PLAYER RACING
//============================================//
	while {RACETIMER > 0} do 
	{
		private _SpeedBonusCheckDistance = _RacingVehicle distance _SpeedBonusArrowOrange;
		private _VehicleDistCheckpoint = _RacingVehicle distance _AI_Checkpoint;
		private _nearestRoad = [getPosATL _RacingVehicle, 50] call BIS_fnc_nearestRoad;
		private _nearestRoadRespawn = [getPosATL _RacingVehicle, 100] call BIS_fnc_nearestRoad;
		//START RANGE CHECK CHECKPOINTS (FIRST THING TO CHECK, CHECKPOINTS PRIORITY BEFORE ANYTHING ELSE SO IT HAPPENS FIRST)
		if (_VehicleDistCheckpoint <= 28) then 
		{
			//GIVE TIME WHEN NEAR THE CHECKPOINT
			RACETIMER = RACETIMER + 30;
			["SuccessTitleAndText", ["TIME BONUS: (+30)"]] call ExileClient_gui_toaster_addTemplateToast;
			//MOVE CHECKPOINT TO NEXT POSITION #CHANGED "IF" TO "SWITCH DO"  https://community.bistudio.com/wiki/switch_do
			switch (_AddLocation) do
			{
				case 0: { _AI_Checkpoint setPos (getMarkerPos "RACING_WAYPOINT_1"); ["SuccessTitleAndText", ["CHECK_#0"]] call ExileClient_gui_toaster_addTemplateToast; };
				case 1: { _AI_Checkpoint setPos (getMarkerPos "RACING_WAYPOINT_2"); ["SuccessTitleAndText", ["CHECK_#1"]] call ExileClient_gui_toaster_addTemplateToast; };
				case 2: { _AI_Checkpoint setPos (getMarkerPos "RACING_WAYPOINT_3"); ["SuccessTitleAndText", ["CHECK_#2"]] call ExileClient_gui_toaster_addTemplateToast; };
				case 3: { _AI_Checkpoint setPos (getMarkerPos "RACING_WAYPOINT_4"); ["SuccessTitleAndText", ["CHECK_#3"]] call ExileClient_gui_toaster_addTemplateToast; };
				case 4: { _AI_Checkpoint setPos (getMarkerPos "RACING_WAYPOINT_5"); ["SuccessTitleAndText", ["CHECK_#4"]] call ExileClient_gui_toaster_addTemplateToast; };
				case 5: { _AI_Checkpoint setPos (getMarkerPos "RACING_WAYPOINT_6"); ["SuccessTitleAndText", ["CHECK_#5"]] call ExileClient_gui_toaster_addTemplateToast; };
				case 6: { _AI_Checkpoint setPos (getMarkerPos "RACING_WAYPOINT_7"); ["SuccessTitleAndText", ["CHECK_#6"]] call ExileClient_gui_toaster_addTemplateToast; };
				case 7: { _AI_Checkpoint setPos (getMarkerPos "RACING_WAYPOINT_8"); ["SuccessTitleAndText", ["CHECK_#7"]] call ExileClient_gui_toaster_addTemplateToast; };
				case 8: { _AI_Checkpoint setPos (getMarkerPos "RACING_WAYPOINT_9"); ["SuccessTitleAndText", ["CHECK_#8"]] call ExileClient_gui_toaster_addTemplateToast; };
				case 9: { _AI_Checkpoint setPos (getMarkerPos "RACING_WAYPOINT_10"); ["SuccessTitleAndText", ["CHECK_#9"]] call ExileClient_gui_toaster_addTemplateToast; };
				case 10: { _AI_Checkpoint setPos (getMarkerPos "RACING_WAYPOINT_11"); ["SuccessTitleAndText", ["CHECK_#10"]] call ExileClient_gui_toaster_addTemplateToast; };
				case 11: { _AI_Checkpoint setPos (getMarkerPos "RACING_WAYPOINT_12"); ["SuccessTitleAndText", ["CHECK_#11"]] call ExileClient_gui_toaster_addTemplateToast; };
				case 12: { _AI_Checkpoint setPos (getMarkerPos "RACING_WAYPOINT_13"); ["SuccessTitleAndText", ["CHECK_#12"]] call ExileClient_gui_toaster_addTemplateToast; };
				case 13: { _AI_Checkpoint setPos (getMarkerPos "RACING_WAYPOINT_14"); ["SuccessTitleAndText", ["CHECK_#13"]] call ExileClient_gui_toaster_addTemplateToast; };
				case 14: { _AI_Checkpoint setPos (getMarkerPos "RACING_WAYPOINT_15"); ["SuccessTitleAndText", ["CHECK_#14"]] call ExileClient_gui_toaster_addTemplateToast; };
				case 15: { _AI_Checkpoint setPos (getMarkerPos "RACING_WAYPOINT_16"); ["SuccessTitleAndText", ["CHECK_#15"]] call ExileClient_gui_toaster_addTemplateToast; };
				case 16: { _AI_Checkpoint setPos (getMarkerPos "RACING_WAYPOINT_17"); ["SuccessTitleAndText", ["CHECK_#16"]] call ExileClient_gui_toaster_addTemplateToast; };
				case 17: { ["SuccessTitleAndText", ["CHECK_#17 END OF GROUND VEHICLE STUFF!!!"]] call ExileClient_gui_toaster_addTemplateToast; };
			};
			_AddLocation = _AddLocation + 1;
		};
		//START RANGE CHECK BONUS SPEED
		if (_SpeedBonusCheckDistance <= 28) then 
		{
			private _dirPlayer = direction _vehicle;
			private _vel = velocity _vehicle;
			//BOOST EFFECT
			private _fire1 = "test_EmptyObjectForFireBig" createVehicle position _RacingVehicle;
			_fire1 attachto [_RacingVehicle, [0,-3.5,-3.7]];
			//BOOST BEFORE JUMP
			_RacingVehicle setVelocity [ (_vel select 0) + (sin _dirPlayer * _speed), (_vel select 1) + (cos _dirPlayer * _speed), (_vel select 2) ];
			//DELETE FIRE AFTER X SECONDS
			execVM "Custom\TIMS\-=Events=-\DeleteParticules.sqf";
			//MOVE BOOST TO NEXT LOCATION
			switch (_SpeedBoostADD) do
			{
				case 0: { _SpeedBonusArrowOrange setPos (getMarkerPos "RACING_WAYPOINT_3"); };
				case 1: { _SpeedBonusArrowOrange setPos (getMarkerPos "RACING_WAYPOINT_6"); };
				case 2: { _SpeedBonusArrowOrange setPos (getMarkerPos "RACING_WAYPOINT_7"); };
				case 3: { _SpeedBonusArrowOrange setPos (getMarkerPos "RACING_WAYPOINT_9"); };
				case 4: { _SpeedBonusArrowOrange setPos (getMarkerPos "RACING_WAYPOINT_11"); };
				case 5: { _SpeedBonusArrowOrange setPos (getMarkerPos "RACING_WAYPOINT_12"); };
				case 6: { _SpeedBonusArrowOrange setPos (getMarkerPos "RACING_WAYPOINT_13"); };
				case 7: { _SpeedBonusArrowOrange setPos (getMarkerPos "RACING_WAYPOINT_14"); };
				case 8: { _SpeedBonusArrowOrange setPos (getMarkerPos "RACING_WAYPOINT_15"); };
				case 9: { _SpeedBonusArrowOrange setPos (getMarkerPos "RACING_WAYPOINT_17"); };
			};
			_SpeedBoostADD = _SpeedBoostADD + 1;
		};
		//CHECK IF VEHICLE IS ON THE ROADS, IF NOT TP HIM BACK TO NEAREST ONE. INCLUDING ALSO DAMAGE IN THAT CHECK (LIKE CHECK IF WHEELS ARE BROKEN OR NOT)
		if ((_RacingVehicle distance _nearestRoad > 18) && (isTouchingGround (vehicle player))) then 
		{
			//JUST SEND NOTIFICATION FOR NOW AS TESTING
			["ErrorTitleAndText", ["TIME BONUS: OFFROAD (-5)"]] call ExileClient_gui_toaster_addTemplateToast;
			RACETIMER = RACETIMER - 5;
			_RacingVehicle setPos [(getPos _nearestRoadRespawn select 0), (getPos _nearestRoadRespawn select 1), (getPos _nearestRoadRespawn select 2)+3];
		};
		//DO SAME THING BUT IF CAR HAS NOT BEEN MOVING FOR 3 SECONDS
		if (speed _vehicle == 0) then 
		{
			//START AFK CHECK
			if (_CarAFK == 3) then 
			{
				_RacingVehicle setPos [(getPos _nearestRoadRespawn select 0), (getPos _nearestRoadRespawn select 1), (getPos _nearestRoadRespawn select 2)+3]; 
				_CarAFK = 0;
			};
			_CarAFK = _CarAFK + 1;
		}
		else
		{
			_CarAFK = 0;
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
	PLAYER_IS_RACING = 0;
	_RacingVehicle allowdamage true;
	_RacingVehicle setdamage 1;
	["ErrorTitleAndText", ["THE RACE IS OVER FOR YOU!"]] call ExileClient_gui_toaster_addTemplateToast;
		uiSleep 5;
	deleteVehicle _RacingVehicle;
	deleteVehicle _SpeedBonusArrowOrange;
	deleteVehicle _AI_Checkpoint;
		uiSleep 2;
	//TP BACK TO SAVED VAR EARLIER
	private _TeleportPos = profileNamespace getVariable "TP_BACK_POS";
	titleText ["Teleporting you back...", "BLACK OUT", 7];
		uiSleep 7;
	player setPos _TeleportPos;
	titleText ["", "BLACK IN", 7];
		uiSleep 3;
	player allowdamage true;
//============================================//
//============================================////============================================//
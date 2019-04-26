//============================================////============================================//
							  /* Racing event by TOLH/0908 */
//============================================////============================================//
//MISSION ACCEPTED BY PLAYER FROM THE GUI CONFIRM MISSION
//FIRST VEHICLE CHECK
RACETIMER = 40;
if (player == vehicle player) then 
{
	//TEMP SAVE CURRENT PLAYER POSITION TO TELEPORT HIM BACK WHERE HE WAS
	profileNamespace setVariable ["TP_BACK_POS", getPos player];
	//START
	titleText ["Teleporting you to the race...", "BLACK OUT", 7];
	uiSleep 5;
	systemchat "EVENT #1 |RACING|";
	uisleep 4;
	player switchCamera "EXTERNAL";
	//SECOND VEHICLE CHECK
	if (player == vehicle player) then 
	{
		player allowdamage false;
		private _GrpResistance = createGroup resistance;
		private _RandomRacingCar = selectRandom ["Exile_Car_Golf_Black","Exile_Car_Golf_Red"];
		private _RacingVehicle = createVehicle [_RandomRacingCar, (getMarkerPos "RACING_START"), [], 0, "NONE"];
		private _AI_Checkpoint = _GrpResistance createUnit ["B_Soldier_VR_F", (getMarkerPos "RACING_WAYPOINT_0"), [], 0, "CAN_COLLIDE"];
		_AI_Checkpoint setCaptive 1;
		[_AI_Checkpoint] joinSilent _GrpResistance;
		_AI_Checkpoint enableSimulation false;
		_RacingVehicle allowdamage false;
		_RacingVehicle setDir 306;
		_RacingVehicle setFuel 0;
		player setPos (getMarkerPos "RACING_START");
		player moveInDriver _RacingVehicle;
		titleText ["RACE IS STARTING SHORTLY! GET READY...", "BLACK IN", 7];
		uiSleep 7;
		titleText ["<t color='#0cd620' size='8'>3...</t><br/>", "PLAIN", -1, true, true];
		uiSleep 2;
		titleText ["<t color='#fffa00' size='8'>2..</t><br/>", "PLAIN", -1, true, true];
		uiSleep 2;
		titleText ["<t color='#ffb200' size='8'>1.</t><br/>", "PLAIN", -1, true, true];
		uiSleep 2;
		_RacingVehicle setFuel 1;
		titleText ["<t color='#ff0000' size='6'>GOGOGO!!!</t><br/>", "PLAIN", -1, true, true];
		uiSleep 1;
		_RacingVehicle allowdamage true;
		//LAUNCH MAIN TIMER AND CHECKPOINTS
		[_AI_Checkpoint, _RacingVehicle] execVM "Custom\TIMS\-=Events=-\RacingScript.sqf";
	}
	else
	{
		//SECOND VEHICLE CHECK
		["ErrorTitleAndText", ["CANNOT JOIN IF ALREADY INSIDE A VEHICLE"]] call ExileClient_gui_toaster_addTemplateToast;
		//titleText ["<t color='#ff0000' size='3'>Leave your vehicle first if you want to start this event!</t>", "PLAIN", -1, true, true];
	};
}
else
{
	//FIRST VEHICLE CHECK
	["ErrorTitleAndText", ["CANNOT JOIN IF ALREADY INSIDE A VEHICLE"]] call ExileClient_gui_toaster_addTemplateToast;
	//titleText ["<t color='#ff0000' size='3'>Leave your vehicle first if you want to start this event!</t>", "PLAIN", -1, true, true];
};
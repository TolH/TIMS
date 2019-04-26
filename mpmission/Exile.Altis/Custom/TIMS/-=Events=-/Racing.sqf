//============================================////============================================//
							  /* Racing event by TOLH/0908 */
//============================================////============================================//
//MISSION ACCEPTED BY PLAYER FROM THE GUI CONFIRM MISSION
//FIRST VEHICLE CHECK
RACETIMER = 30;
if (player == vehicle player) then 
{
	//RANDOMIZE SLEEP IN CASE I WANT TO FIRE THE SCRIPT TO EVERYONE ON THE SERVER BY HANDS SO THEY ALL SPAWN AROUND WITHOUT EXPLODING...
	private _RandomSleep1 selectRandom [0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9];
	private _RandomSleep2 selectRandom [0.9, 0.8, 0.7, 0.6, 0.5, 0.4, 0.3, 0.2, 0.1];
	uiSleep round (_RandomSleep1 + _RandomSleep2);
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
		//SPAWN STUFF AND START THE ACTUAL RACE
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
		//START COUNTDOWN (NEED SOUNDS AND MAYBE AI AROUND DOING AI STUFF)
		titleText ["<t color='#0cd620' size='10'>3...</t><br/>", "PLAIN", -1, true, true];
		uiSleep 1.5;
		titleText ["<t color='#fffa00' size='10'>2..</t><br/>", "PLAIN", -1, true, true];
		uiSleep 1.5;
		titleText ["<t color='#ffb200' size='10'>1.</t><br/>", "PLAIN", -1, true, true];
		uiSleep 1.5;
		_RacingVehicle setFuel 1;
		titleText ["<t color='#ff0000' size='6'>GOGOGO!!!</t><br/>", "PLAIN", -1, true, true];
		uiSleep 1;
		//LAUNCH MAIN TIMER AND CHECKPOINTS
		[_AI_Checkpoint, _RacingVehicle] execVM "Custom\TIMS\-=Events=-\RacingScript.sqf";
	}
	else
	{
		//ADDING SECOND VEHICLE CHECK IN CASE PLAYER ENTER A VEHICLE RIGHT AFTER ACCEPTING THE RACE GUI REQUEST. 
		["ErrorTitleAndText", ["CANNOT JOIN IF ALREADY INSIDE A VEHICLE"]] call ExileClient_gui_toaster_addTemplateToast;
	};
}
else
{
	//FIRST VEHICLE CHECK
	["ErrorTitleAndText", ["CANNOT JOIN IF ALREADY INSIDE A VEHICLE"]] call ExileClient_gui_toaster_addTemplateToast;
};
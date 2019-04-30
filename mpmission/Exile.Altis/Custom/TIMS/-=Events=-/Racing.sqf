//============================================////============================================//
							  /* Racing event by TOLH/0908 */
//============================================////============================================//
/*
OBJECT_USED =  
[
	"VR_3DSelector_01_incomplete_F",	//ORANGE SPEED BOOST
	"VR_3DSelector_01_default_F",	//BLUE
	"VR_3DSelector_01_exit_F",	//RED
	"VR_3DSelector_01_complete_F",	//BROWNISH/ORANGE/GOLD ??
	"Octavia_Civ_03",	//RACING CAR
	"B_Soldier_VR_F"	//CHECKPOINT AI
];
*/
//MISSION ACCEPTED BY PLAYER FROM THE GUI CONFIRM MISSION
RACETIMER = 190;
if (player == vehicle player) then 
{
	//RANDOMIZE SLEEP IN CASE " PLAYER ACTIVATE THE RACE AT THE SAME TIME"
	uiSleep (1 + random 5);
	//TEMP SAVE CURRENT PLAYER POSITION TO TELEPORT HIM BACK WHERE HE WAS
	profileNamespace setVariable ["TP_BACK_POS", getPos player];
	//START
	titleText ["Preparing some stuff...", "BLACK OUT", 7];
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
		//RACING CAR
		private _RacingVehicle = createVehicle ["Octavia_Civ_03", (getMarkerPos "RACING_START") findEmptyPosition [1,25], [], 0, "NONE"];
		//SPEED BONUS ARROW
		private _SpeedBonusArrowOrange = createVehicle ["VR_3DSelector_01_incomplete_F", (getMarkerPos "RACING_WAYPOINT_0"), [], 0, "CAN_COLLIDE"];
		_SpeedBonusArrowOrange enableSimulation false;
		//CHECKPOINT AI
		private _AI_Checkpoint = _GrpResistance createUnit ["B_Soldier_VR_F", (getMarkerPos "RACING_WAYPOINT_0"), [], 0, "CAN_COLLIDE"];
		_AI_Checkpoint hideObject true;
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
		//playSound "KNIGHTRIDER";
			//uiSleep 1;
		//START COUNTDOWN (NEED SOUNDS AND MAYBE AI AROUND DOING AI STUFF)
		titleText ["<t color='#0cd620' size='10'>3...</t><br/>", "PLAIN", -1, true, true];
			uiSleep 1.5;
		titleText ["<t color='#fffa00' size='10'>2..</t><br/>", "PLAIN", -1, true, true];
			uiSleep 1.5;
		titleText ["<t color='#ffb200' size='10'>1.</t><br/>", "PLAIN", -1, true, true];
			uiSleep 1.5;
		_RacingVehicle setFuel 1;
		titleText ["<t color='#ff0000' size='6'>START!!!</t><br/>", "PLAIN", -0.3, true, true];
			uiSleep 1;
		//LAUNCH MAIN TIMER AND CHECKPOINTS
		[_AI_Checkpoint, _RacingVehicle, _SpeedBonusArrowOrange] execVM "Custom\TIMS\-=Events=-\RacingScript.sqf";
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
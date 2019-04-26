//============================================////============================================//
//							-TIMS- (-=Capture_Towers=-.sqf) by TolH\0908
//============================================////============================================//
//									  -MISSION OBJECTIVES-:
//    1: CAPTURE ALL 3 TOWERS AND ALL PLAYER WILL GAIN MONEY EVERY 2minutes UNLESS AI CAPTURE A TOWER BACK. 
//============================================////============================================//
//============================================//
//MISSION RUNNING CHECK
	TIMS_CAPTURE_TOWERS_STARTED = 1;
//============================================//
//SEND MESSAGE TO PLAYER
	MISSION_NOTIFICATION_MSG = "CAPTURE_TOWERS_MAINMISSION_NOTIFICATION"; publicVariable "MISSION_NOTIFICATION_MSG";
	SFX_CUSTOM = "CRATEALERTSFX"; publicVariable "SFX_CUSTOM";
	diag_log "=======================================================================";
	diag_log "-=TIMS_ROAMING=-: -=Capture_Towers.sqf=- Started";
	diag_log "=======================================================================";
//============================================//









//============================================//
//============================================////============================================//
//MISSION RUNNING CHECK
	TIMS_CAPTURE_TOWERS_STARTED = 0;
//============================================//
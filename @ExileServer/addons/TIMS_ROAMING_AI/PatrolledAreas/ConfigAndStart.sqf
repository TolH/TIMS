/******************************************************************************************/
/*
 * See the file Engima\PatrolledAreas\Documentation.txt for a full documentation regarding 
 * start parameters.
 *
/******************************************************************************************/
private ["_parameters"];
// Set custom parameters here
_parameters = [
	["PATROL_AREAS", ["PATROL_1","PATROL_2","PATROL_3","PATROL_4","PATROL_5","PATROL_6","PATROL_7","PATROL_8","PATROL_9","PATROL_10",
					  "PATROL_11","PATROL_12","PATROL_13","PATROL_14","PATROL_15","PATROL_16","PATROL_17","PATROL_18","PATROL_19","PATROL_20",
					  "PATROL_21","PATROL_22","PATROL_23","PATROL_24","PATROL_25","PATROL_26","PATROL_27","PATROL_28","PATROL_29","PATROL_30",
					  "PATROL_31","PATROL_32","PATROL_33","PATROL_34","PATROL_35","PATROL_36","PATROL_37","PATROL_38","PATROL_39","PATROL_40",
					  "PATROL_41","PATROL_42","PATROL_43","PATROL_44","PATROL_45","PATROL_46","PATROL_47","PATROL_48","PATROL_49","PATROL_50",
					  "PATROL_51","PATROL_52","PATROL_53","PATROL_54","PATROL_55","PATROL_56","PATROL_57","PATROL_58","PATROL_59","PATROL_60",
					  "PATROL_61"]],
	["HIDE_MARKERS", true],
	["UNIT_CLASSES", ["O_sniper_F","O_spotter_F","O_SoldierU_GL_F","O_SoldierU_SL_F","O_sniper_F","O_spotter_F","O_recon_F","O_recon_JTAC_F","O_recon_LAT_F","O_recon_M_F","O_recon_TL_F","O_recon_exp_F",
					  "O_sniper_F","O_spotter_F","O_soldierU_AA_F","O_soldierU_AR_F","O_soldierU_AT_F","O_soldierU_A_F","O_soldierU_F","O_sniper_F","O_spotter_F",
					  "O_recon_F","O_recon_JTAC_F","O_recon_LAT_F","O_recon_M_F","O_recon_TL_F","O_recon_exp_F","O_sniper_F","O_spotter_F","O_soldierU_LAT_F","O_soldierU_M_F","O_soldierU_TL_F","O_soldierU_exp_F","O_soldierU_medic_F","O_sniper_F",
					  "O_spotter_F"]],
	["SIDE", EAST],
	["MIN_UNITS_PER_GROUP", 1],
	["MAX_UNITS_PER_GROUP", 4],
	["SPAWN_DISTANCE", 800],
	["MAX_GROUP_COUNT_PER_MARKER", 2],
	["GROUP_PROBABILITY_OF_PRESENCE", 1],
	["MIN_SKILL", 0.1],
	["MAX_SKILL", 0.8],
	["ON_GROUP_CREATED", { ROAMING_FOOT_GRP_COUNT = ROAMING_FOOT_GRP_COUNT + 1; }],
	["ON_GROUP_REMOVING", { ROAMING_FOOT_GRP_COUNT = ROAMING_FOOT_GRP_COUNT - 1; }],
	["DEBUG", false]
];

/******************************************************************************************/
/*  Function Call - Do not edit below this line (unless you know what you are doing)      */
/******************************************************************************************/

// Start script
_parameters call PATAREAS_PatrolledAreas;

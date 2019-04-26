///////////////////////////////////////////////////////////////////////////////
// Static Objects
///////////////////////////////////////////////////////////////////////////////

// Taken away for now
//#include "initServer.sqf"

//Player Nametags
addMissionEventHandler ["Draw3D", {3200 call ExileClient_gui_safezone_safeESP}];
//TEST BODYGUARD
GUARD_AImax = 0;
// Load Status Bar
[] execVM "Custom\StatusBar\statusBar_init.sqf";
//_add = _this spawn GOM_fnc_addAircraftLoadout;
//RING TRANSFORM+ AUTOCHUTE
//============================================////============================================//
	[] spawn
	{
	  while {true} do
		{
			if (vehicle player == player) then 
			{
			    private ["_chute"];
				if (!(isTouchingGround player) && ((position player select 2) >= 6.98) && (vehicle player IsEqualto player) && (alive player)) then
				{
					player switchCamera "EXTERNAL";
					player allowDamage false;
					waitUntil {(position player select 2) <= 6.95};
					addCamShake [6, 3, 15];
					_chute = createVehicle ["Steerable_Parachute_F", position Player, [], 0, "FLY"];
					_chute setPos [(position player select 0), (position player select 1), (position player select 2)+15];
					uiSleep 0.01;
					_chute setDir direction player;
					player moveIndriver _chute;
					_chute allowDamage false;
					player allowDamage true;
				};
			}
			
			else
			{
				_isWater = surfaceIsWater position player;
				//FROM AIR TO GROUND
				if ((speed vehicle player <= 325) && !(isTouchingGround vehicle player) && (typeOf vehicle player == "I_Plane_Fighter_03_dynamicLoadout_F") && ((getPosATL vehicle player select 2) <= 50) && (!_isWater)) then
				{
					transformaction1 = player addAction ["<t color='#FF0000'>Switch to Ground</t>", "Custom\TIMS\misc\transform.sqf"];
					uiSleep 4;
					player removeAction transformaction1;
				};
				//FROM AIR TO WATER
				if ((speed vehicle player <= 325) && !(isTouchingGround vehicle player) && (typeOf vehicle player == "I_Plane_Fighter_03_dynamicLoadout_F") && ((getPosASLW vehicle player select 2) <= 50) && (_isWater)) then
				{
					transformaction2 = player addAction ["<t color='#FF0000'>Switch to Water</t>", "Custom\TIMS\misc\transform.sqf"];
					uiSleep 4;
					player removeAction transformaction2;
				};
				//FROM GROUND TO AIR
				if ((speed vehicle player >= 104) && (typeOf vehicle player == "rhsusf_m1043_w_mk19")) then
				{
					transformaction3 = player addAction ["<t color='#FF0000'>Switch to Air</t>", "Custom\TIMS\misc\transform.sqf"];
					uiSleep 4;
					player removeAction transformaction3;
				};
				//FROM GROUND TO TANK
				if ((speed vehicle player <= -30) && (typeOf vehicle player == "rhsusf_m1043_w_mk19")) then
				{
					transformaction4 = player addAction ["<t color='#FF0000'>Switch to Tank</t>", "Custom\TIMS\misc\transform.sqf"];
					uiSleep 4;
					player removeAction transformaction4;
				};
				//FROM TANK TO GROUND
				if ((speed vehicle player >= 50) && (typeOf vehicle player == "rhsgref_ins_t72bb")) then
				{
					transformaction5 = player addAction ["<t color='#FF0000'>Switch to Ground</t>", "Custom\TIMS\misc\transform.sqf"];
					uiSleep 4;
					player removeAction transformaction5;
				};
				//FROM WATER TO AIR
				if ((speed vehicle player >= 73) && (typeOf vehicle player == "I_Boat_Armed_01_minigun_F")) then
				{
					transformaction6 = player addAction ["<t color='#FF0000'>Switch to Air</t>", "Custom\TIMS\misc\transform.sqf"];
					uiSleep 4;
					player removeAction transformaction6;
				};
			};
		  uiSleep 1.8;
		};
	};
//============================================//
//============================================////============================================//
//To use the function somewhere in another script executed everywhere:
//	[[", because I called it."],"FUNC_I_WANT_EXECUTED",nil,true] spawn BIS_fnc_MP;
//
//or locally:
//	[", because I called it."] call FUNC_I_WANT_EXECUTED;
//
//	FUNC_I_WANT_EXECUTED = {
//	_a_passed_parameter = _this select 0;
//	hint format ["My function just executed%1",_a_passed_parameter];
//	};
//============================================////============================================//
		//SERVER CALL ALL CLIENT TO EXECUTE SQF SCRIPT
	//============================================////============================================//
			//SERVER USE:
			//Execute_Client_SQF = "Custom\TIMS\misc\Bounty_VR_Notification.sqf"; publicVariable "Execute_Client_SQF";
			//ExecVM Execute_Client_SQF;
		//tower_Bar_progress
		"Execute_Client_SQF" addPublicVariableEventHandler
		 {
			private ["_forAll"];
			//_forAll1 = (_this select 1) select 0;
			_forAll = _this select 1;
			execVM _forAll;
		 };
	//============================================////============================================//
		//CUSTOM SOUND TO SEND TO EVERYONE
	//============================================////============================================//
			//SERVER USE:
			//	SFX_CUSTOM = "sound_here_from_description_ext_CLASS"; publicVariable "SFX_CUSTOM";
		//SFX_CUSTOM
		"SFX_CUSTOM" addPublicVariableEventHandler
		{
			private ["_soundSFX"];
			_soundSFX = _this select 1;
			playSound _soundSFX;
		};
	//============================================////============================================//
		//CUSTOM UI FOR MISSION MESSAGE NOTIFICATION
	//============================================////============================================//
			//SERVER USE:
			//	MISSION_NOTIFICATION_MSG = "RscTitles_from_description_ext"; publicVariable "MISSION_NOTIFICATION_MSG";
		//MISSION_NOTIFICATION_MSG
		"MISSION_NOTIFICATION_MSG" addPublicVariableEventHandler
		{
			private ["_MissionMSG"];
			_MissionMSG = _this select 1;
			cutRsc [_MissionMSG, "PLAIN"];
		};
	//============================================////============================================//
		//INVASION NOTIFICATION
	//============================================////============================================//
		//SERVER USE:
		//	showNotification = ["TaskAssigned", "Take back the town from the invaders!"]; publicVariable "showNotification";  
		"showNotification" addPublicVariableEventHandler
		{
			private ["_type", "_message"];
			_array = _this select 1;
			_type = _array select 0;
			_message = "";
			if (count _array > 1) then { _message = _array select 1; };
			[_type, [_message]] call BIS_fnc_showNotification;
		};
//============================================////============================================//

if (!hasInterface || isServer) exitWith {};

///////////////////////////////////////////////////////////////////////////
// Hardware Trader
///////////////////////////////////////////////////////////////////////////
_workBench = "Land_Workbench_01_F" createVehicleLocal [0,0,0];
_workBench setDir 45.4546;
_workBench setPosATL [14587.8, 16758.7, 0.0938587];

_trader = 
[
    "Exile_Trader_Hardware",
    "Exile_Trader_Hardware",
    "WhiteHead_17",
    ["InBaseMoves_sitHighUp1"],
    [0, 0, -0.5],
    170,
    _workBench
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Fast Food Trader
///////////////////////////////////////////////////////////////////////////
_cashDesk = "Land_CashDesk_F" createVehicleLocal [0,0,0];
_cashDesk setDir 131.818;
_cashDesk setPosATL [14589.8, 16778.2, -0.0701294];

_microwave = "Land_Microwave_01_F" createVehicleLocal [0,0,0];
_cashDesk disableCollisionWith _microwave;         
_microwave disableCollisionWith _cashDesk; 
_microwave attachTo [_cashDesk, [-0.6, 0.2, 1.1]];

_ketchup = "Land_Ketchup_01_F" createVehicleLocal [0,0,0];
_cashDesk disableCollisionWith _ketchup;         
_ketchup disableCollisionWith _cashDesk; 
_ketchup attachTo [_cashDesk, [-0.6, 0, 1.1]];

_mustard = "Land_Mustard_01_F" createVehicleLocal [0,0,0];
_cashDesk disableCollisionWith _mustard;         
_mustard disableCollisionWith _cashDesk; 
_mustard attachTo [_cashDesk, [-0.5, -0.05, 1.1]];

_trader = 
[
    "Exile_Trader_Food",
    "Exile_Trader_Food",
    "GreekHead_A3_01",
    ["InBaseMoves_table1"],
    [0.1, 0.5, 0.2],
    170,
    _cashDesk
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Armory Trader
///////////////////////////////////////////////////////////////////////////
_chair = "Land_CampingChair_V2_F" createVehicleLocal [0,0,0];
_chair setDir 208.182;    
_chair setPosATL [14568.1, 16764.3, 0.084837];

_trader = 
[
    "Exile_Trader_Armory",
    "Exile_Trader_Armory",
    "PersianHead_A3_02",
    ["InBaseMoves_SittingRifle1"],
    [0, -0.15, -0.45],
    180,
    _chair
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Equipment Trader
///////////////////////////////////////////////////////////////////////////
_trader = 
[
    "Exile_Trader_Equipment",
    "Exile_Trader_Equipment",
    "WhiteHead_19",
    ["InBaseMoves_Lean1"],
    [14571.5, 16759.1, 0.126438],
    0
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Specops Trader
///////////////////////////////////////////////////////////////////////////
_trader = 
[
    "Exile_Trader_SpecialOperations",
    "Exile_Trader_SpecialOperations",
    "AfricanHead_02",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [14566.3, 16773.2, 0.126438],
    140
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Office Trader
///////////////////////////////////////////////////////////////////////////
_trader = 
[
    "Exile_Trader_Office",
    "Exile_Trader_Office",
    "GreekHead_A3_04",
    ["HubBriefing_scratch", "HubBriefing_stretch", "HubBriefing_think", "HubBriefing_lookAround1", "HubBriefing_lookAround2"],
    [14599.6, 16774.6, 5.12644],
    220
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Waste Dump Trader
///////////////////////////////////////////////////////////////////////////
_trader = 
[
    "Exile_Trader_WasteDump",
    "Exile_Trader_WasteDump",
    "GreekHead_A3_01",
    ["HubStandingUA_move1", "HubStandingUA_move2", "HubStandingUA_idle1", "HubStandingUA_idle2", "HubStandingUA_idle3"],
    [14608.4, 16901.3, 0],
    270
]
call ExileClient_object_trader_create;


///////////////////////////////////////////////////////////////////////////
// Aircraft Trader
///////////////////////////////////////////////////////////////////////////
_trader = 
[
    "Exile_Trader_Aircraft",
    "Exile_Trader_Aircraft",
    "WhiteHead_17",
    ["LHD_krajPaluby"],
    [14596.5, 16752.9, 0.12644],
    133
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Aircraft Customs Trader
///////////////////////////////////////////////////////////////////////////
_trader = 
[
    "Exile_Trader_AircraftCustoms",
    "Exile_Trader_AircraftCustoms",
    "GreekHead_A3_07",
    ["HubStandingUC_idle1", "HubStandingUC_idle2", "HubStandingUC_idle3", "HubStandingUC_move1", "HubStandingUC_move2"],
    [14635, 16790.3, 0],
    156.294
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Vehicle Trader
///////////////////////////////////////////////////////////////////////////

_trader = 
[
    "Exile_Trader_Vehicle",
    "Exile_Trader_Vehicle",
    "WhiteHead_11",
    ["InBaseMoves_repairVehicleKnl", "InBaseMoves_repairVehiclePne"],
    [14603.7, 16877.3, 0.00143433],
    90
]
call ExileClient_object_trader_create;

_carWreck = "Land_Wreck_CarDismantled_F" createVehicleLocal [0,0,0];
_carWreck setDir 355.455;
_carWreck setPosATL [14605.6, 16877.3, 0.0208359];

///////////////////////////////////////////////////////////////////////////
// Vehicle Customs Trader
///////////////////////////////////////////////////////////////////////////
_trader = 
[
    "Exile_Trader_VehicleCustoms",
    "Exile_Trader_VehicleCustoms",
    "WhiteHead_11",
    ["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
    [14617.2, 16888.4, 0],
    269.96
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Guard 01
///////////////////////////////////////////////////////////////////////////
_trader = 
[
    "Exile_Guard_01",
    "",
    "WhiteHead_17",
    ["InBaseMoves_patrolling1"],
    [14564.9,16923.4,0.00146294],
    323.53
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Guard 02
///////////////////////////////////////////////////////////////////////////
_trader = 
[
    "Exile_Guard_02",
    "",
    "WhiteHead_03",
    ["InBaseMoves_patrolling2"],
    [14626.3,16834.6,4.72644],
    326.455
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Guard 03
///////////////////////////////////////////////////////////////////////////
_trader = 
[
    "Exile_Guard_03",
    "",
    "AfricanHead_03",
    ["InBaseMoves_patrolling1"],
    [14577.1,16793.1,3.75118],
    313.349
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Western Guard 01
///////////////////////////////////////////////////////////////////////////
_trader = 
[
    "Exile_Guard_02",
    "",
    "WhiteHead_03",
    ["InBaseMoves_patrolling2"],
    [2950.52,18195.3,4.93399],
    179.092
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Western Boat Trader
///////////////////////////////////////////////////////////////////////////

_trader = 
[
    "Exile_Trader_Boat",
    "Exile_Trader_Boat",
    "WhiteHead_17",
    ["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
    [2914.35,18192.9,8.51858],
    88.3346
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Western Vehicle Trader
///////////////////////////////////////////////////////////////////////////

_trader = 
[
    "Exile_Trader_Vehicle",
    "Exile_Trader_Vehicle",
    "WhiteHead_11",
    ["InBaseMoves_repairVehicleKnl", "InBaseMoves_repairVehiclePne"],
    [2980.19,18146.2,1.06391],
    222.352
]
call ExileClient_object_trader_create;

_carWreck = "Land_Wreck_CarDismantled_F" createVehicleLocal [0,0,0];
_carWreck setDir 130.966;    
_carWreck setPosATL [2978.76,18144.5,1.13293];

///////////////////////////////////////////////////////////////////////////
// Western Waste Dump Trader
///////////////////////////////////////////////////////////////////////////
_trader = 
[
    "Exile_Trader_WasteDump",
    "Exile_Trader_WasteDump",
    "GreekHead_A3_01",
    ["HubStandingUA_move1", "HubStandingUA_move2", "HubStandingUA_idle1", "HubStandingUA_idle2", "HubStandingUA_idle3"],
    [2984.05,18133.4,0.00107765],
    29.3856
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Western Fast Food Trader
///////////////////////////////////////////////////////////////////////////

_trader = 
[
    "Exile_Trader_Food",
    "Exile_Trader_Food",
    "GreekHead_A3_01",
    ["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
    [2979.87,18184.9,2.55185],
    89.2952
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Western Equipment Trader
///////////////////////////////////////////////////////////////////////////

_trader = 
[
    "Exile_Trader_Equipment",
    "Exile_Trader_Equipment",
    "WhiteHead_19",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [2980.7,18192.9,2.49853],
    130.535
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Western Armory Trader
///////////////////////////////////////////////////////////////////////////

_trader = 
[
    "Exile_Trader_Armory",
    "Exile_Trader_Armory",
    "PersianHead_A3_02",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [2986.43,18178.5,1.66267],
    296.855
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Western Guard 02
///////////////////////////////////////////////////////////////////////////
_trader = 
[
    "Exile_Guard_03",
    "",
    "AfricanHead_03",
    ["InBaseMoves_patrolling1"],
    [2993.2,18167,0.353821],
    109.888
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Eastern Fast Food Trader
///////////////////////////////////////////////////////////////////////////
_cashDesk = "Land_CashDesk_F" createVehicleLocal [0,0,0];
_cashDesk setDir 222.727;
_cashDesk setPosATL [23353.1, 24168, 0.16585];

_microwave = "Land_Microwave_01_F" createVehicleLocal [0,0,0];
_cashDesk disableCollisionWith _microwave;         
_microwave disableCollisionWith _cashDesk; 
_microwave attachTo [_cashDesk, [-0.6, 0.2, 1.1]];

_ketchup = "Land_Ketchup_01_F" createVehicleLocal [0,0,0];
_cashDesk disableCollisionWith _ketchup;         
_ketchup disableCollisionWith _cashDesk; 
_ketchup attachTo [_cashDesk, [-0.6, 0, 1.1]];

_mustard = "Land_Mustard_01_F" createVehicleLocal [0,0,0];
_cashDesk disableCollisionWith _mustard;         
_mustard disableCollisionWith _cashDesk; 
_mustard attachTo [_cashDesk, [-0.5, -0.05, 1.1]];

_trader = 
[
    "Exile_Trader_Food",
    "Exile_Trader_Food",
    "GreekHead_A3_01",
    ["InBaseMoves_table1"],
    [0.1, 0.5, 0.2],
    170,
    _cashDesk
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Eastern Boat Trader
///////////////////////////////////////////////////////////////////////////

_trader = 
[
    "Exile_Trader_Boat",
    "Exile_Trader_Boat",
    "WhiteHead_17",
    ["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
    [23296.6,24189.8,5.61213],
    96
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Eastern Vehicle Trader
///////////////////////////////////////////////////////////////////////////

_trader = 
[
    "Exile_Trader_Vehicle",
    "Exile_Trader_Vehicle",
    "WhiteHead_11",
    ["InBaseMoves_repairVehicleKnl", "InBaseMoves_repairVehiclePne"],
    [23385.6,24191.6,0.00136566],
    123
]
call ExileClient_object_trader_create;

_carWreck = "Land_Wreck_CarDismantled_F" createVehicleLocal [0,0,0];
_carWreck setDir 47.2728;    
_carWreck setPosATL [23387.3, 24190.3, 0.05];

///////////////////////////////////////////////////////////////////////////
// Eastern Hardware Trader
///////////////////////////////////////////////////////////////////////////
_workBench = "Land_Workbench_01_F" createVehicleLocal [0,0,0];
_workBench setDir 279.545;
_workBench setPosATL [23371.6, 24188, 0.89873];

_trader = 
[
    "Exile_Trader_Hardware",
    "Exile_Trader_Hardware",
    "WhiteHead_17",
    ["InBaseMoves_sitHighUp1"],
    [0, 0, -0.5],
    170,
    _workBench
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Eastern Equipment Trader
///////////////////////////////////////////////////////////////////////////
_trader = 
[
    "Exile_Trader_Equipment",
    "Exile_Trader_Equipment",
    "WhiteHead_19",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [23379.9, 24169.3, 0.199955],
    206
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Eastern Armory Trader
///////////////////////////////////////////////////////////////////////////
_chair = "Land_CampingChair_V2_F" createVehicleLocal [0,0,0];
_chair setDir 12.7272;
_chair setPosATL [23379.6, 24169.3, 4.56662];

_trader = 
[
    "Exile_Trader_Armory",
    "Exile_Trader_Armory",
    "PersianHead_A3_02",
    ["InBaseMoves_SittingRifle1"],
    [0, -0.15, -0.45],
    180,
    _chair
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Eastern Waste Dump Trader
///////////////////////////////////////////////////////////////////////////
_trader = 
[
    "Exile_Trader_WasteDump",
    "Exile_Trader_WasteDump",
    "GreekHead_A3_01",
    ["HubStandingUA_move1", "HubStandingUA_move2", "HubStandingUA_idle1", "HubStandingUA_idle2", "HubStandingUA_idle3"],
    [23336.6,24214.4,0.00115061],
    346
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Russian Roulette
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_RussianRoulette",
    "",
    "GreekHead_A3_01",
    ["HubStandingUA_move1", "HubStandingUA_move2", "HubStandingUA_idle1", "HubStandingUA_idle2", "HubStandingUA_idle3"],
    [14622.6, 16820.1, 0.126],
    187.428
]
call ExileClient_object_trader_create;

////////////////////////////
//CUSTOM JAY TRADER START
////////////////////////////
private _npcs = [
["Exile_Trader_CommunityCustoms", ["[player","""STAND1""","""NONE""]","call","BIS_fnc_ambientAnim"], "Exile_Trader_CommunityCustoms", "WhiteHead_18", [["M1014","","","",["8rnd_B_Beneli_74Slug",8],[],""],[],["Exile_Weapon_TaurusGold","","","",["Exile_Magazine_6Rnd_45ACP",6],[],""],["U_B_survival_uniform",[["8rnd_B_Beneli_74Slug",3,8],["Exile_Magazine_6Rnd_45ACP",2,6]]],["V_PlateCarrier2_rgr",[]],["B_Messenger_Gray_F",[]],"H_Bandanna_camo","G_Bandanna_beast",["Laserdesignator","","","",["Laserbatteries",1],[],""],["","O_UavTerminal","","","ItemWatch",""]], [18453.2, 14264.2, 23.2597], [-0.86193, 0.507027, 0], [0, 0, 1]]
];

{
    private _logic = "Logic" createVehicleLocal [0, 0, 0];
    private _trader = (_x select 0) createVehicleLocal [0, 0, 0];
    private _animations = _x select 1;
    
    _logic setPosWorld (_x select 5);
    _logic setVectorDirAndUp [_x select 6, _x select 7];
    
    _trader setVariable ["BIS_enableRandomization", false];
    _trader setVariable ["BIS_fnc_animalBehaviour_disable", true];
    _trader setVariable ["ExileAnimations", _animations];
    _trader setVariable ["ExileTraderType", _x select 2];
    _trader disableAI "ANIM";
    _trader disableAI "MOVE";
    _trader disableAI "FSM";
    _trader disableAI "AUTOTARGET";
    _trader disableAI "TARGET";
    _trader disableAI "CHECKVISIBLE";
    _trader allowDamage false;
    _trader setFace (_x select 3);
    _trader setUnitLoadOut (_x select 4);
    _trader setPosWorld (_x select 5);
    _trader setVectorDirAndUp [_x select 6, _x select 7];
    _trader reveal _logic;
    _trader attachTo [_logic, [0, 0, 0]];
    _trader switchMove (_animations select 0);
    _trader addEventHandler ["AnimDone", {_this call ExileClient_object_trader_event_onAnimationDone}];
}
forEach _npcs;
////////////////////////////
//CUSTOM JAY TRADER END
////////////////////////////
if (name player in ["A Sniper","Frank","Poison","Blazin","pondo","Regen_","jayru"]) then
{
	["InitializePlayer", [player, true]] call BIS_fnc_dynamicGroups;
};
//Bones Super Advanced Repair System (SARS)
Bones_fnc_salvageAndRepairMenu = compileFinal preprocessFileLineNumbers "Custom\advancedRepair\Bones_fnc_salvageAndRepairMenu.sqf"; 

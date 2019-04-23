//============================================////============================================//
//SIMPLE ROAMING AI SCRIPT by -=0908=- AI'S USING UPS SCRIPT
//============================================////============================================//
//_center getPos [_radius * sqrt random 1, random 360];
	//MAIN MARKER AREA
	private _PatrolRoamingAI_Marker = createMarker ["MAINMARKERCOUNTAREA", [15273.639, 15679.547, 0]];
	"MAINMARKERCOUNTAREA" setMarkerColor "ColorRed";
	"MAINMARKERCOUNTAREA" setMarkerShape "RECTANGLE";
	"MAINMARKERCOUNTAREA" setMarkerBrush "Border";
	"MAINMARKERCOUNTAREA" setMarkerSize [13000,11000];
	"MAINMARKERCOUNTAREA" setMarkerAlpha 1;
	//
	private _PatrolParaAI_Marker01 = createMarker ["TOPLEFTROAMINGAIPATROL", [9684.1846, 18966.496, 0]];
	"TOPLEFTROAMINGAIPATROL" setMarkerColor "ColorRed";
	"TOPLEFTROAMINGAIPATROL" setMarkerShape "RECTANGLE";
	"TOPLEFTROAMINGAIPATROL" setMarkerBrush "Border";
	"TOPLEFTROAMINGAIPATROL" setMarkerSize [6982.958,3565.0601];
	"TOPLEFTROAMINGAIPATROL" setMarkerAlpha 0.0;
	//
	private _PatrolParaAI_Marker02 = createMarker ["BOTTOMLEFTROAMINGAIPATROL", [8320.3203, 11837.495, 0]];
	"BOTTOMLEFTROAMINGAIPATROL" setMarkerColor "ColorRed";
	"BOTTOMLEFTROAMINGAIPATROL" setMarkerShape "RECTANGLE";
	"BOTTOMLEFTROAMINGAIPATROL" setMarkerBrush "Border";
	"BOTTOMLEFTROAMINGAIPATROL" setMarkerSize [5364.5132,3500];
	"BOTTOMLEFTROAMINGAIPATROL" setMarkerAlpha 0.0;
	//
	private _PatrolParaAI_Marker03 = createMarker ["TOPRIGHTROAMINGAIPATROL", [24086.537, 19766.814, 0]];
	"TOPRIGHTROAMINGAIPATROL" setMarkerColor "ColorRed";
	"TOPRIGHTROAMINGAIPATROL" setMarkerShape "RECTANGLE";
	"TOPRIGHTROAMINGAIPATROL" setMarkerBrush "Border";
	"TOPRIGHTROAMINGAIPATROL" setMarkerSize [3927.9131,3928.8418];
	"TOPRIGHTROAMINGAIPATROL" setMarkerAlpha 0.0;
	//
	private _PatrolParaAI_Marker04 = createMarker ["BOTTOMRIGHTROAMINGAIPATROL", [19503.967, 12163.78, 0]];
	"BOTTOMRIGHTROAMINGAIPATROL" setMarkerColor "ColorRed";
	"BOTTOMRIGHTROAMINGAIPATROL" setMarkerShape "RECTANGLE";
	"BOTTOMRIGHTROAMINGAIPATROL" setMarkerBrush "Border";
	"BOTTOMRIGHTROAMINGAIPATROL" setMarkerSize [3055.043,6257.043];
	"BOTTOMRIGHTROAMINGAIPATROL" setMarkerAlpha 0.0;
//============================================////============================================//
ROAMING_FLY_COUNT = 0;
ROAMING_GROUND_COUNT = 0;
ROAMING_FOOT_GRP_COUNT = 0;
ROAMING_PARA_COUNT = 0;
BONUS_VR_HUNT_POINT = 0;
AICOOLDOWNFLY = 420;
AICOOLDOWNGROUND = 120;
//============================================////============================================//
//PRE-SPAWN UNIT ON FOOT IN EACH TOWN AND HILL
/*private _towns1 = nearestLocations [getMarkerPos "MAINMARKERCOUNTAREA", ["NameVillage","NameCity","NameCityCapital","Hill"], 8000];
{
	private _FoundPos = position _x;
	private _GrpSideRoamingOnFOOT1 = createGroup EAST;
	private _roadPosFoot1 = [[[_FoundPos, 150]],[]] call BIS_fnc_randomPos;
	private _RandomGroupAmount1 = round (1 + random 3);
	for "_x" from 1 to _RandomGroupAmount1 do 
	{
		private _randomMEN1 = selectRandom AI_ROAMING_MEN_CHOICE;
		private _PRE1_AI_SKILLS_ROAMING = selectRandom AI_SKILLS_ROAMING_RND;
		private _unitRoamingMEN1 = _GrpSideRoamingOnFOOT1 createUnit [_randomMEN1, _roadPosFoot1, [], 1, "FORM"];
		uiSleep 0.2;
		[_unitRoamingMEN1] joinSilent _GrpSideRoamingOnFOOT1;
		_unitRoamingMEN1 setSkill _PRE1_AI_SKILLS_ROAMING;
		_unitRoamingMEN1 setVariable ["ExileMoney",round (random AI_MONEY_DROP), true];
		[_unitRoamingMEN1, "MAINMARKERCOUNTAREA", "NOWAIT", "delete:", 600] execVM "TIMS_ROAMING_AI\Roaming_AI\UPS.sqf";
		uiSleep 0.2;
		_unitRoamingMEN1 addEventHandler ["Killed",{BONUS_VR_HUNT_POINT = BONUS_VR_HUNT_POINT + 1; ROAMING_FOOT_COUNT = ROAMING_FOOT_COUNT - 1; _this execVM "TIMS_ROAMING_AI\Roaming_AI\EH_KILLED_FOOT.sqf"; diag_log format ["-=TIMS_ROAMING=-:=========================#ON_FOOT_UNIT ELEMINATED BY:[%1]============#ON_FOOT_UNIT LEFT:[%2]", _this select 1, ROAMING_FOOT_COUNT]}];
		uiSleep 0.2;
		ROAMING_FOOT_COUNT = ROAMING_FOOT_COUNT + 1;
	};
	uiSleep 2;
} forEach _towns1;*/
//============================================////============================================//
//PRE-SPAWN GROUND VEHICLES
for "_x" from 1 to AI_ROAMING_GROUND_MAX do 
{
	private _GrpSideRoamingGroundPRE = createGroup EAST;
	private _randomGroundPRE = selectRandom AI_ROAMING_GROUND_CHOICE;
	//private _RandomPatrolMrkPRE = selectRandom ["TOPLEFTROAMINGAIPATROL","BOTTOMLEFTROAMINGAIPATROL","TOPRIGHTROAMINGAIPATROL","BOTTOMRIGHTROAMINGAIPATROL"];
	private _RandomPatrolMrkPRE = selectRandom ["PATROL_1","PATROL_2","PATROL_3","PATROL_4","PATROL_5","PATROL_6","PATROL_7","PATROL_8","PATROL_9","PATROL_10",
											    "PATROL_11","PATROL_12","PATROL_13","PATROL_14","PATROL_15","PATROL_16","PATROL_17","PATROL_18","PATROL_19","PATROL_20",
											    "PATROL_21","PATROL_22","PATROL_23","PATROL_24","PATROL_25","PATROL_26","PATROL_27","PATROL_28","PATROL_29","PATROL_30",
											    "PATROL_31","PATROL_32","PATROL_33","PATROL_34","PATROL_35","PATROL_36","PATROL_37","PATROL_38","PATROL_39","PATROL_40",
											    "PATROL_41","PATROL_42","PATROL_43","PATROL_44","PATROL_45","PATROL_46","PATROL_47","PATROL_48","PATROL_49","PATROL_50",
											    "PATROL_51","PATROL_52","PATROL_53","PATROL_54","PATROL_55","PATROL_56","PATROL_57","PATROL_58","PATROL_59","PATROL_60",
											    "PATROL_61"];
	private _roadPosPRE = getPos ((getMarkerPos _RandomPatrolMrkPRE nearRoads 2000) call BIS_fnc_selectRandom);
	private _positionRaodsPRE = [_roadPosPRE, 0, 5, 5, 0, 13000, 0] call BIS_fnc_findSafePos;
	private _RandomGroundVehiclePRE = createVehicle [_randomGroundPRE, _positionRaodsPRE, [], 0, "FORM"];
	private _PRE2_AI_SKILLS_ROAMING = selectRandom AI_SKILLS_ROAMING_RND;
	uiSleep 0.2;
	createVehicleCrew _RandomGroundVehiclePRE;
		{
			[_x] joinSilent _GrpSideRoamingGroundPRE;
			_x setSkill _PRE2_AI_SKILLS_ROAMING;
			[_x, "MAINMARKERCOUNTAREA", "NOWAIT", "delete:", 10] execVM "TIMS_ROAMING_AI\Roaming_AI\UPS.sqf";
			uiSleep 0.2;
		} forEach crew _RandomGroundVehiclePRE;
	_RandomGroundVehiclePRE setUnloadInCombat [false, false];
	[_RandomGroundVehiclePRE, 240] execVM "TIMS_ROAMING_AI\Roaming_AI\deleteVehicles.sqf";
	_RandomGroundVehiclePRE addEventHandler ["Killed",{ BONUS_VR_HUNT_POINT = BONUS_VR_HUNT_POINT + 5; ROAMING_GROUND_COUNT = ROAMING_GROUND_COUNT - 1; _this execVM "TIMS_ROAMING_AI\Roaming_AI\EH_KILLED_VEHICLE.sqf"; }];
	ROAMING_GROUND_COUNT = ROAMING_GROUND_COUNT + 1;
	uiSleep 0.2;
	clearBackpackCargoGlobal _RandomGroundVehiclePRE;
	clearMagazineCargoGlobal _RandomGroundVehiclePRE;
	clearWeaponCargoGlobal _RandomGroundVehiclePRE;
	clearItemCargoGlobal _RandomGroundVehiclePRE;
	uiSleep 3;
};
//============================================////============================================//
//RESPAWN AI IF KILLED OR LOWER THAN SPECIFIED NUMBERS
while {AI_ROAMING_ACTIVATED isEqualTo 1} do 
{
  private _AiCountALL = ({alive _x AND (side _x) isEqualTo EAST AND (_x inArea "MAINMARKERCOUNTAREA")} count allunits);
  private _playerCount = {alive _x} count playableUnits;
  diag_log format ["-=TIMS_INFO=-:#PARA:[%14]===#FLYING:[%5/%8]===#GROUND:[%6/%9]===#ON_FOOT_GRP:[%7]===#TOTAL_AI:[%2]===#BOUNTY_CHK:[%12/%13]===#PLAYERS_ONLINE:[%3]===#UPTIME:[%1H:%11M]===#SERVER_FPS:[%4]", floor (diag_tickTime/3600), _AiCountALL, _playerCount, diag_fps, ROAMING_FLY_COUNT, ROAMING_GROUND_COUNT, ROAMING_FOOT_GRP_COUNT, AI_ROAMING_FLYING_MAX, AI_ROAMING_GROUND_MAX, AI_ROAMING_UNIT_ON_FOOT_MAX, floor ((diag_tickTime % 3600) / 60), BONUS_VR_HUNT_POINT, AI_BONUS_VR_HUNT,ROAMING_PARA_COUNT];
  uiSleep 30;
	//============================================//
	//UNITONFOOT SPAWN CHECK
	/*if (ROAMING_FOOT_COUNT < AI_ROAMING_UNIT_ON_FOOT_MAX) then 
	{
		private _GrpSideRoamingOnFOOT2 = createGroup EAST;
		private _roadPosFoot2 = nearestLocations [getMarkerPos "MAINMARKERCOUNTAREA", ["NameVillage","NameCity","NameCityCapital"], 10000];
		private _RandomTownPosition2 = position (_roadPosFoot2 select (floor (random (count _roadPosFoot2))));
		private _roadPos2 = getPos ((_RandomTownPosition2 nearRoads 400) call BIS_fnc_selectRandom);
		private _RandomGroupAmount2 = round (3 + random 2);
		for "_x" from 1 to _RandomGroupAmount2 do 
		{
			private _randomMEN2 = selectRandom AI_ROAMING_MEN_CHOICE;
			private _PRE3_AI_SKILLS_ROAMING = selectRandom AI_SKILLS_ROAMING_RND;
			private _unitRoamingMEN2 = _GrpSideRoamingOnFOOT2 createUnit [_randomMEN2, _roadPos2, [], 1, "FORM"];
			uiSleep 0.2;
			[_unitRoamingMEN2] joinSilent _GrpSideRoamingOnFOOT2;
			_unitRoamingMEN2 setSkill _PRE3_AI_SKILLS_ROAMING;
			_unitRoamingMEN2 setVariable ["ExileMoney",round (random AI_MONEY_DROP), true];
			[_unitRoamingMEN2, "MAINMARKERCOUNTAREA", "NOWAIT", "delete:", 600] execVM "TIMS_ROAMING_AI\Roaming_AI\UPS.sqf";
			uiSleep 0.2;
			_unitRoamingMEN2 addEventHandler ["Killed",{BONUS_VR_HUNT_POINT = BONUS_VR_HUNT_POINT + 1; ROAMING_FOOT_COUNT = ROAMING_FOOT_COUNT - 1; _this execVM "TIMS_ROAMING_AI\Roaming_AI\EH_KILLED_FOOT.sqf"; diag_log format ["-=TIMS_ROAMING=-:=========================#ON_FOOT_UNIT ELEMINATED BY:[%1]============#ON_FOOT_UNIT LEFT:[%2]", _this select 1, ROAMING_FOOT_COUNT]}];
			uiSleep 0.2;
			ROAMING_FOOT_COUNT = ROAMING_FOOT_COUNT + 1;
		};
	};*/
	//============================================//
	if (ROAMING_FLY_COUNT isEqualTo AI_ROAMING_FLYING_MAX) then 
	{
		AICOOLDOWNFLY = 420;
	};
	if ((ROAMING_FLY_COUNT < AI_ROAMING_FLYING_MAX) && (AICOOLDOWNFLY <= 0)) then 
	{
		private _GrpSideRoamingFlying = createGroup EAST;
		private _randomFlying = selectRandom AI_ROAMING_FLYING_CHOICE;
		private _RandomPatrolMrk1 = selectRandom ["PATROL_1","PATROL_2","PATROL_3","PATROL_4","PATROL_5","PATROL_6","PATROL_7","PATROL_8","PATROL_9","PATROL_10",
											    "PATROL_11","PATROL_12","PATROL_13","PATROL_14","PATROL_15","PATROL_16","PATROL_17","PATROL_18","PATROL_19","PATROL_20",
											    "PATROL_21","PATROL_22","PATROL_23","PATROL_24","PATROL_25","PATROL_26","PATROL_27","PATROL_28","PATROL_29","PATROL_30",
											    "PATROL_31","PATROL_32","PATROL_33","PATROL_34","PATROL_35","PATROL_36","PATROL_37","PATROL_38","PATROL_39","PATROL_40",
											    "PATROL_41","PATROL_42","PATROL_43","PATROL_44","PATROL_45","PATROL_46","PATROL_47","PATROL_48","PATROL_49","PATROL_50",
											    "PATROL_51","PATROL_52","PATROL_53","PATROL_54","PATROL_55","PATROL_56","PATROL_57","PATROL_58","PATROL_59","PATROL_60",
											    "PATROL_61"];
		private _360random = getMarkerPos _RandomPatrolMrk1 getPos [5000 * sqrt random 1, random 360];
		private _RandomFlyingVehicle = createVehicle [_randomFlying, _360random, [], 0, "FLY"];
		private _PRE4_AI_SKILLS_ROAMING = selectRandom AI_SKILLS_ROAMING_RND;
		uiSleep 0.2;
		createVehicleCrew _RandomFlyingVehicle;
			{
				[_x] joinSilent _GrpSideRoamingFlying;
				_x setSkill _PRE4_AI_SKILLS_ROAMING;
				[_x, "MAINMARKERCOUNTAREA", "NOWAIT", "delete:", 15] execVM "TIMS_ROAMING_AI\Roaming_AI\UPS.sqf";
				uiSleep 0.2;
			} forEach crew _RandomFlyingVehicle;
		_RandomFlyingVehicle setUnloadInCombat [false, false];
		[_RandomFlyingVehicle, 240] execVM "TIMS_ROAMING_AI\Roaming_AI\deleteVehicles.sqf";
		//_RandomFlyingVehicle addEventHandler ["Fired",{[_this select 0,getNumber (configFile/"CfgAmmo"/(_this select 4)/"explosive")] spawn {if (_this select 1==1) then {uiSleep 60};_this select 0 setVehicleAmmo 1; _this select 0 setFuel 1}}];
		_RandomFlyingVehicle addEventHandler ["Killed",{ BONUS_VR_HUNT_POINT = BONUS_VR_HUNT_POINT + 10; ROAMING_FLY_COUNT = ROAMING_FLY_COUNT - 1; _this execVM "TIMS_ROAMING_AI\Roaming_AI\EH_KILLED_VEHICLE.sqf"; }];
		ROAMING_FLY_COUNT = ROAMING_FLY_COUNT + 1;
		uiSleep 0.2;
		clearBackpackCargoGlobal _RandomFlyingVehicle;
		clearMagazineCargoGlobal _RandomFlyingVehicle;
		clearWeaponCargoGlobal _RandomFlyingVehicle;
		clearItemCargoGlobal _RandomFlyingVehicle;
		AICOOLDOWNFLY = 420;
	};
	uiSleep 0.2;
	//============================================//
	//GROUND SPAWN CHECK
	if (ROAMING_GROUND_COUNT isEqualTo AI_ROAMING_GROUND_MAX) then 
	{
		AICOOLDOWNGROUND = 120;
	};
	if ((ROAMING_GROUND_COUNT < AI_ROAMING_GROUND_MAX) && (AICOOLDOWNGROUND <= 0)) then 
	{
		private _GrpSideRoamingGround = createGroup EAST;
		private _randomGround = selectRandom AI_ROAMING_GROUND_CHOICE;
		private _RandomPatrolMrk2 = selectRandom ["PATROL_1","PATROL_2","PATROL_3","PATROL_4","PATROL_5","PATROL_6","PATROL_7","PATROL_8","PATROL_9","PATROL_10",
											    "PATROL_11","PATROL_12","PATROL_13","PATROL_14","PATROL_15","PATROL_16","PATROL_17","PATROL_18","PATROL_19","PATROL_20",
											    "PATROL_21","PATROL_22","PATROL_23","PATROL_24","PATROL_25","PATROL_26","PATROL_27","PATROL_28","PATROL_29","PATROL_30",
											    "PATROL_31","PATROL_32","PATROL_33","PATROL_34","PATROL_35","PATROL_36","PATROL_37","PATROL_38","PATROL_39","PATROL_40",
											    "PATROL_41","PATROL_42","PATROL_43","PATROL_44","PATROL_45","PATROL_46","PATROL_47","PATROL_48","PATROL_49","PATROL_50",
											    "PATROL_51","PATROL_52","PATROL_53","PATROL_54","PATROL_55","PATROL_56","PATROL_57","PATROL_58","PATROL_59","PATROL_60",
											    "PATROL_61"];
		private _roadPos = getPos ((getMarkerPos _RandomPatrolMrk2 nearRoads 2000) call BIS_fnc_selectRandom);
		private _positionRaods = [_roadPos, 0, 5, 5, 0, 13000, 0] call BIS_fnc_findSafePos;
		private _RandomGroundVehicle = createVehicle [_randomGround, _positionRaods, [], 0, "FORM"];
		private _PRE5_AI_SKILLS_ROAMING = selectRandom AI_SKILLS_ROAMING_RND;
		uiSleep 0.2;
		createVehicleCrew _RandomGroundVehicle;
			{
				[_x] joinSilent _GrpSideRoamingGround;
				_x setSkill _PRE5_AI_SKILLS_ROAMING;
				[_x, "MAINMARKERCOUNTAREA", "NOWAIT", "delete:", 10] execVM "TIMS_ROAMING_AI\Roaming_AI\UPS.sqf";
				uiSleep 0.2;
			} forEach crew _RandomGroundVehicle;
		_RandomGroundVehicle setUnloadInCombat [false, false];
		[_RandomGroundVehicle, 240] execVM "TIMS_ROAMING_AI\Roaming_AI\deleteVehicles.sqf";
		//_RandomGroundVehicle addEventHandler ["Fired",{[_this select 0,getNumber (configFile/"CfgAmmo"/(_this select 4)/"explosive")] spawn {if (_this select 1==1) then {uiSleep 60};_this select 0 setVehicleAmmo 1; _this select 0 setFuel 1}}];
		_RandomGroundVehicle addEventHandler ["Killed",{ BONUS_VR_HUNT_POINT = BONUS_VR_HUNT_POINT + 5; ROAMING_GROUND_COUNT = ROAMING_GROUND_COUNT - 1; _this execVM "TIMS_ROAMING_AI\Roaming_AI\EH_KILLED_VEHICLE.sqf"; }];
		ROAMING_GROUND_COUNT = ROAMING_GROUND_COUNT + 1;
		uiSleep 0.2;
		clearBackpackCargoGlobal _RandomGroundVehicle;
		clearMagazineCargoGlobal _RandomGroundVehicle;
		clearWeaponCargoGlobal _RandomGroundVehicle;
		clearItemCargoGlobal _RandomGroundVehicle;
		uiSleep 0.2;
		AICOOLDOWNGROUND = 120;
	};
	uiSleep 0.2;
	//============================================//
	//BONUS_VR_HUNT
	if (BONUS_VR_HUNT_POINT >= AI_BONUS_VR_HUNT) then 
	{
		MISSION_NOTIFICATION_MSG = "VR_HUNT_NOTIFICATION"; publicVariable "MISSION_NOTIFICATION_MSG";
		SFX_CUSTOM = "COASTPATROLALERTSFX"; publicVariable "SFX_CUSTOM";
		private _GrpSideRoamingHunt = createGroup EAST;
		private _roadPosBonusHunt = nearestLocations [getMarkerPos "MAINMARKERCOUNTAREA", ["NameVillage","NameCity","NameCityCapital"], 10000];
		private _RandomTownPositionHunt = position (_roadPosBonusHunt select (floor (random (count _roadPosBonusHunt))));
		private _roadPosHunt = getPos ((_RandomTownPositionHunt nearRoads 500) call BIS_fnc_selectRandom);
		private _unitRoamingHUNT = _GrpSideRoamingHunt createUnit ["O_Soldier_VR_F", _roadPosHunt, [], 1, "FORM"];
		uiSleep 0.2;
		[_unitRoamingHUNT] joinSilent _GrpSideRoamingHunt;
		_unitRoamingHUNT setSkill 1;
		[_unitRoamingHUNT, "MAINMARKERCOUNTAREA", "delete:", 420] execVM "TIMS_ROAMING_AI\Roaming_AI\UPS.sqf";
		uiSleep 0.2;
		_unitRoamingHUNT addEventHandler ["Killed",{ _this execVM "TIMS_ROAMING_AI\Roaming_AI\EH_KILLED_VR.sqf"; }];
		uiSleep 0.2;
		BONUS_VR_HUNT_POINT = 0;
		uiSleep 0.2;
			//============================================//
			//SEND A PARADROP TO A RANDOM PLAYER WITH RANDOM AMOUNT OF AI UP TO 10 MAX
			[1] execVM "TIMS_ROAMING_AI\Scripts\paradrop.sqf";
			uiSleep 0.2;
			//============================================//
		AI_BONUS_VR_HUNT = AI_BONUS_VR_HUNT + 5;
	};
  uiSleep 0.2;
  //============================================//
  AICOOLDOWNFLY = AICOOLDOWNFLY -30;
  AICOOLDOWNGROUND = AICOOLDOWNGROUND -30;
};
//============================================////============================================//
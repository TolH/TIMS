/*
				***		ARMA3Alpha FILL HOUSE SCRIPT v3.0 - by SPUn / Kaarto Media	***

						Fills house or buildings in defined range with soldiers
						
			Calling the script:
			
					default: nul = [this] execVM "TIMS\LV\fillHouse.sqf";
					
					custom:  nul = [target, side, patrol, patrol type, spawn rate, radius, skills, group, 
									custom init, ID, classes] execVM "TIMS\LV\fillHouse.sqf";

		Parameters:
		
	target 		= 	center point 	(Game Logics/Objects/Marker name, ex: GL01 or this or "marker1")
	side 		= 	1 or 2 or 3		(1 = blue team, 2 = red team, 3 = green team) 								DEFAULT: 2
	patrol 		= 	true or false 	(if true, units will patrol) 												DEFAULT: true
	patrol type = 	1 or 2 			(1=only inside building, 2=also outside of building) 						DEFAULT: 2
	spawn rate  = 	1-100 OR Array 	(on how many percentage of possible positions are soldiers spawned) 		DEFAULT: 50
				NOTE: Array - you can also use following syntax: [amount,random amount] for example:
				[10,12] will spawn at least 10 units + random 12 units 
	radius 		= 	1 or larger number (1=nearest building. if larger number, then all buildings in radius) 	DEFAULT: 1
	skills 		= 	"default" 	(default AI skills) 															DEFAULT: "default"
				or	number	=	0-1.0 = this value will be set to all AI skills, ex: 0.8
				or	array	=	all AI skills invidiually in array, values 0-1.0, order:
		[aimingAccuracy, aimingShake, aimingSpeed, spotDistance, spotTime, courage, commanding, general, endurance, reloadSpeed] 
		ex: 	[0.75,0.5,0.6,0.85,0.9,1,1,0.75,1,1] 
	group 		= 	group name or nil (if you want units in existing group, set it here. if nil, 				DEFAULT: nil
					new group is made) EXAMPLE: (group player)
	custom init = 	"init commands" (if you want something in init field of units, put it here) 				DEFAULT: nil
				NOTE: Keep it inside quotes, and if you need quotes in init commands, you MUST use ' or "" instead of ".
				EXAMPLE: "hint 'this is hint';"
	ID 			= 	number (if you want to delete units this script creates, you'll need ID number for them)	DEFAULT: nil
	classes		=	array	(classes from config_aissp.hpp, defines which unit classnames are being used)		DEFAULT: ["ALL"]


EXAMPLE: 	nul = [this, 2, true, 2, 50, 1, 0.75, nil, nil, 9, ["ALL"]] execVM "TIMS\LV\fillHouse.sqf";
			spawns in nearest building east soldiers in 50% of possible building positions with skill 0.75,
			and makes them patrol in & outside of that building
*/
if (!isServer)exitWith{};
private ["_blueMenArray3","_blueMenArray2","_BLUarrays","_redMenArray2","_OPFarrays","_greenMenArray","_grpId","_customInit","_center","_skls","_skills","_a","_buildings","_rat","_milHQ","_milGroup","_menArray","_i","_newPos","_i2","_unitType","_unit","_building","_sideOption","_blueMenArray","_redMenArray","_bPoss","_patrol","_pFile","_pType","_input","_logic","_isActivated"];


private ["_mRatio","_mGroup","_classModule","_classModuleFilters","_newGroupOPFOR","_RandomLauncherChance"];

_center = param [0];
_sideOption = param [1,2];
_patrol = param [2,true];
_pType = param [3,2];
_ratio = param [4,50];
_radius = param [5,1];
_skills = param [6,0.3];
_milGroup = param [7,nil];
if(!isNil "_milGroup")then{if(_milGroup == "nil" || _milGroup == "nil0")then{_milGroup = nil;};};
_customInit = param [8,nil];
if(!isNil "_milGroup")then{if(_customInit == "nil" || _customInit == "nil0")then{_customInit = nil;};};
_grpId = param [9,nil];
_classModuleFilters = param [10,["ALL"]];


if(isNil("LV_classnames"))then{LV_classnames = compile preprocessFile "TIMS\LV\LV_functions\LV_fnc_classnames.sqf";};
if(isNil("LV_validateClassArrays"))then{LV_validateClassArrays = compile preprocessFile "TIMS\LV\LV_functions\LV_fnc_validateClassArrays.sqf";};
if(isNil("LV_ACskills"))then{LV_ACskills = compile preprocessFile "TIMS\LV\LV_functions\LV_fnc_ACskills.sqf";};
if(isNil("LV_vehicleInit"))then{LV_vehicleInit = compile preprocessFile "TIMS\LV\LV_functions\LV_fnc_vehicleInit.sqf";};
if(isNil("LV_nearestBuilding"))then{LV_nearestBuilding = compile preprocessFile "TIMS\LV\LV_functions\LV_fnc_nearestBuilding.sqf";};

switch (_sideOption) do { 
    case 1: {
        _milHQ = createCenter west;
		if(isNil("_milGroup"))then{_milGroup = createGroup west;}else{_milGroup = _milGroup};
    }; 
	case 2: {
        _milHQ = createCenter east;
        if(isNil("_milGroup"))then{_milGroup = createGroup east;}else{_milGroup = _milGroup};
    };	
    default {
        _milHQ = createCenter resistance;
        if(isNil("_milGroup"))then{_milGroup = createGroup resistance;}else{_milGroup = _milGroup};
    }; 
};

_menArray = ([_classModuleFilters,[(_sideOption), 6]] call LV_classnames);
_menArray = [_menArray] call LV_validateClassArrays;
if((count _menArray) == 0)then{
	_menArray = ([[],[(_sideOption), 6]] call LV_classnames);
};
_menArray = selectRandom _menArray;

if(_center in allMapMarkers)then{
		_center0 = getMarkerPos _center;
	}else{
		if (typeName _center == "ARRAY") then{
			_center0 = _center;
		}else{
			_center0 = getPos _center;
		};
	};
	
if(_radius > 1)then{
	_buildings = ["all in radius",_center,_radius] call LV_nearestBuilding;
}else{
	_buildings = ["nearest one",_center] call LV_nearestBuilding;
};
if(isNil("_buildings"))exitWith{};
if(count _buildings == 0) exitWith{};

_bPoss = [];
_a = 0;
while { _a < (count _buildings) } do {
	_building = (_buildings select _a);
	_i = 0;
	while { ((_building buildingPos _i) select 0) != 0 } do {
		_bPoss set [count (_bPoss), (_building buildingPos _i)];
		_i = _i + 1;
	};
	_a = _a + 1;
};

if(typeName _ratio == "ARRAY")then{
	_rat = (_ratio select 0) + (random (_ratio select 1));
}else{
	_rat = ceil((_ratio / 100) * (count _bPoss));
};

//CUSTOM SIDE CHANGE
//SIDE TEST CHANGE
_newGroupOPFOR = createGroup EAST;

_i2 = 0;
while{_i2 < _rat}do{
    //if(_radius > 1)then{_newPos = _bPoss select floor(random count _bPoss);}else{_newPos = _bPoss select _i2;};
	_RandomLauncherChance = round (random 100);
	_newPos = selectRandom _bPoss;
	if(_rat < count _bPoss)then{_bPoss = _bPoss - [_newPos];};
    _i2 = _i2 + 1;

    _unitType = selectRandom _menArray;
	//_unit = _milGroup createUnit [_unitType, _newPos, [], 0, "NONE"];
	_unit = _newGroupOPFOR createUnit [_unitType, _newPos, [], 0, "NONE"];
	_unit setpos _newPos;  
	//SIDE TEST CHANGE
	[_unit] joinSilent _newGroupOPFOR;
	//ADD KILLED MESSAGE
	//_unit addMPEventHandler ["MPKilled", {_this call TIMS_AI_MPKilled;}];
	//CUSTOM GEAR
	//EQUIP LAUNCHER 20% CHANCE
	if (_RandomLauncherChance <= AI_ROCKET_EQUIP_CHANCE) then 
	{
		removeBackpack _unit;
		_unit addBackpack "B_Carryall_oucamo";
		_unit addWeapon "launch_RPG32_F";
		_unit addMagazine "RPG32_F";
		_unit addMagazine 'RPG32_HE_F';
		diag_log "-=T.I.M.S=-: EVENT -=CRATE_LOOT=-.sqf- AI SPAWNED WITH A ROCKET LAUNCHER!";
	};
	//ADD RANDOM AMOUNT OF MONEY
	_unit setVariable ["ExileMoney",round (random AI_MONEY_DROP), true];

	if(typeName _skills != "STRING")then{_skls = [_unit,_skills] call LV_ACskills;};

	if(_patrol)then{
        	switch (_pType) do {
            		case 1: {
                		_pFile = "TIMS\LV\patrol-vF.sqf";
            		};
            		case 2: {
                		_pFile = "TIMS\LV\patrol-vG.sqf";
            		};
        	};
			nul = [_unit] execVM format["%1",_pFile]; 
	}else{
        	doStop _unit;
    };
	if(!isNil("_customInit"))then{ 
		nul = [_unit,_customInit] spawn LV_vehicleInit;
	};
};

if(!isNil("_grpId"))then{
	//call compile format ["LVgroup%1 = _milGroup",_grpId];
	call compile format ["LVgroup%1 = _newGroupOPFOR",_grpId];
	call compile format["LVgroup%1spawned = 'true';", _grpId];
	_thisArray = [];
	{ 
		if(isNil("_x"))then{
			_thisArray set[(count _thisArray),"nil0"];
		}else{
			_thisArray set[(count _thisArray),_x];
		};
	}forEach _this;
	call compile format["LVgroup%1CI = ['fillhouse',%2]",_grpId,_thisArray];
};
/*
Triggered when the unit is killed.
Be careful when the killer has been a vehicle. For most cases the reference of the vehicle is the same as the effectiveCommander, but not always.

this addEventHandler ["Killed", {
	params ["_unit", "_killer", "_instigator", "_useEffects"];
	-=code here=-
}];

    _unit: Object - Object the event handler is assigned to
	
    _killer: Object - Object that killed the unit. Contains the unit itself in case of collisions

    _instigator: Object - Person who pulled the trigger

    _useEffects: Boolean - same as useEffects in setDamage alt syntax
*/
//TEST FOR NORMAL ONFOOT AI
	_unit = _this select 0; //VICTIM _UNIT
	_killer = _this select 1; //OBJECT THAT KILLED _UNIT "vehicle owner"
	_instigator = _this select 2; //PLAYER WHO PULLED TRIGGER
	_HeadShot = _unit getHit "head"; //RETURN DMG DONE TO THE HEAD 0.0 to 1
	_distance = _unit distance _instigator;
	_distanceBonus = (floor (_distance * 10));
	_CheckInVehicle = 0; //IN VEHICLE YES=1 NO=0  
	//EXIT IF AI KILL THEMSELVES
	if (_instigator == _unit) exitWith {};
	_instigatorAI = leader _instigator; //CHECK LEADER OF GROUP THAT SHOULD BE PLAYER
	_skipPlayerRewards = 0;	//CHECK TO SEE IF IS BODYGUARD OR PLAYER KILL
	_moneyChange = 0;
	_moneyPerKillMULTI = round (1000 + random 3000);
	_killerMoneyPoints = [];
	_killMsg = selectRandom ["DISABLED: ","WRECKED: ","WASTED: ","MURDERED: ","KILLED: "];
	_killMsgCloseRange = "CLOSERANGE: (x5) ";
	_killMsgCloseRangeHS = "CLOSEHEADSHOT: (x10) ";
	_killMsgHeadShot = "HEADSHOT: (x3) ";
	_killMsgBodyguard = "AIHELP: (-75%) ";
	_killMsgRunover = "RUNOVER: (x2) ";
	_killMsgDrone = "DRONED: (-50%) ";
	//BODYGUARD KILLED AI, GIVE REWARDS TO THE GROUP OWNER OF THE PLAYER
	if (_instigator isKindOf "I_Soldier_VR_F") then 
	{
		_skipPlayerRewards = 1;
		if (isNull _instigator) then {_instigator = _instigatorAI; _distance = 1; _distanceBonus = 1; }; // player driven vehicle road kill 
		diag_log format ["=======================================================================#ON_FOOT KILLED BY: [%1] AIBodyguard:%2] [$$$:%3] [RANGE:%4M] [KillMsg:%5]", name (_instigatorAI), name _instigator, _moneyPerKillMULTI/2, (round _distance), _killMsgBodyguard];
		_killerMoneyPoints pushBack [(format ["%1",_killMsgBodyguard]), _moneyPerKillMULTI/3];
		{_moneyChange = (_moneyChange + (_x select 1));}forEach _killerMoneyPoints;
		_currentAccountBalance = _instigatorAI getVariable ["ExileMoney", 0];
		_currentAccountBalance = _currentAccountBalance + _moneyChange;
		_instigatorAI setVariable ["ExileMoney", _currentAccountBalance, true];
		format["setPlayerMoney:%1:%2", _currentAccountBalance, _instigatorAI getVariable ["ExileDatabaseID", 0]] call ExileServer_system_database_query_fireAndForget;
		[_instigatorAI, "showFragRequest", [_killerMoneyPoints]] call ExileServer_system_network_send_to;
	};
	//GIVE REWARDS TO PLAYER
	if (_skipPlayerRewards == 0) then 
	{
		//SET VARIABLE UP
		if (isNull _instigator) then { _instigator = _killer; _killMsg = _killMsgRunover; _moneyPerKillMULTI = _moneyPerKillMULTI*2; _CheckInVehicle = 1; }; // player driven vehicle road kill
		if ((_killer isKindOf "B_T_UAV_03_F") || (_killer isKindOf "I_UGV_01_rcws_F")) then { _instigator = UAVControl vehicle _killer select 0; _killMsg = _killMsgDrone; _moneyPerKillMULTI = _moneyPerKillMULTI/3; _CheckInVehicle = 1; }; //UAV CONTROLLED STUFF
		if ((_HeadShot > 0.9) && (_CheckInVehicle == 0)) then { _killMsg = _killMsgHeadShot; _moneyPerKillMULTI = _moneyPerKillMULTI*3; }; //HEADSHOT NORMAL
		if ((_distance <= 5) && (_CheckInVehicle == 0) && (_HeadShot > 0.9)) then { _killMsg = _killMsgCloseRangeHS; _moneyPerKillMULTI = _moneyPerKillMULTI*10; }; //CLOSE RANGE HEADSHOT KILL
		if ((_distance <= 5) && (_CheckInVehicle == 0) && (_HeadShot < 0.9)) then { _killMsg = _killMsgCloseRange; _moneyPerKillMULTI = _moneyPerKillMULTI*5; }; //CLOSE RANGE KILL
		//EXECUTE THE CURRENT REWARDS
		_killerMoneyPoints pushBack [(format ["%1",_killMsg]), _moneyPerKillMULTI];
		if (_CheckInVehicle == 0) then 
		{ 
			//NOT IN A VEHICLE
			_killerMoneyPoints pushBack [(format ["%1m DISTANCE BONUS", (round _distance)]), _distanceBonus]; 
		};
		if (_CheckInVehicle == 1) then 
		{ 
			_distance = 1;
			_distanceBonus = 1;
			//IN A VEHICLE DRIVER
			_killerMoneyPoints pushBack [(format ["%1m DISTANCE BONUS", (round _distance)]), _distanceBonus]; 
		};
		{_moneyChange = (_moneyChange + (_x select 1));}forEach _killerMoneyPoints;
		diag_log format ["-=TIMS_ROAMING=-:======================#ON_FOOT_UNIT KILLED BY:[%1] [TOTAL$$$:%2] [BASE:%6] [RANGE:%4M||BONUS:$%3] [HEADSHOT:%5] [KillMsg:%7]", name _instigator, _moneyChange, _distanceBonus, (round _distance), _HeadShot, _moneyPerKillMULTI, _killMsg];
		_currentAccountBalance = _instigator getVariable ["ExileMoney", 0];
		_currentAccountBalance = _currentAccountBalance + _moneyChange;
		_instigator setVariable ["ExileMoney", _currentAccountBalance, true];
		format["setPlayerMoney:%1:%2", _currentAccountBalance, _instigator getVariable ["ExileDatabaseID", 0]] call ExileServer_system_database_query_fireAndForget;
		[_instigator, "showFragRequest", [_killerMoneyPoints]] call ExileServer_system_network_send_to;
		//RANDOM LOOT CHANCE
		private _RandomLootChanceMain = 10;
		private _RandomLootChance = round (random 100);
		if (_RandomLootChance <= _RandomLootChanceMain) then 
		{
			diag_log "======================================================================= ON_FOOT TROPHY BOX DROPPED";
			private _InBoxRandom = ["Land_Trophy_01_bronze_F_Kit","Land_Trophy_01_bronze_F_Kit","Land_Trophy_01_silver_F_Kit","Land_Trophy_01_bronze_F_Kit","Land_Trophy_01_gold_F_Kit","Land_Trophy_01_bronze_F_Kit","Land_Trophy_01_silver_F_Kit","Land_Trophy_01_bronze_F_Kit","Land_Trophy_01_gold_F_Kit","Land_Trophy_01_bronze_F_Kit","Land_Trophy_01_bronze_F_Kit","Land_Trophy_01_bronze_F_Kit","Land_Trophy_01_silver_F_Kit","Land_Trophy_01_bronze_F_Kit","Land_Trophy_01_gold_F_Kit","Land_Trophy_01_bronze_F_Kit","Land_Trophy_01_bronze_F_Kit"];
			private _InBoxRandomBonus = ["Exile_Item_EMRE","Exile_Item_BeefParts","Exile_Item_Cheathas","Exile_Item_Noodles","Exile_Item_InstantCoffee","Exile_Item_PlasticBottleCoffee","Exile_Item_PowerDrink","Exile_Item_PlasticBottleFreshWater","Exile_Item_Beer","Exile_Item_EnergyDrink","Exile_Item_ChocolateMilk","Exile_Item_MountainDupe","Exile_Item_InstaDoc","Exile_Item_Bandage","Exile_Item_Vishpirin","Exile_Item_Heatpack","Exile_Item_Defibrillator"];
			private _FunnelItemsList = ["DDR_Item_Heroin","DDR_Item_Pop_Tabs_Bag","DDR_Item_Silver_Bar","DDR_Item_Gold_Bar","DDR_Item_Silver_Ore","DDR_Item_Gold_Ore","DDR_Item_Pop_Tabs_Bag","DDR_Item_Pop_Tabs_Bag","DDR_Item_Heroin","DDR_Item_Pop_Tabs_Bag","DDR_Item_Heroin"];
			private _supplyBox = createVehicle ["Box_I_UAV_06_medical_F", [getPosATL _unit select 0, getPosATL _unit select 1, (getPosATL _unit select 2) +2], [], 0, "CAN_COLLIDE"];
			_supplyBox disableCollisionWith _unit;
			_supplyBox setPos (_unit modelToWorld [0,0.5,1.5]);
			private _dir1 = random(360);
			private _speed1 = 3.1;
			_supplyBox setVelocity [_speed1 * sin(_dir1), _speed1 * cos(_dir1),3];
			private _DeleteCounter = [_supplyBox, 600] execVM "TIMS_ROAMING_AI\Roaming_AI\deleteBox.sqf";
			uiSleep 0.02;
			clearItemCargoGlobal _supplyBox;
			uiSleep 0.02;
			_supplyBox addItemCargoGlobal [selectRandom _FunnelItemsList,(round (1 + random 2))];
			uiSleep 0.02;
			_supplyBox addItemCargoGlobal [selectRandom _FunnelItemsList,(round (1 + random 2))];
			uiSleep 0.02;
			_supplyBox addItemCargoGlobal [selectRandom _InBoxRandomBonus,(round (1 + random 2))];
			uiSleep 0.02;
			//EXPLODING LOOT SPANWING A FUNNEL OF ITEMS
			private _FunnelLootChanceMain = 50;
			private _FunnelLootChance = round (random 100);
			if (_FunnelLootChance <= _FunnelLootChanceMain) then 
			{
				diag_log "======================================================================= ON_FOOT DROPPED XTRA LOOT -TROPHY- IN LOOTBOX";
				_supplyBox addItemCargoGlobal [selectRandom _InBoxRandom,1];
				uiSleep 0.02;
				_supplyBox addItemCargoGlobal [selectRandom _FunnelItemsList,(round (1 + random 2))];
				uiSleep 0.02;
				_supplyBox addItemCargoGlobal [selectRandom _InBoxRandomBonus,(round (1 + random 2))];
				uiSleep 0.02;
			};
		};
	};
		//WEAPON DROP PHYSICS FOR ROCKET LAUNCHER AND PRIMARY WEAPON (WEAPON DROP AROUND THE DEAD AI INSTEAD OF ON TOP OF IT.)
		//DISABLED, TAKE TOO MUCH JUICE IT LOOKS LIKE AND LAG BEHIND. DOESSNT ALWAYS WORK NEED FIX OR REMOVE
		/*if (secondaryWeapon _unit != "") then 
		{
			private _weapon2 = secondaryWeapon _unit;  
			_unit removeWeapon _weapon2;
			uiSleep 0.1;
			private _weaponHolder2 = "WeaponHolderSimulated" createVehicle [0,0,0];
			_weaponHolder2 disableCollisionWith _unit;
			_weaponHolder2 setPos (_unit modelToWorld [0,0.5,2]);
			_weaponHolder2 addWeaponCargoGlobal [_weapon2,1];
			_dir1 = random(360);
			_speed1 = 3.1;
			_weaponHolder2 setVelocity [_speed1 * sin(_dir1), _speed1 * cos(_dir1),3.5];
			uiSleep 0.09;
			[_weaponHolder2, 300] execVM "TIMS_ROAMING_AI\Roaming_AI\deleteBox.sqf";
			uiSleep 0.1;
		};
		private _weapon1 = currentWeapon _unit;     
		_unit removeWeapon _weapon1;
		uiSleep 0.1;
		private _weaponHolder1 = "WeaponHolderSimulated" createVehicle [0,0,0];
		_weaponHolder1 disableCollisionWith _unit;
		_weaponHolder1 setPos (_unit modelToWorld [0,0.5,2]);
		_weaponHolder1 addWeaponCargoGlobal [_weapon1,1];
		_dir = random(360);
		_speed = 3.1;
		_weaponHolder1 setVelocity [_speed * sin(_dir), _speed * cos(_dir),3.5];
		uiSleep 0.09;
		[_weaponHolder1, 300] execVM "TIMS_ROAMING_AI\Roaming_AI\deleteBox.sqf";
		uiSleep 0.02;*/
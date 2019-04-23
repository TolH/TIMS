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
	//EXIT IF AI KILL THEMSELVES
	if (_instigator == _unit) exitWith {};
	_instigatorAI = leader _instigator; //CHECK LEADER OF GROUP THAT SHOULD BE PLAYER
	_skipPlayerRewards = 0;		//CHECK TO SEE IF BODYGUARD OR PLAYER KILL
	_distanceKiller = _unit distance _instigator;
	_distanceBonus = (floor (_distanceKiller + 1));
	_moneyChange = 0;
	_moneyPerKillMULTI = 800000;
	_killerMoneyPoints = [];
	_killMsg = selectRandom ["DISABLED: ","WRECKED: ","WASTED: ","MURDERED: ","KILLED: "];
	_killMsgBodyguard = "AIHELP: (-75%) ";
	_killMsgRunover = "RUNOVER: (x1) ";
	_killMsgDrone = "DRONED: (-50%) ";
	//BODYGUARD KILLED AI, GIVE REWARDS TO THE GROUP OWNER OF THE PLAYER
	if (_instigator isKindOf "I_Soldier_VR_F") then 
	{
		_skipPlayerRewards = 1;
		if (isNull _instigator) then {_instigator = _instigatorAI; _distanceKiller = 1; _distanceBonus = 1; }; // player driven vehicle road kill 
		diag_log format ["======================================================================= BONUS_VR KILLED BY: [%1] AIBodyguard:%2] [$$$:%3] [KillMsg:%4] [RANGE:%5M]", name (_instigatorAI), name _instigator, _moneyPerKillMULTI/2, _killMsg, (round _distanceKiller)];
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
		if (isNull _instigator) then {_instigator = _killer; _killMsg = _killMsgRunover; _distanceKiller = 1; _distanceBonus = 1;}; // player driven vehicle road kill
		if ((_killer isKindOf "B_T_UAV_03_F") || (_killer isKindOf "I_UGV_01_rcws_F")) then { _instigator = UAVControl vehicle _killer select 0; _killMsg = _killMsgDrone; _moneyPerKillMULTI = _moneyPerKillMULTI/2; _distanceKiller = 1; _distanceBonus = 1; };
		diag_log format ["-=TIMS_ROAMING=-:===========================================================================================###BONUS HUNT AI KILLED BY:[%1!!!] [$$$:%2] [KillMsg:%3] [RANGE:%4M]", name _instigator, _moneyPerKillMULTI, _killMsg, (round _distanceKiller)];
		_killerMoneyPoints pushBack [(format ["%1",_killMsg]), _moneyPerKillMULTI];
		_killerMoneyPoints pushBack [(format ["%1m DISTANCE BONUS", (round _distanceKiller)]), _distanceBonus];
		{_moneyChange = (_moneyChange + (_x select 1));}forEach _killerMoneyPoints;
		_currentAccountBalance = _instigator getVariable ["ExileMoney", 0];
		_currentAccountBalance = _currentAccountBalance + _moneyChange;
		_instigator setVariable ["ExileMoney", _currentAccountBalance, true];
		format["setPlayerMoney:%1:%2", _currentAccountBalance, _instigator getVariable ["ExileDatabaseID", 0]] call ExileServer_system_database_query_fireAndForget;
		[_instigator, "showFragRequest", [_killerMoneyPoints]] call ExileServer_system_network_send_to;
		//SPAWN CRATES
		private _randomAmount = round (1 + random 3);
		for "_x" from 1 to _randomAmount do 
		{
			private _InBoxRandom = ["Land_Trophy_01_bronze_F_Kit","Land_Trophy_01_bronze_F_Kit","Land_Trophy_01_silver_F_Kit","Land_Trophy_01_bronze_F_Kit","Land_Trophy_01_gold_F_Kit","Land_Trophy_01_bronze_F_Kit","Land_Trophy_01_bronze_F_Kit"];
			private _InBoxRandomBonus = ["Exile_Item_EMRE","Exile_Item_BeefParts","Exile_Item_Cheathas","Exile_Item_Noodles","Exile_Item_InstantCoffee","Exile_Item_PlasticBottleCoffee","Exile_Item_PowerDrink","Exile_Item_PlasticBottleFreshWater","Exile_Item_Beer","Exile_Item_EnergyDrink","Exile_Item_ChocolateMilk","Exile_Item_MountainDupe","Exile_Item_InstaDoc","Exile_Item_Bandage","Exile_Item_Vishpirin","Exile_Item_Heatpack","Exile_Item_Defibrillator"];
			private _FunnelItemsList = ["DDR_Item_Heroin","DDR_Item_Pop_Tabs_Bag","DDR_Item_Silver_Bar","DDR_Item_Gold_Bar","DDR_Item_Silver_Ore","DDR_Item_Gold_Ore","DDR_Item_Pop_Tabs_Bag","DDR_Item_Pop_Tabs_Bag","DDR_Item_Heroin","DDR_Item_Pop_Tabs_Bag","DDR_Item_Heroin"];
			private _supplyBox = createVehicle ["Box_I_UAV_06_medical_F", [getPosATL _unit select 0, getPosATL _unit select 1, (getPosATL _unit select 2) +2], [], 0, "CAN_COLLIDE"];
			_supplyBox disableCollisionWith _unit;
			_supplyBox setPos (_unit modelToWorld [0,0.5,1.5]);
			private _dir1 = random(360);
			private _speed1 = 3.1;
			_supplyBox setVelocity [_speed1 * sin(_dir1), _speed1 * cos(_dir1),3];
			private _DeleteCounter = [_supplyBox, 300] execVM "TIMS_ROAMING_AI\Roaming_AI\deleteBox.sqf";
			uiSleep 0.02;
			clearItemCargoGlobal _supplyBox;
			uiSleep 0.02;
			_supplyBox addItemCargoGlobal [selectRandom _InBoxRandom,1];
			uiSleep 0.02;
			_supplyBox addItemCargoGlobal [selectRandom _InBoxRandomBonus,(round (1 + random 3))];
			uiSleep 0.02;
			_supplyBox addItemCargoGlobal [selectRandom _InBoxRandomBonus,(round (1 + random 3))];
			uiSleep 0.02;
			_supplyBox addItemCargoGlobal [selectRandom _InBoxRandomBonus,(round (1 + random 3))];
			uiSleep 0.02;
			_supplyBox addItemCargoGlobal [selectRandom _FunnelItemsList,(round (1 + random 3))];
			uiSleep 0.02;
			_supplyBox addItemCargoGlobal [selectRandom _FunnelItemsList,(round (1 + random 3))];
			uiSleep 0.02;
			_supplyBox addItemCargoGlobal [selectRandom _FunnelItemsList,(round (1 + random 3))];
			uiSleep 0.02;
		};
	};
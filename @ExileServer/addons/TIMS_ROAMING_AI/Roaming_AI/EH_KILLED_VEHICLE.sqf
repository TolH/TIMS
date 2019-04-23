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
	_distance = _unit distance _instigator;
	_distanceBonus = (floor (_distance + 1));
	_moneyChange = 0;
	_moneyPerKillMULTI = round (30000 + random 30000);
	_killerMoneyPoints = [];
	_killMsg = selectRandom ["DISABLED: ","WRECKED: ","WASTED: ","MURDERED: ","KILLED: "];
	_killMsgBodyguard = "AIHELP: (-75%) ";
	_killMsgDrone = "DRONED: (-50%) ";
	//BODYGUARD KILLED AI, GIVE REWARDS TO THE GROUP OWNER OF THE PLAYER
	if (_instigator isKindOf "I_Soldier_VR_F") then 
	{
		_skipPlayerRewards = 1;
		if (isNull _instigator) then { _instigator = _instigatorAI; _distance = 1; _distanceBonus = 1; }; // player driven vehicle road kill 
		_killerMoneyPoints pushBack [(format ["%1",_killMsgBodyguard]), _moneyPerKillMULTI/3];
		{_moneyChange = (_moneyChange + (_x select 1));}forEach _killerMoneyPoints;
		diag_log format ["-=TIMS_ROAMING=-:======================#VEHICLES KILLED BY:[%1] AIBodyguard:%2] [$$$:%3] [KillMsg:%4] [RANGE:%5M]", name (_instigatorAI), name _instigator, _moneyPerKillMULTI/3, _killMsg, (round _distance)];
		_currentAccountBalance = _instigatorAI getVariable ["ExileMoney", 0];
		_currentAccountBalance = _currentAccountBalance + _moneyChange;
		_instigatorAI setVariable ["ExileMoney", _currentAccountBalance, true];
		format["setPlayerMoney:%1:%2", _currentAccountBalance, _instigatorAI getVariable ["ExileDatabaseID", 0]] call ExileServer_system_database_query_fireAndForget;
		[_instigatorAI, "showFragRequest", [_killerMoneyPoints]] call ExileServer_system_network_send_to;
	};
	//GIVE REWARDS TO PLAYER
	if (_skipPlayerRewards == 0) then 
	{
		if (isNull _instigator) then {_instigator = _killer; _distance = 1; _distanceBonus = 1;}; // player driven vehicle road kill
		if ((_killer isKindOf "B_T_UAV_03_F") || (_killer isKindOf "I_UGV_01_rcws_F")) then { _instigator = UAVControl vehicle _killer select 0; _killMsg = _killMsgDrone; _moneyPerKillMULTI = _moneyPerKillMULTI/2; _distance = 1; _distanceBonus = 1; }; //UAV CONTROLLED STUFF		_killerMoneyPoints pushBack [(format ["%1",_killMsg]), _moneyPerKillMULTI];
		_killerMoneyPoints pushBack [(format ["%1",_killMsg]), _moneyPerKillMULTI];
		_killerMoneyPoints pushBack [(format ["%1m Distance Bonus", (round _distance)]), _distanceBonus];
		{_moneyChange = (_moneyChange + (_x select 1));}forEach _killerMoneyPoints;
		_currentAccountBalance = _instigator getVariable ["ExileMoney", 0];
		_currentAccountBalance = _currentAccountBalance + _moneyChange;
		_instigator setVariable ["ExileMoney", _currentAccountBalance, true];
		format["setPlayerMoney:%1:%2", _currentAccountBalance, _instigator getVariable ["ExileDatabaseID", 0]] call ExileServer_system_database_query_fireAndForget;
		[_instigator, "showFragRequest", [_killerMoneyPoints]] call ExileServer_system_network_send_to;
		if (_unit isKindOf "Air") then 
		{
			diag_log format ["-=TIMS_ROAMING=-:======================#FLYING_VEHICLES KILLED BY:[%1] [TOTAL$$$:%2] [BASE:%4] [RANGE:%3M||BONUS:$%6] [KillMsg:%5]", name _instigator, _moneyChange, (round _distance), _moneyPerKillMULTI, _killMsg, _distanceBonus];
		};
		if ((_unit isKindOf "Car") || (_unit isKindOf "Tank")) then 
		{
			//SPAWN CRATES
			diag_log format ["-=TIMS_ROAMING=-:======================#VEHICLES KILLED BY:[%1] [TOTAL$$$:%2] [BASE:%4] [RANGE:%3M||BONUS:$%6] [KillMsg:%5]", name _instigator, _moneyChange, (round _distance), _moneyPerKillMULTI, _killMsg, _distanceBonus];
			private _randomAmount = round (1 + random 2);
			for "_x" from 1 to _randomAmount do 
			{
				private _FunnelItemsList = ["DDR_Item_Battery","DDR_Item_Injector","DDR_Item_Main_Rotor","DDR_Item_Tailrotor","DDR_Item_Glass","DDR_Item_Fiberglass","DDR_Item_Engine","DDR_Item_Electrical_Component","Exile_Item_ExtensionCord","Exile_Item_CarWheel","Exile_Item_MetalWire","Exile_Item_JunkMetal"];
				private _supplyBox = createVehicle ["Box_I_UAV_06_medical_F", [getPosATL _unit select 0, getPosATL _unit select 1, (getPosATL _unit select 2) +2], [], 0, "CAN_COLLIDE"];
				_supplyBox disableCollisionWith _unit;
				_supplyBox setPos (_unit modelToWorld [0,0.5,5]);
				private _dir1 = random(360);
				private _speed1 = 3.1;
				_supplyBox setVelocity [_speed1 * sin(_dir1), _speed1 * cos(_dir1),3];
				private _DeleteCounter = [_supplyBox, 300] execVM "TIMS_ROAMING_AI\Roaming_AI\deleteBox.sqf";
				uiSleep 0.02;
				clearItemCargoGlobal _supplyBox;
				uiSleep 0.02;
				_supplyBox addItemCargoGlobal [selectRandom _FunnelItemsList,(round (1 + random 3))];
				uiSleep 0.02;
				_supplyBox addItemCargoGlobal [selectRandom _FunnelItemsList,(round (1 + random 3))];
				uiSleep 0.02;
			};
		};
	};
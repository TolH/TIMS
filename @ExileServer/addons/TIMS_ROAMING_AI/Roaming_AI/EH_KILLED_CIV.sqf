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
//TEST FOR CIVILIAN
	_unit = _this select 0; //VICTIM _UNIT
	_killer = _this select 1; //OBJECT THAT KILLED _UNIT "vehicle owner"
	_instigator = _this select 2; //PLAYER WHO PULLED TRIGGER
	//EXIT IF AI KILL THEMSELVES
	if (_instigator == _unit) exitWith {};
	_instigatorAI = leader _instigator; //CHECK LEADER OF GROUP THAT SHOULD BE PLAYER
	_skipPlayerRewards = 0;	//CHECK TO SEE IF IS BODYGUARD OR PLAYER KILL
	_distance = _unit distance _instigator;
	_moneyChange = 0;
	_moneyPerKillMULTI = random -20000;
	_killerMoneyPoints = [];
	_killMsg = "CIVILIAN KILL: ";
	_killMsgRunover = "CIVILIAN RAMMED: ";
	_killMsgDrone = "CIVILIAN DRONED: ";
	//BODYGUARD KILLED AI, GIVE REWARDS TO THE GROUP OWNER OF THE PLAYER
	if (_instigator isKindOf "I_Soldier_VR_F") then 
	{
		_skipPlayerRewards = 1;
		if (isNull _instigator) then {_instigator = _instigatorAI; _killMsg = _killMsgRunover; _distance = 1; }; // player driven vehicle road kill 
		diag_log format ["=======================================================================#CIVILIAN KILLED BY: [%1] AIBodyguard:%2] [$$$:%3] [KillMsg:%4] [RANGE:%5M]", name (_instigatorAI), name _instigator, _moneyPerKillMULTI, _killMsg, (round _distance)];
		_killerMoneyPoints pushBack [(format ["%1",_killMsg]), _moneyPerKillMULTI];
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
		if (isNull _instigator) then {_instigator = _killer; _killMsg = _killMsgRunover; _distance = 1; }; // player driven vehicle road kill
		if ((_killer isKindOf "B_T_UAV_03_F") || (_killer isKindOf "I_UGV_01_rcws_F")) then {_instigator = UAVControl vehicle _killer select 0; _killMsg = _killMsgDrone; }; //UAV CONTROLLED HELI
		diag_log format ["-=TIMS_ROAMING=-:=========================#CIVILIAN ELEMINATED BY:[%1] [$$$:%2] [KillMsg:%3] [RANGE:%4M]", name _instigator, _moneyPerKillMULTI, _killMsg, (round _distance)];
		_killerMoneyPoints pushBack [(format ["%1",_killMsg]), _moneyPerKillMULTI];
		{_moneyChange = (_moneyChange + (_x select 1));}forEach _killerMoneyPoints;
		_currentAccountBalance = _instigator getVariable ["ExileMoney", 0];
		_currentAccountBalance = _currentAccountBalance + _moneyChange;
		_instigator setVariable ["ExileMoney", _currentAccountBalance, true];
		format["setPlayerMoney:%1:%2", _currentAccountBalance, _instigator getVariable ["ExileDatabaseID", 0]] call ExileServer_system_database_query_fireAndForget;
		[_instigator, "showFragRequest", [_killerMoneyPoints]] call ExileServer_system_network_send_to;
	};
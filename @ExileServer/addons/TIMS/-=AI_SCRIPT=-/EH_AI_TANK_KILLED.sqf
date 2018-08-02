//============================================////============================================//
//USING MODIFIED ExileZ: 	_man2 addMPEventHandler ["MPKilled", {_this call TIMS_AI_MPKilled;}];
//============================================////============================================//
private ["_tank","_killer","_playerObj","_veh","_killMsg","_killMsgRoad","_roadKilled","_money","_moneyPerKill","_scorePerKill","_distanceBonusDivider",
		 "_minDistance","_cqbDistance","_cqbBonus","_distance","_currentAccountBalance"];
//============================================////============================================//
_tank           		= _this select 0;
_killer         		= _this select 1;
_playerObj      		= objNull;
_roadKilled    			= false;
_moneyChange  			= 0;
_killerMoneyPoints 		= [];
//============================================////============================================//
//Parameters
_moneyPerKill			= round (random 25000);	//default = 800;	// Bonus Random Money
_minDistance			= 50;					//default = 50;		// Minimal distance for range bonus
_cqbDistance			= 49;					//default = 49;		// Minimal ditance for close quarter bonus
_cqbBonus				= round (random 50000);	//default = 5000;	// Respect for close quarter bonus at 1 meter
_distanceBonusDivider 	= 1;					//default = 1;		// Distance divided by that number = respect E.G. 300m / [20] = 15 Respect
//============================================////============================================//
//KILL MSG
_killMsg = selectRandom ["DISABLED","WRECKED","WASTED","MURDERED","EXTERMINATED"];
//============================================////============================================//
//IN VEHICLE OR NOT
if (isPlayer _killer) then
{
	_veh = vehicle _killer;
	_playerObj = _killer;
	if (!(_killer isKindOf "Exile_Unit_Player") && {!isNull (gunner _killer)}) then
	{
		_playerObj = gunner _killer;
	};
};
//============================================////============================================//
//MAIN
if ((!isNull _playerObj) && {((getPlayerUID _playerObj) != "") && {_playerObj isKindOf "Exile_Unit_Player"}}) then
{
	//Default
	_killerMoneyPoints pushBack [(format ["%1",_killMsg]), _moneyPerKill];
	//DistanceBonus
		_distance = _tank distance _playerObj;
		if (_distance > _minDistance) then
		{
			_distanceBonus = (floor (_distance / _distanceBonusDivider));
			_killerMoneyPoints pushBack [(format ["%1m DISTANCE BONUS", (round _distance)]), _distanceBonus];			
		};
		if (_distance <= _cqbDistance) then
		{
			_distanceBonus = round((floor ((_cqbDistance + 1) - _distance)) * ( _cqbBonus /_cqbDistance));
			_killerMoneyPoints pushBack [(format ["%1m RAMBO STYLE!", (round _distance)]), _distanceBonus];
		};
	//============================================////============================================//
	//MONEY BONUS
	{
		_moneyChange = (_moneyChange + (_x select 1));
	}forEach _killerMoneyPoints;
	//DISTRIBUTE MONEY
		//MONEY
		_currentAccountBalance = _killer getVariable ["ExileMoney", 0];
		_currentAccountBalance = _currentAccountBalance + _moneyChange;
	//============================================////============================================//
	//GIVE MONEY + NOTIFICATION
		//MONEY
		_killer setVariable ["ExileMoney", _currentAccountBalance, true];
		format["setPlayerMoney:%1:%2", _currentAccountBalance, _killer getVariable ["ExileDatabaseID", 0]] call ExileServer_system_database_query_fireAndForget;
		[_killer, "showFragRequest", [_killerMoneyPoints]] call ExileServer_system_network_send_to;
	//============================================////============================================//
};
//============================================////============================================//
//test delete vehicle
uiSleep 300;
deleteVehicle _tank;
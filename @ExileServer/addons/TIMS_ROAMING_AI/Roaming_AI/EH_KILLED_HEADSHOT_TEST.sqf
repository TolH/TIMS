/*
//-=======================================================-////-=======================================================-//
FROM BISTUDIO: https://community.bistudio.com/wiki/Arma_3:_Event_Handlers#HitPart
//-=======================================================-////-=======================================================-//
this addEventHandler ["HitPart", {
	(_this select 0) params ["_target", "_shooter", "_projectile", "_position", "_velocity", "_selection", "_ammo", "_vector", "_radius", "_surfaceType", "_isDirect"];
}];
//-=======================================================-////-=======================================================-//
*/
//TEST FOR HEADSHOTS

	_target = (_this select 0 select 0);
	_shooter = (_this select 0 select 1);
	//EXIT IF NOT A PLAYER
	//if (!isPlayer _shooter) exitWith {};
	_moneyChange = 0;
	_moneyPerKillMULTI = round (1000 + random 3000);
	_killerMoneyPoints = [];
	_killMsgNormal = selectRandom ["NORMAL!"];
	_killMsgHeadShot = selectRandom ["HEADSHOT! x5"];
	//GIVE NORMAL REWARDS TO PLAYER
	if (TIMS_HEADSHOT_CHECK == 0) then 
	{
		diag_log format ["-=TIMS_ROAMING=-:=========================#ON_FOOT_UNIT KILLED BY:[%1] [$$$:%2]", name _shooter, _moneyPerKillMULTI];
		_target removeEventHandler ["HitPart",0];
	}
	else
	{
		//HEADSHOT!
		_moneyPerKillMULTI = _moneyPerKillMULTI * 3;
		_killMsgNormal = _killMsgHeadShot;
		diag_log format ["-=TIMS_ROAMING=-:=========================#HEADSHOT KILLS BY:[%1] [$$$:%2]", name _shooter, _moneyPerKillMULTI];
		TIMS_HEADSHOT_CHECK = 0;
		_target removeEventHandler ["HitPart",0];
	};
	//LAUNCH REWARDS
	_killerMoneyPoints pushBack [(format ["%1",_killMsgNormal]), _moneyPerKillMULTI];
	{_moneyChange = (_moneyChange + (_x select 1));}forEach _killerMoneyPoints;
	_currentAccountBalance = _shooter getVariable ["ExileMoney", 0];
	_currentAccountBalance = _currentAccountBalance + _moneyChange;
	_shooter setVariable ["ExileMoney", _currentAccountBalance, true];
	format["setPlayerMoney:%1:%2", _currentAccountBalance, _shooter getVariable ["ExileDatabaseID", 0]] call ExileServer_system_database_query_fireAndForget;
	[_shooter, "showFragRequest", [_killerMoneyPoints]] call ExileServer_system_network_send_to;


_money = _this select 0;
	_depositAmount = _money;
	_lockerAmount = player getVariable ["ExileMoney", 0];
	_newLockerAmount = _depositAmount + _lockerAmount;
	player setVariable ["ExileMoney", _newLockerAmount, true];
	format["setPlayerMoney:%1:%2", _newLockerAmount, player getVariable ["ExileDatabaseID", 0]] call ExileServer_system_database_query_fireAndForget;

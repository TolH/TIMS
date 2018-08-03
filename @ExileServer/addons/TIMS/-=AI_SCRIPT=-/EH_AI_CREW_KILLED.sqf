//============================================////============================================//
//USING MODIFIED ExileZ: 	_man2 addMPEventHandler ["MPKilled", {_this call TIMS_AI_MPKilled;}];
//============================================////============================================//
private ["_other","_killer","_playerObj","_veh","_killMsg","_killMsgRoad","_roadKilled","_money","_moneyPerKill","_scorePerKill","_distanceBonusDivider",
		 "_minDistance","_cqbDistance","_cqbBonus","_distance","_currentAccountBalance"];
//============================================////============================================//
_crew           		= _this select 0;
_killer         		= _this select 1;
//============================================////============================================//
//test delete crew
uiSleep 600;
deleteVehicle _crew;
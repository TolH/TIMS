//============================================////============================================//
if (!isServer)exitWith{};
private["_TimeMinutes","_deleteThese","_grp"];
_TimeMinutes =	_this select 0;
uiSleep _TimeMinutes *60;
	//EXECUTE 2 TIMES
	//for "_x" from 0 to 1 do 
	//{
	    _deleteThese = allDeadMen;
		{
		if (_x isKindOf "Man") then {hideBody _x;};
		}forEach _deleteThese;
		uiSleep 30;
		{
			if (_x isKindOf "Man") then {deleteVehicle _x;};
		}forEach _deleteThese;
		{
			_grp = _x;
			if(({alive _x}count units _grp)isEqualTo 0)then{deleteGroup _grp;};
		}forEach allGroups;
		uiSleep 30;
	//};
	
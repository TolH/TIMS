//BASE TAXES DUE DATE REMINDER
	_playerUID = getPlayerUID player;
        {
            _flag = _x;
            _buildRights = _flag getVariable ["ExileTerritoryBuildRights", []];
            if (_playerUID in _buildRights) then
            {
			_nextDueDate = _flag getVariable ["ExileTerritoryMaintenanceDue", [0, 0, 0, 0, 0]];
			_name = _flag getVariable ["ExileTerritoryName", ""];
			_dueDate = format 
			[
				"%2/%3/%1",
				_nextDueDate select 0,
				_nextDueDate select 1,
				_nextDueDate select 2
			];
			 ["TaskCreated",["",format["<t color='#E48A36'>%2</t> Territory payment due: <t color='#E48A36'>%1</t>",_dueDate,_name]]] call BIS_fnc_showNotification;
            };
        }
        forEach (allMissionObjects "Exile_Construction_Flag_Static");
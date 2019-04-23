/*--------------------------------------------
 * - ENGIMA'S SEARCH PATROL (VERSION 1.21) -
 *--------------------------------------------
 * For the complete documentation, see file 
 * Engima\SearchPatrol\Documentation.txt.
 *--------------------------------------------*/

params ["_group", "_searchAreaMarkerName", ["_firstPos", [0,0,0]], ["_debug", false]];

private ["_position", "_side", "_state", "_moveCompleted", "_moveToFirstPos", "_exitScript", "_soldiers", "_garbageGroup", "_enemyPos", "_firstUnit", "_enemyUnit"];
private ["_subAreaSearchTimeSec", "_subAreaSize", "_defaultSearchAreaMarkerName", "_subAreaCreatedTime", "_stationaryMaxTimeSec", "_currentPos", "_lastPos", "_lastMoveTime"];
private ["_subSearchAreaMarker", "_currentEntityNo", "_subSearchAreaMarkerName"];
private ["_debugGroupMarkerName", "_debugDestinationMarkerName", "_debugSubAreaMarkerName"];
private ["_GetRandomMarkerPos"];

_GetRandomMarkerPos = {
	params ["_markerName"];
	private ["_pos"];
	
	_pos = [_markerName] call dre_fnc_CL_GetRandomMarkerPos;
	while {surfaceIsWater _pos} do {
		_pos = [_markerName] call dre_fnc_CL_GetRandomMarkerPos;
		uiSleep 0.02;
	};
	
	_pos
};

_subAreaSearchTimeSec = 180; // How long time the search group will search the area where enemy was last seen
_subAreaSize = 100; // Size (width and height) of the sub area
_stationaryMaxTimeSec = 60; // If the leader in the group is stationary more than this time, a new target position will be choosen (so that the group never gets stuck)
_defaultSearchAreaMarkerName = _searchAreaMarkerName;

waitUntil {!isNil "dre_var_commonLibInitialized"};

uiSleep random 0.2;
if (isNil "dre_SearchPatrol_CurrentEntityNo") then {
	dre_SearchPatrol_CurrentEntityNo = 1
};

_currentEntityNo = dre_SearchPatrol_CurrentEntityNo;
dre_SearchPatrol_CurrentEntityNo = dre_SearchPatrol_CurrentEntityNo + 1;

_subSearchAreaMarkerName = "dre_subSearchAreaMarker" + str _currentEntityNo;
_debugGroupMarkerName = "dre_SearchPatrol_PatrolMarker" + str _currentEntityNo;
_debugDestinationMarkerName = "dre_SearchPatrol_DestinationMarker" + str _currentEntityNo;
_debugSubAreaMarkerName = "dre_SearchPatrol_SubAreaMarker" + str _currentEntityNo;

_side = side (units _group select 0);
_state = "TRANSPORTING";
_enemyPos = [0, 0, 0];
_subAreaCreatedTime = diag_tickTime;
_moveToFirstPos = true;
if (_firstPos select 0 == 0 && _firstPos select 1 == 0) then {
	_moveToFirstPos = false;
};

if (_debug) then {
    ["Search group " + str _currentEntityNo + " waiting for search area '" + _searchAreaMarkerName + "' to exist..."] call dre_fnc_CL_ShowDebugTextAllClients;
};

// Wait until search area exists

while {!([_searchAreaMarkerName] call dre_fnc_CL_MarkerExists)} do {
	uiSleep 1;
};

if (_debug) then {
    ["Search group " + str _currentEntityNo + " on its way!"] call dre_fnc_CL_ShowDebugTextAllClients;

	[_group, _debugGroupMarkerName, _currentEntityNo] spawn {
        private ["_group", "_debugGroupMarkerName", "_currentEntityNo"];
        _group = _this select 0;
        _debugGroupMarkerName = _this select 1;
        _currentEntityNo = _this select 2;
        
        while {!(isnull leader _group)} do {
            [_debugGroupMarkerName, getPos (leader _group), "mil_dot", "ColorRed", "SG" + str _currentEntityNo] call dre_fnc_CL_SetDebugMarkerAllClients;
            uiSleep 1;
        };
    };
};

scopeName "mainScope";

// Main loop

_exitScript = false;
while { !_exitScript && !isNull _group } do {
    scopeName "mainScope";
    
    if (_debug) then {
        ["Search group moving to new position..."] call dre_fnc_CL_ShowDebugTextAllClients;
    };
    
    if (_state == "TRANSPORTING") then {
        if (_moveToFirstPos) then {
            _position = + _firstPos;
            _moveToFirstPos = false;
        }
        else {
            _position = [_searchAreaMarkerName] call _GetRandomMarkerPos;
        };
        
        _group move _position;
        _group setBehaviour "SAFE";
        _group setFormation "WEDGE";
        _group setCombatMode "YELLOW"; // Fire at will
        _group setSpeedMode "LIMITED";
    };
    
    if (_state == "SEARCHING") then {
        _position = [_searchAreaMarkerName] call _GetRandomMarkerPos;
        _group move _position;
        
        _group setBehaviour "SAFE";
        
        // If searching sub area, make the search a little more intense
        if (_searchAreaMarkerName != _defaultSearchAreaMarkerName) then {
            _group setSpeedMode "NORMAL";
            _group setFormation "WEDGE";
            _group setCombatMode "RED"; // Fire at will, engage at will
        }
        else {
            _group setSpeedMode "LIMITED";
            _group setFormation "LINE";
            _group setCombatMode "YELLOW"; // Fire at will
        };
    };
    
    if (_state == "ENGAGING") then {
        _position = + _enemyPos;
        _group move _position;
        _group setSpeedMode "NORMAL";
        _group setFormation "LINE";
        _group setCombatMode "YELLOW"; // Fire at will
    };
    
    if (_debug) then {
        if (_state == "ENGAGING") then {
            [_debugDestinationMarkerName, _position, "mil_dot", "ColorRed", "SG" + str _currentEntityNo + " target"] call dre_fnc_CL_SetDebugMarkerAllClients;
        }
        else {
            [_debugDestinationMarkerName, _position, "mil_dot", "ColorRed", "SG" + str _currentEntityNo + " destination"] call dre_fnc_CL_SetDebugMarkerAllClients;
        };
    };
    
    _moveCompleted = false;
    _currentPos = position (units _group select 0);
    _lastPos = + _currentPos;
    _lastMoveTime = diag_tickTime;
    
    while { !_moveCompleted && !isNull _group } do {
        _soldiers = + units _group;
        {
            if ((!alive _x) || (!canStand _x)) then {
                _garbageGroup = createGroup _side;
                [_x] joinSilent _garbageGroup;
                [_x] call dre_fnc_CL_AddUnitsToGarbageCollector;
                
                if (count units _group == 0) then {
                    deleteGroup _group;
                    _exitScript = true;
                    breakTo "mainScope";
                };
                
                if (_debug) then {
                    ["Search group lost member " + name _x] call dre_fnc_CL_ShowDebugTextAllClients;
                };
            };
        } foreach _soldiers;
        
        if (count _soldiers == 0) exitWith {
            if (_debug) then {
                ["Search group is terminated. Script exiting..."] call dre_fnc_CL_ShowDebugTextAllClients;
            };
            _exitScript = true;
        };
        
        {
            if (_x distance _position < 10) then {
                _moveCompleted = true;
            };
        } foreach units _group;
        
        _firstUnit = units _group select 0;
        _enemyUnit = _firstUnit findNearestEnemy _firstUnit;
        
        // If an enemy is sighted (and is below 3 meters above surface)
        if (!isNull _enemyUnit && { (getPos _enemyUnit) select 2 < 3 }) then
        {
            // If the enemy is known since earlier
            if (_state == "ENGAGING") then {
                if (_enemyUnit distance _enemyPos > 50) then {
                    // If enemy has got more than 100 m away from the position we first spotted him
                    _enemyPos = + position _enemyUnit;
                    breakTo "mainScope";
                };
            }
            else {
                // If the enemy is seen for the first time now
                _enemyPos = + position _enemyUnit;
                _state = "ENGAGING";
                if (_debug) then {
                    ["Search group detected enemy! Engaging..."] call dre_fnc_CL_ShowDebugTextAllClients;
                };
                breakTo "mainScope";				
            };
        }
        else {
            // If the enemy is not sighted any more
            if (_state == "ENGAGING") then {
                _state = "SEARCHING";
                
                // If there is no sub area already, create one
                if (_searchAreaMarkerName == _defaultSearchAreaMarkerName) then {
                    _subAreaCreatedTime = diag_tickTime;
                    _subSearchAreaMarker = createMarkerLocal [_subSearchAreaMarkerName, _enemyPos];
                    _subSearchAreaMarker setMarkerAlphaLocal 0;
                    _subSearchAreaMarker setMarkerShape "RECTANGLE";
                    _subSearchAreaMarker setMarkerSize [_subAreaSize, _subAreaSize];
                    _searchAreaMarkerName = _subSearchAreaMarkerName;
                    
                    if (_debug) then {
                        ["Search group lost contact of enemy! Searching sub area..."] call dre_fnc_CL_ShowDebugTextAllClients;
                        [_debugSubAreaMarkerName, getMarkerPos _subSearchAreaMarker, markerSize _subSearchAreaMarker, markerDir _subSearchAreaMarker, markerShape _subSearchAreaMarker, "Default", "SG" + str _currentEntityNo + " sub search area"] call dre_fnc_CL_SetDebugMarkerAllClients;
                    };
                }
                else {
                    // If there is a sub area already, move the existing one
                    _subSearchAreaMarker setMarkerPosLocal _enemyPos;
                    _subAreaCreatedTime = diag_tickTime;
                    
                    if (_debug) then {
                        ["Search group resetting sub area..."] call dre_fnc_CL_ShowDebugTextAllClients;
                        [_debugSubAreaMarkerName, getMarkerPos _subSearchAreaMarker, markerSize _subSearchAreaMarker, markerDir _subSearchAreaMarker, markerShape _subSearchAreaMarker, "Default", "SG" + str _currentEntityNo + " sub search area"] call dre_fnc_CL_SetDebugMarkerAllClients;
                    };
                };
            };
        };
        
        _currentPos = position (units _group select 0);
        if (_currentPos select 0 != _lastPos select 0 || _currentPos select 1 != _lastPos select 1) then {
            _lastPos = + _currentPos;
            _lastMoveTime = diag_tickTime;
        };
        
        if (diag_tickTime > _lastMoveTime + _stationaryMaxTimeSec) then {
            _moveCompleted = true;
            if (_debug) then {
                ["Search group stationary for a long time. Picking new destination..."] call dre_fnc_CL_ShowDebugTextAllClients;
            };
        };
        
        // If sub area is considered clear
        if (_searchAreaMarkerName != _defaultSearchAreaMarkerName && diag_tickTime > _subAreaCreatedTime + _subAreaSearchTimeSec) then {
            deleteMarkerLocal _subSearchAreaMarker;
            _searchAreaMarkerName = _defaultSearchAreaMarkerName;
            _moveCompleted = true;
            if (_debug) then {
                ["Search group's sub search area is clear. Returning to original search area..."] call dre_fnc_CL_ShowDebugTextAllClients;
                [_debugSubAreaMarkerName] call dre_fnc_CL_DeleteDebugMarkerAllClients;
            };
        };
        
        // If transporting to search area, and the target position is outside the search area (the search area could have been moved), 
        // then finish the current move and pick a new position inside search area.
        if (_state == "TRANSPORTING" && !([_position, _searchAreaMarkerName] call dre_fnc_CL_PositionIsInsideMarker)) then {
            _moveCompleted = true;
        };
        
        if (_moveCompleted) then {
            if (!([position (units _group select 0), _searchAreaMarkerName] call dre_fnc_CL_PositionIsInsideMarker)) then {
                _state = "TRANSPORTING"
            }
            else {
                if (_state == "TRANSPORTING") then {
                    _state = "SEARCHING";
                };
            };
        };
        
		if (_state == "TRANSPORTING" || _state == "SEARCHING") then {
			private ["_units", "_unit", "_angle", "_x", "_y", "_lookAtPos"];
			
			uiSleep random 10;
			
			if (!isNull _group) then {
				_units = units _group;
				_unit = _units select floor random count _units;
				_angle = random 360;
				_y = 100 * cos _angle;
				_x = 100 * sin _angle;
				
				_lookAtPos = [(getPos _unit select 0) + _y, (getPos _unit select 1) + _x, getPos _unit select 2];
				_unit lookAt _lookAtPos;
				
				uiSleep 5;
				if (!isNull _unit) then {
					_unit lookAt objNull;
				};
			};
		};
        
        uiSleep random 10;
    };
};

if (_debug) then {
    ["Search group destroyed. Script exiting."] call dre_fnc_CL_ShowDebugTextAllClients;
    [_subSearchAreaMarkerName] call dre_fnc_CL_DeleteDebugMarkerAllClients;
    [_debugGroupMarkerName] call dre_fnc_CL_DeleteDebugMarkerAllClients;
    [_debugDestinationMarkerName] call dre_fnc_CL_DeleteDebugMarkerAllClients;
    [_debugSubAreaMarkerName] call dre_fnc_CL_DeleteDebugMarkerAllClients;
};

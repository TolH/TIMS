PATAREAS_PopulateArea = {
	params ["_area", ["_debug", false]];

	private ["_units", "_unit", "_skill", "_unitClassName", "_spawned", "_damage", "_unitObj"];
	private ["_script", "_newGroup", "_unitPos", "_rank"];

	private _markerName = _area select 0;
	private _areaPos = _area select 1;
	private _groups = _area select 2;
	private _areaSide = _area select 3;
	private _onGroupCreated = _area select 4;

	if (_debug) then {
	    player sideChat ("Populating area (" + _markerName + " No of groups: " + str count _groups + ")");
	};
	
	{
		_units = _x;
		_newGroup = createGroup _areaSide;
	
		{
			_unit = _x;
			
			//_unit = [_unitClassName, _damage, _spawned, _unitObj, _script, _unitPos, _skill, _ammo, _rank, _hasScript];
	
			_unitClassName = _unit select 0;
			_damage = _unit select 1;
			_spawned = _unit select 2;
			_unitPos = _unit select 5;
			_skill = _unit select 6;
			//_ammo = _unit select 7;	
			_rank = _unit select 8;
	
			if ((!_spawned) && _damage < 0.75) then {
				_markerName setMarkerPos _areaPos;
	
			 	_unitObj = _newGroup createUnit [_unitClassName, _unitPos, [], 0, "FORM"];
				[_unitObj] joinSilent _newGroup;
				_unitObj addEventHandler ["Killed",{ BONUS_VR_HUNT_POINT = BONUS_VR_HUNT_POINT + 1; _this execVM "TIMS_ROAMING_AI\Roaming_AI\EH_KILLED_FOOT.sqf"; }];
				_unitObj setSkill _skill;
				_unitObj setDamage _damage;
				//_unitObj setVehicleAmmo _ammo;
				_unitObj setUnitRank _rank;
				_unitObj setVariable ["ExileMoney",round (random AI_MONEY_DROP), true];
				_unit set [2, true];
				_unit set [3, _unitObj];
	
				if (_rank == "SERGEANT") then {
					_script = [group _unitObj, _markerName, [0,0,0], _debug] execVM "TIMS_ROAMING_AI\SearchPatrol\SearchPatrol.sqf";
					
					_unit set [4, _script];
					_unit set [9, true];
				};
			};
		} foreach _units;
	    
	    // Call the ON_GROUP_CREATED callback.
	    [_newGroup, _markerName, _groups] call _onGroupCreated;
	    
		uiSleep 0.5;
	} foreach _groups;
};

PATAREAS_DepopulateArea = {
	private ["_area", "_debug", "_units", "_unit", "_spawned", "_damage", "_unitObj", "_script"];
	private ["_unitPos", "_group", "_hasScript"];
	private ["_deleteGroupDelayed"];
	
	_area = _this select 0;
	if (count _this > 1) then {_debug = _this select 1;} else {_debug = false;};
	
	private _markerName = _area select 0;
	private _groups = _area select 2;
	private _onGroupRemoving = _area select 5;
	
	if (_debug) then {
	    player sideChat ("Depopulating area (" + _markerName + ")");
	};
	
	_deleteGroupDelayed = {
		params ["_group", "_marker", "_groupsCount", "_onGroupRemoving"];
	    
	    [_group, _marker, _groupsCount] call _onGroupRemoving;
	    
	    {
	        deleteVehicle _x;
	    } foreach units _group;
	    
	    deleteGroup _group;
	};
	
	{
		_units = _x;
	
		_unit = _units select 0;
		_unitObj = _unit select 3;
		_group = group _unitObj;
		_unitObj = leader _group;
		//_script = _unitObj getVariable "activeScript";
		_script = _unit select 4;
		_hasScript = _unit select 9;
	
		if (_hasScript) then {
			//terminate _script;
		};
	
		{
			_unit = _x;
			//_unit = [_unitClassName, _damage, _spawned, _unitObj, _script, _unitPos, _skill, _ammo, _rank, _hasScript];
	
			_spawned = _unit select 2;
			_unitObj = _unit select 3;
			//_script = _unit select 4;
			_hasScript = _unit select 9;
	
			if (_spawned) then {
				_damage = damage _unitObj;
				_unitPos = getPos _unitObj;
				//_ammo = ammo _unitObj;
				
				if (!canStand _unitObj) then {
					_damage = 1;
				};
	
				if (_hasScript) then {
					//terminate _script;
				};
	
				_unit set [1, _damage];
				_unit set [2, false];
				_unit set [3, objNull];
				_unit set [4, objNull];
				_unit set [5, _unitPos];
				//_unit set [7, _ammo];
			};
	
		} foreach _units;
	
	    [_group, _markerName, count _groups, _onGroupRemoving] spawn _deleteGroupDelayed;
	    
	    uiSleep 0.5;
	} foreach _groups;
};

// Gets a random marker position on land.
PATAREAS_GetRandomMarkerPos = {
	params ["_markerName"];
	private ["_pos"];
	
	_pos = [_markerName] call dre_fnc_CL_GetRandomMarkerPos;
	while {surfaceIsWater _pos} do {
		_pos = [_markerName] call dre_fnc_CL_GetRandomMarkerPos;
		uiSleep 0.02;
	};
	
	_pos
};

// Starts an instance of Engima's Patrolled Areas.
PATAREAS_PatrolledAreas = {	
	_this spawn {
		private ["_instanceId", "_globalAreaArrayName", "_areaNo", "_areaName", "_unitObj", "_script"];
		
		private _patrolAreas = [_this, "PATROL_AREAS"] call dre_fnc_GetParamValue;
		private _unitClasses = [_this, "UNIT_CLASSES"] call dre_fnc_GetParamValue;
		private _side = [_this, "SIDE", east] call dre_fnc_GetParamValue;
		private _minUnitsPerGroup = [_this, "MIN_UNITS_PER_GROUP", 2] call dre_fnc_GetParamValue;
		private _maxUnitsPerGroup = [_this, "MAX_UNITS_PER_GROUP", 5] call dre_fnc_GetParamValue;
		private _spawnDistance = [_this, "SPAWN_DISTANCE", 1000] call dre_fnc_GetParamValue;
		private _maxGroupsCount = [_this, "MAX_GROUP_COUNT_PER_MARKER", random 2] call dre_fnc_GetParamValue;
		private _groupProbabilityOfPresence = [_this, "GROUP_PROBABILITY_OF_PRESENCE", 1] call dre_fnc_GetParamValue;
		private _minSkill = [_this, "MIN_SKILL", 0.4] call dre_fnc_GetParamValue;
		private _maxSkill = [_this, "MAX_SKILL", 0.6] call dre_fnc_GetParamValue;
		private _hideMarkers = [_this, "HIDE_MARKERS", true] call dre_fnc_GetParamValue;
		private _onGroupCreated = [_this, "ON_GROUP_CREATED", {}] call dre_fnc_GetParamValue;
		private _onGroupRemoving = [_this, "ON_GROUP_REMOVING", {}] call dre_fnc_GetParamValue;
		private _debug = [_this, "DEBUG", false] call dre_fnc_GetParamValue;

		if (_hideMarkers) then {
			{
				_x setMarkerAlpha 0;
			} foreach _patrolAreas;
		};
		
		uiSleep 1;

		// Assert if unit classes are not men
		if (_debug) then {
			{
				if (!(_x isKindOf "Man")) then {
					["Engima.PatrolledAreas: Class name '" + _x + "' is not of type Man."] call dre_fnc_CL_ShowDebugTextAllClients;
				};
			} foreach _unitClasses;
		};
		
		// Determine instance ID
		if (isNil "PATAREAS_instanceId") then {
			PATAREAS_instanceId = 1;
			_instanceId = PATAREAS_instanceId;
		}
		else {
			PATAREAS_instanceId = PATAREAS_instanceId + 1;
			_instanceId = PATAREAS_instanceId;
		};
		
		waitUntil { dre_var_commonLibInitialized };
		
		// Check if all markers exist
		{
			if (!([_x] call dre_fnc_CL_MarkerExists) && _debug) then {
				["Engima.SearchPatrol: Marker '" + _x + "' does not exist."] call dre_fnc_CL_ShowDebugTextAllClients;
			};
			
		} foreach _patrolAreas;
		
		// Register global array
		_globalAreaArrayName = "PATAREAS_AreaMarkers" + str _instanceId;
		call compile (_globalAreaArrayName + " = [];");
			
		_areaNo = 0;

		// Create triggers around each area
		{
			private ["_areaPos", "_groups", "_groupPos", "_groupIndex", "_groupsCount", "_unitsCount", "_rank", "_hasScript"];
			private ["_roadSegments", "_roadSegment", "_i", "_units", "_possibleInfantryTypes", "_unitClassName", "_damage", "_spawned", "_unitPos", "_skill"];
			private ["_ammo", "_unit", "_area", "_trigger"];

		    _areaName = _x;
		    _areaPos = getMarkerPos _x;
			_groupsCount = 0;
	
		    for [{_groupIndex = 0}, {_groupIndex < _maxGroupsCount}, {_groupIndex = _groupIndex + 1}] do {
		    	if (random 1 < _groupProbabilityOfPresence) then {
		    		_groupsCount = _groupsCount + 1;
		    	};
			};

		    _groups = [];
		    
		    // Create groups
		    
		    for [{_groupIndex = 0}, {_groupIndex < _groupsCount}, {_groupIndex = _groupIndex + 1}] do
		    {
		        _unitsCount = _minUnitsPerGroup + floor (random (_maxUnitsPerGroup - _minUnitsPerGroup + 1));
		        _rank = "SERGEANT";
		        _hasScript = false;
		        _groupPos = [_areaName] call PATAREAS_GetRandomMarkerPos;
		        _roadSegments = _groupPos nearRoads 100;
		        if (count _roadSegments > 0) then {
		            _roadSegment = _roadSegments select floor random count _roadSegments;
		            _groupPos = getPos _roadSegment;
		        };

		        _units = [];
		        for [{_i = 0}, {_i < _unitsCount}, {_i = _i + 1}] do {
		            _unitClassName = _unitClasses select floor random count _unitClasses;
		            
		            _damage = 0;
		            _spawned = false;
		            _unitObj = objNull;
		            _script = objNull;
		            _unitPos = _groupPos;
		            _skill = (_minSkill + random (_maxSkill - _minSkill));
		            _ammo = random 1;
		            
		            _unit = [_unitClassName, _damage, _spawned, _unitObj, _script, _unitPos, _skill, _ammo, _rank, _hasScript];
		            _rank = "PRIVATE";
		            _units set [_i, _unit];
		        };

		        _groups set [count _groups, _units];
		    };

			_area = [_areaName, _areaPos, _groups, _side, _onGroupCreated, _onGroupRemoving];
			_area call compile (_globalAreaArrayName + " set [count " + _globalAreaArrayName + ", _this];");
		
			// Set area trigger
		
			_trigger = createTrigger["EmptyDetector", _areaPos];
			_trigger setTriggerArea[_spawnDistance, _spawnDistance, 0, false];
			_trigger setTriggerActivation["GUER", "PRESENT", true];
			_trigger setTriggerTimeout [1, 1, 1, true];
			_trigger setTriggerStatements["{isPlayer _x} count thisList > 0", "_nil = [" + _globalAreaArrayName + " select " + str _areaNo + ", " + str _debug + "] spawn PATAREAS_PopulateArea;", "_nil = [" + _globalAreaArrayName + " select " + str _areaNo + ", " + str _debug + "] spawn PATAREAS_DepopulateArea;"];
		
			_areaNo = _areaNo + 1;
		} foreach _patrolAreas;
		
		if (_debug) then {
			private ["_message"];
			_message = "Initialized patrol areas: " + str _areaNo;
			diag_log _message;
			player sideChat _message;
		};
	};
};

PATAREAS_initialized = true;

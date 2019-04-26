params["_display","_slide","_idc"];
private ["_baseMarker","_backbtn","_basePic","_Instruction","_OffBtn","_OnBtn","_newParent"];
disableSerialization;

_slideClass = "BaseMarker";

_newParent = [_display,_slide,([_slideClass,"ctrlGrp"] call ExAd_fnc_getNextIDC),[0, -0.03, 34 * _pW, 0.76]] call ExAd_fnc_createCtrlGrp;
_newParent ctrlEnable true;

_OnBtn = _display ctrlCreate ["RscButtonMenu", 15002,_newParent];
_OnBtn ctrlSetPosition [(32 - 20) * (0.025),(20 - 10) * (0.04),6 * (0.025),1 * (0.04)];
_OnBtn ctrlCommit 0;
_OnBtn ctrlSetText "On";
_OnBtn ctrlSetEventHandler ["ButtonClick", "call fnc_markerOn"];
 
_OffBtn = _display ctrlCreate ["RscButtonMenu", 15003,_newParent];
_OffBtn ctrlSetPosition [(32 - 10) * (0.025),(20 - 10) * (0.04),6 * (0.025),1 * (0.04)];
_OffBtn ctrlCommit 0;
_OffBtn ctrlSetText "Off";
_OffBtn ctrlSetEventHandler ["ButtonClick", "call fnc_markerOff"];

_backbtn = _display ctrlCreate ["RscButtonMenu", 15004,_newParent];
_backbtn ctrlSetPosition [0.62,0.1,0.20,0.04]; 
_backbtn ctrlCommit 0;
_backbtn ctrlSetText "Go Back";
_backbtn ctrlSetEventHandler ["ButtonClick", "['extraApps', 1] call ExileClient_gui_xm8_slide"];

_Instruction = _display ctrlCreate ["RscStructuredText", 15005,_newParent];
_Instruction ctrlSetPosition [(5.8 - 3) * (0.025), (20 - 12) * (0.04), 7.2 * (0.12), 3.75 * (0.02)];
_Instruction ctrlCommit 0;
_Instruction ctrlSetStructuredText parseText "<t size='1' align='center'>Toggle your base markers (Only viewable by you):</t>";

fnc_markerOn = {
   
        _playerUID = getPlayerUID player;
        {
            _flag = _x;
            _buildRights = _flag getVariable ["ExileTerritoryBuildRights", []];
            if (_playerUID in _buildRights) then
            {
            _name = _flag getVariable ["ExileTerritoryName", ""];
            _pos = getPos _flag;
            _marker = createMarkerLocal [_name, _pos];
            _marker setMarkerTextLocal _name;
            _marker setMarkerTypeLocal "mil_flag";
            _marker setMarkerColorLocal "ColorYellow"
            };
        }
        forEach (allMissionObjects "Exile_Construction_Flag_Static");
	["SuccessTitleAndText",["Base Markers toggled on."]] call BIS_fnc_showNotification;
};
 
fnc_markerOff = {
   
        _playerUID = getPlayerUID player;
        {
            _flag = _x;
            _buildRights = _flag getVariable ["ExileTerritoryBuildRights", []];
            if (_playerUID in _buildRights) then
            {
            _name = _flag getVariable ["ExileTerritoryName", ""];
            _pos = getPos _flag;
            deleteMarkerLocal _name;
           
            };
        }
        forEach (allMissionObjects "Exile_Construction_Flag_Static");
	["ErrorTitleAndText",["Base Markers toggled off."]] call BIS_fnc_showNotification;
};

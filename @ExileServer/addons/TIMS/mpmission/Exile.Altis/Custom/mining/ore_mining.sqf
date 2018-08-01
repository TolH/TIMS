/*
 Basic code exile mod, modify by Serveratze
*/


private ["_player","_ore_rock"];

_player = player;

if (ExileClientActionDelayShown) exitWith { false };
ExileClientActionDelayShown = true;
ExileClientActionDelayAbort = false;

if (ExileClientPlayerIsInCombat) exitWith
{
	[
	    "ErrorTitleAndText", 
	    ["Mining Info", "You are in combat!"]
	] call ExileClient_gui_toaster_addTemplateToast;
	ExileClientActionDelayShown = false;
	ExileClientActionDelayAbort = false;
};

            _ore_rock = nearestObject [_player, "DDR_Ore_Rock"];
            ["Mining started.."] spawn ExileClient_gui_baguette_show;

			disableSerialization;
			("ExileActionProgressLayer" call BIS_fnc_rscLayer) cutRsc ["RscExileActionProgress", "PLAIN", 1, false];

			_keyDownHandle = (findDisplay 46) displayAddEventHandler ["KeyDown","_this call ExileClient_action_event_onKeyDown"];
			_mouseButtonDownHandle = (findDisplay 46) displayAddEventHandler ["MouseButtonDown","_this call ExileClient_action_event_onMouseButtonDown"];

			_startTime = diag_tickTime;
			_duration = 15;
			_sleepDuration = _duration / 100;
			_progress = 0;

			_display = uiNamespace getVariable "RscExileActionProgress";   
			_label = _display displayCtrl 4002;
			_label ctrlSetText "0%";
			_progressBarBackground = _display displayCtrl 4001;  
			_progressBarMaxSize = ctrlPosition _progressBarBackground;
			_progressBar = _display displayCtrl 4000;  
			_progressBar ctrlSetPosition [_progressBarMaxSize select 0, _progressBarMaxSize select 1, 0, _progressBarMaxSize select 3];
			_progressBar ctrlSetBackgroundColor [0, 0.78, 0.93, 1];
			_progressBar ctrlCommit 0;
			_progressBar ctrlSetPosition _progressBarMaxSize; 
			_progressBar ctrlCommit _duration;
			try
			{
				while {_progress < 1} do
				{	
					if (ExileClientActionDelayAbort) then 
					{
						throw 1;
					};
					disableUserInput true;
                    _player playActionNow "PutDown";
					uiSleep _sleepDuration; 
					_progress = ((diag_tickTime - _startTime) / _duration) min 1;
					_label ctrlSetText format["%1%2", round (_progress * 100), "%"];
					disableUserInput false;
				};
				throw 0;
			}
			catch
			{
				_progressBarColor = [];
				switch (_exception) do 
				{
					case 0:
					{
						_progressBarColor = [0.7, 0.93, 0, 1];
                        deleteVehicle _ore_rock;
                        ["InfoTitleAndText", ["Mining Info", "It was very exhausting, but they found some ore."]] call ExileClient_gui_toaster_addTemplateToast;

						_itemsAdded = 0;
                        _itemsAdd = 4 + floor ( random 4 );
                        while{ _itemsAdded < _itemsAdd } do {
                        _player addItem "DDR_Item_Silver_Ore";
                        _itemsAdded = _itemsAdded + 1;
                        };

                        _itemsAdded = 0;
                        _itemsAdd = 4 + floor ( random 4 );
                        while{ _itemsAdded < _itemsAdd } do {
                        _player addItem "DDR_Item_Gold_Ore";
                        _itemsAdded = _itemsAdded + 1;
                        };
					};
					case 1: 	
					{ 
						[
							"InfoTitleAndText", 
							["Mining Info", "Do not move."]
						] call ExileClient_gui_toaster_addTemplateToast;
						_progressBarColor = [0.82, 0.82, 0.82, 1];
					};
				};	
				_player switchMove "";
				["switchMoveRequest", [netId _player, ""]] call ExileClient_system_network_send;
				_progressBar ctrlSetBackgroundColor _progressBarColor;
				_progressBar ctrlSetPosition _progressBarMaxSize;
				_progressBar ctrlCommit 0;
			};

			("ExileActionProgressLayer" call BIS_fnc_rscLayer) cutFadeOut 2; 
			(findDisplay 46) displayRemoveEventHandler ["KeyDown", _keyDownHandle];
			(findDisplay 46) displayRemoveEventHandler ["MouseButtonDown", _mouseButtonDownHandle];
			ExileClientActionDelayShown = false;
			ExileClientActionDelayAbort = false;
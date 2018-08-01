/// Copyright (C) 2016 DONAR (http://steamcommunity.com/id/donarfr/)
/// This work is licensed under the Apache License Version 2.0

_pW = 0.025;
_pH = 0.04;
_leftCol = 0;
_leftColW = 12.8;
_rightCol = _leftCol + _leftColW + 2;
_rightColW = _leftColW + 3;
_margin = 0.2;
disableSerialization;
_slideClass = "ExAd_69Admin";

if !([] call ExAd_69admin_fnc_isAdmin) exitWith{
	[_display,_slide,([_slideClass,"strCopy"] call ExAd_fnc_getNextIDC),[10 * _pW, 7 * _pH, 10 * _pW, 5 * _pH],"Nothing to see here :D","PuristaMedium",1,"#ffffff","center",1] call ExAd_fnc_createStructuredText;
	[_display,_slide,([_slideClass,"btnBack"] call ExAd_fnc_getNextIDC),[10 * _pW, 7 * _pH, 10 * _pW, 5 * _pH],'["extraApps", 1] call ExileClient_gui_xm8_slide;',"Go Back"] call ExAd_fnc_createButton;
};

[_display,_slide,([_slideClass,"btnBack"] call ExAd_fnc_getNextIDC),[27 * _pW, 17.5 * _pH, 6 * _pW, 1 * _pH],'["extraApps", 1] call ExileClient_gui_xm8_slide;',"Go Back"] call ExAd_fnc_createButton;
[_display,_slide,([_slideClass,"strCopy"] call ExAd_fnc_getNextIDC),[26.5 * _pW, 16 * _pH, 7 * _pW, 1 * _pH],"(c) 69Wasted","PuristaMedium",1,"#ffffff","center",1] call ExAd_fnc_createStructuredText;

//[1.5 * _pW, 2 * _pH, 21 * _pW, 5 * _pH]
// x			y		width		height

//console
_69console = [_display,_slide,([_slideClass,"console"] call ExAd_fnc_getNextIDC),[1 * _pW, 16 * _pH, 21 * _pW, 2.5 * _pH],""] call ExAd_fnc_createEdit;
_69buttonLocal = [_display,_slide,([_slideClass,"btnExec"] call ExAd_fnc_getNextIDC),[22.5 * _pW, 16 * _pH, 4 * _pW, 1 * _pH],format["[%1] call ExAd_69admin_fnc_execCode", ctrlIDC _69console],"Local"] call ExAd_fnc_createButton;
_69buttonGlobal = [_display,_slide,([_slideClass,"btnExec"] call ExAd_fnc_getNextIDC),[22.5 * _pW, 17.5 * _pH, 4 * _pW, 1 * _pH],format["[%1] call ExAd_69admin_fnc_execCode", ctrlIDC _69console],"Global"] call ExAd_fnc_createButton;
_69buttonGlobal ctrlEnable false;

//add Item
_69newAddItem = [_display,_slide,([_slideClass,"ctrlGrpItem"] call ExAd_fnc_getNextIDC),[1 * _pW, 2 * _pH, 10 * _pW, 14 * _pH]] call ExAd_fnc_createCtrlGrp;
_69cbItemGroups = [_display,_69newAddItem,([_slideClass,"cbItemGroup"] call ExAd_fnc_getNextIDC),[0.2 * _pW, 0 * _pH, 9.8 * _pW, 1 * _pH],format["[] spawn ExAd_69admin_showItems"],""] call ExAd_fnc_createCombo;

_69listCtrlAddItem = [_display,_69newAddItem,([_slideClass,"listAddItem"] call ExAd_fnc_getNextIDC),[0.2 * _pW, 1 * _pH, 9.5 * _pW, 10.5 * _pH],"",""] call ExAd_fnc_createList;


_69editCtrlAddItem = [_display,_69newAddItem,([_slideClass,"editAmount"] call ExAd_fnc_getNextIDC),[0.2 * _pW, 12 * _pH, 5 * _pW, 1 * _pH],"1"] call ExAd_fnc_createEdit;
_69buttonAddItem = [_display,_69newAddItem,([_slideClass,"btnAddItem"] call ExAd_fnc_getNextIDC),[6 * _pW, 12 * _pH, 4 * _pW, 1 * _pH],format["[%1, %2] spawn ExAd_69admin_fnc_addItem", ctrlIDC _69listCtrlAddItem, ctrlIDC _69editCtrlAddItem],"Add"] call ExAd_fnc_createButton;

//Button Row 1
_69buttonHeal = [_display,_slide,([_slideClass,"btnHeal"] call ExAd_fnc_getNextIDC),[11 * _pW, 2 * _pH, 6 * _pW, 1 * _pH],"player setdamage 0","Heal you"] call ExAd_fnc_createButton;

[_display,_slide,([_slideClass,"btnFood"] call ExAd_fnc_getNextIDC),[11 * _pW, 3.5 * _pH, 6 * _pW, 1 * _pH],'ExileClientPlayerAttributes set [2,100];',"Max Food"] call ExAd_fnc_createButton;
[_display,_slide,([_slideClass,"btnThirst"] call ExAd_fnc_getNextIDC),[11 * _pW, 5 * _pH, 5.9 * _pW, 1 * _pH],'ExileClientPlayerAttributes set [3,100];',"Max Drink"] call ExAd_fnc_createButton;
[_display,_slide,([_slideClass,"btnBtemp"] call ExAd_fnc_getNextIDC),[11 * _pW, 6.5 * _pH, 5.9 * _pW, 1 * _pH],'ExileClientPlayerAttributes set [5,37];',"Reset bodytemp"] call ExAd_fnc_createButton;
[_display,_slide,([_slideClass,"btnAsenal"] call ExAd_fnc_getNextIDC),[11 * _pW, 8 * _pH, 5.9 * _pW, 1 * _pH],"[] spawn ExAd_69admin_fnc_openAsenal","Asenal"] call ExAd_fnc_createButton;
[_display,_slide,([_slideClass,"btn5"] call ExAd_fnc_getNextIDC),[11 * _pW, 9.5 * _pH, 5.9 * _pW, 1 * _pH],"",""] call ExAd_fnc_createButton;
[_display,_slide,([_slideClass,"btn6"] call ExAd_fnc_getNextIDC),[11 * _pW, 11 * _pH, 5.9 * _pW, 1 * _pH],"",""] call ExAd_fnc_createButton;
[_display,_slide,([_slideClass,"btnDebug"] call ExAd_fnc_getNextIDC),[11 * _pW, 12.5 * _pH, 5.9 * _pW, 1 * _pH],'createDialog "RscDisplayDebugPublic";',"Debug Console"] call ExAd_fnc_createButton;
//Button Row 2
_69buttonCarHeal = [_display,_slide,([_slideClass,"btnCarHeal"] call ExAd_fnc_getNextIDC),[17 * _pW, 2 * _pH, 5.9 * _pW, 1 * _pH],"vehicle player setdamage 0","Heal car"] call ExAd_fnc_createButton;
_69buttonCarflip = [_display,_slide,([_slideClass,"btnCarFlip"] call ExAd_fnc_getNextIDC),[17 * _pW, 3.5 * _pH, 5.9 * _pW, 1 * _pH],"[] spawn ExAd_69admin_fnc_carFlip","Flip car"] call ExAd_fnc_createButton;
_69buttonCarfuel = [_display,_slide,([_slideClass,"btnfuel"] call ExAd_fnc_getNextIDC),[17 * _pW, 5 * _pH, 5.9 * _pW, 1 * _pH],"vehicle player setfuel 1","refuel car"] call ExAd_fnc_createButton;
if(vehicle player == player) then {_69buttonCarHeal ctrlEnable false; _69buttonCarflip ctrlEnable false; _69buttonCarfuel ctrlEnable false;};
[_display,_slide,([_slideClass,"btn10"] call ExAd_fnc_getNextIDC),[17 * _pW, 6.5 * _pH, 5.9 * _pW, 1 * _pH],"",""] call ExAd_fnc_createButton;
[_display,_slide,([_slideClass,"btn11"] call ExAd_fnc_getNextIDC),[17 * _pW, 8 * _pH, 5.9 * _pW, 1 * _pH],"",""] call ExAd_fnc_createButton;
[_display,_slide,([_slideClass,"btn12"] call ExAd_fnc_getNextIDC),[17 * _pW, 9.5 * _pH, 5.9 * _pW, 1 * _pH],"",""] call ExAd_fnc_createButton;
[_display,_slide,([_slideClass,"btn13"] call ExAd_fnc_getNextIDC),[17 * _pW, 11 * _pH, 5.9 * _pW, 1 * _pH],"",""] call ExAd_fnc_createButton;
[_display,_slide,([_slideClass,"btn14"] call ExAd_fnc_getNextIDC),[17 * _pW, 12.5 * _pH, 5.9 * _pW, 1 * _pH],"",""] call ExAd_fnc_createButton;



//teleport
_69newTeleport = [_display,_slide,([_slideClass,"ctrlGrpTeleport"] call ExAd_fnc_getNextIDC),[23 * _pW, 2 * _pH, 10 * _pW, 14 * _pH]] call ExAd_fnc_createCtrlGrp;
_69listCtrlTP = [_display,_69newTeleport,([_slideClass,"listTPPlayers"] call ExAd_fnc_getNextIDC),[0.2 * _pW, 0 * _pH, 9.5 * _pW, 11 * _pH],"",""] call ExAd_fnc_createList;



_69buttonTPHere = [_display,_69newTeleport,([_slideClass,"btnTPHere"] call ExAd_fnc_getNextIDC),[0.2 * _pW, 11.5 * _pH, 4 * _pW, 1 * _pH],format["[%1] spawn ExAd_69admin_fnc_TPHere", ctrlIDC _69listCtrlTP],"TP here"] call ExAd_fnc_createButton;
_69buttonTPHere = [_display,_69newTeleport,([_slideClass,"btnTPMeTo"] call ExAd_fnc_getNextIDC),[6 * _pW, 11.5 * _pH, 4 * _pW, 1 * _pH],format["[%1] spawn ExAd_69admin_fnc_TPMeTo", ctrlIDC _69listCtrlTP],"TP me to"] call ExAd_fnc_createButton;
_69buttonTPHere = [_display,_69newTeleport,([_slideClass,"btnTPMapMe"] call ExAd_fnc_getNextIDC),[0.2 * _pW, 12.7 * _pH, 4 * _pW, 1 * _pH],format["[%1] spawn ExAd_69admin_fnc_TPMapMe", ctrlIDC _console],"MapTP me"] call ExAd_fnc_createButton;
_69buttonTPHere = [_display,_69newTeleport,([_slideClass,"btnTPMap"] call ExAd_fnc_getNextIDC),[6 * _pW, 12.7 * _pH, 4 * _pW, 1 * _pH],format["[%1] spawn ExAd_69admin_fnc_TPMap", ctrlIDC _69listCtrlTP],"Map TP"] call ExAd_fnc_createButton;



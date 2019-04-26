/// Copyright (C) 2016 DONAR (http://steamcommunity.com/id/donarfr/)
/// This work is licensed under the Apache License Version 2.0

if !([] call ExAd_69admin_fnc_isAdmin) exitWith{
	["extraApps", 1] call ExileClient_gui_xm8_slide;
};
disableSerialization;
_display = uiNameSpace getVariable ["RscExileXM8", displayNull];

_69cbItemGroups = ctrlIDC ([_display,"ExAd_69admin","cbItemGroup"] call ExAd_fnc_getAppCtrl);
{
    (_display displayCtrl _69cbItemGroups) lbAdd Format["%1",_x select 0];
    (_display displayCtrl _69cbItemGroups) lbSetData [_forEachIndex,_x select 1];
  } foreach ExAd_69admin_ItemsGroups;
(_display displayCtrl _69cbItemGroups) lbSetCurSel 0;
  
[] spawn ExAd_69admin_showItems;
[] spawn ExAd_69admin_fnc_TPLoadPlayer
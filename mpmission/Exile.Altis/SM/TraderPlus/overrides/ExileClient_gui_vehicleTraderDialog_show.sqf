/**
 * ExileClient_gui_vehicleTraderDialog_show
 *
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */

/**
 * Author; StokesMagee
 * Website; www.stokesmagee.net
 * Copyright; © 2017 StokesMagee
 *
 * This work is property of StokesMagee. You do not have permissions to use/edit/distribute any of this content
 * without written permission from StokesMagee.
 */

private["_traderObject", "_dialog", "_purchaseButton", "_traderCategories", "_categoryComboBox", "_allIndex", "_categoryClass", "_categoryConfig", "_categoryIndex"];
disableSerialization;
_traderObject = _this;
ExileClientCurrentTrader = _this getVariable "ExileTraderType";
ExileClientPinCode = "";
false call ExileClient_gui_hud_toggle;
ExileClientMoonLight setLightBrightness 5;
createDialog "RscExileVehicleTraderDialog";
_dialog = uiNameSpace getVariable ["RscExileVehicleTraderDialog", displayNull];
_purchaseButton = _dialog displayCtrl 4002;
_purchaseButton ctrlEnable false;

private _controlsGroup = _dialog displayCtrl 1000;
private _pos = ctrlPosition _controlsGroup;
_pos set[3, (_pos select 3) + 0.09];
_controlsGroup ctrlSetPosition _pos;
_controlsGroup ctrlCommit 0;

private _pos = ctrlPosition _purchaseButton;
private _search = _dialog ctrlCreate ["RscEdit", 15103];
_pos set[1, (_pos select 1) + 0.095];
_pos set[2, (_pos select 2) - 0.22];
_pos set[3, (_pos select 3) - 0.01];
_search ctrlSetPosition _pos;
_search ctrlSetText "Search";
_search ctrlCommit 0;

SM_lastTradeSearch = "";
SM_Mutex = false;
private _searchButton = _dialog ctrlCreate ["RscButtonMenu", 15102];
_pos set[0, (_pos select 0) + 0.22];
_searchButton ctrlSetPosition _pos;
_searchButton ctrlSetText "Search";
_searchButton ctrlSetTextColor [1,1,1,1];
_searchButton ctrlSetBackgroundColor [0,0,0,0.8];
_searchButton ctrlSetEventHandler["ButtonClick","'Vehicle' call SM_TraderPlus_onSearchButtonClick"];
_searchButton ctrlCommit 0;

_traderCategories = getArray(missionConfigFile >> "CfgTraders" >> ExileClientCurrentTrader >> "categories");
_categoryComboBox = _dialog displayCtrl 4000;
_allIndex = _categoryComboBox lbAdd "";
_categoryComboBox lbSetCurSel _allIndex;
{
	_categoryClass = _x;
	_categoryConfig = missionConfigFile >> "CfgTraderCategories" >> _categoryClass;
	_categoryIndex = _categoryComboBox lbAdd getText(_categoryConfig >> "name");
	_categoryComboBox lbSetData [_categoryIndex, _categoryClass];
	_categoryComboBox lbSetPicture [_categoryIndex, getText(_categoryConfig >> "icon")];
}
forEach _traderCategories;
[""] call ExileClient_gui_vehicleTraderDialog_updateVehicleListBox;
call ExileClient_gui_modelBox_create;
true

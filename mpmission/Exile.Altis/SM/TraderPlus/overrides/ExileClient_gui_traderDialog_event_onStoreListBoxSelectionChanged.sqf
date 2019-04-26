/**
 * ExileClient_gui_traderDialog_event_onStoreListBoxSelectionChanged
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

private["_listBox", "_index", "_dialog", "_purchaseButton", "_quantityDropdown", "_inventoryLoadLabel", "_inventoryLoadValue", "_itemClassName", "_inventoryDropdown", "_selectedInventoryDropdownIndex", "_currentContainerType", "_canBuyItem", "_tradingResult", "_salesPrice", "_quality", "_requiredRespect", "_itemInformation", "_itemType", "_containerNetID", "_containerVehicle", "_inventoryListBox"];
disableSerialization;
if !(uiNameSpace getVariable ["RscExileTraderDialogIsInitialized", false]) exitWith {};
_listBox = _this select 0;
_dialog = uiNameSpace getVariable ["RscExileTraderDialog", displayNull];
_quantityDropdown = _dialog displayCtrl 4011;
_inventoryLoadLabel = _dialog displayCtrl 4013;
_inventoryLoadValue = _dialog displayCtrl 4014;
_inventoryLoadLabel ctrlSetTextColor [1,1,1,1];
_inventoryLoadValue ctrlSetTextColor [1,1,1,1];

if !(_listBox isEqualType "") then
{
	_itemClassName = _listBox getVariable ["ItemClassName", ""];
	_itemClassName call ExileClient_gui_traderDialog_updateItemStats;
}
else
{
	_itemClassName = _listBox;
};

_inventoryDropdown = _dialog displayCtrl 4004;
_purchaseButton = _dialog displayCtrl 4010;
_selectedInventoryDropdownIndex = lbCurSel _inventoryDropdown;
_currentContainerType = _inventoryDropdown lbValue _selectedInventoryDropdownIndex;
_canBuyItem = true;
_tradingResult = 0;
try 
{
	_salesPrice = getNumber(missionConfigFile >> "CfgExileArsenal" >> _itemClassName >> "price");
	if (_salesPrice > (player getVariable ["ExileMoney", 0])) throw 5;
	_quality = getNumber(missionConfigFile >> "CfgExileArsenal" >> _itemClassName >> "quality");
	_requiredRespect = getNumber(missionConfigFile >> "CfgTrading" >> "requiredRespect" >> format["Level%1",_quality]);
	if (_requiredRespect > ExileClientPlayerScore) throw 14;
	switch (_currentContainerType) do
	{
		case 1:
		{
			_itemInformation = [_itemClassName] call BIS_fnc_itemType;
			_itemType = _itemInformation select 1;
			if !([player, _itemClassName] call ExileClient_util_playerCargo_canAdd) throw 9;
		};
		case 2:
		{	
			if !(player canAddItemToUniform _itemClassName) throw 9;
		};
		case 3:
		{
			if !(player canAddItemToVest _itemClassName) throw 9;
		};
		case 4:
		{
			if !(player canAddItemToBackpack _itemClassName) throw 9;
		};
		default 
		{
			_containerNetID = _inventoryDropdown lbData _selectedInventoryDropdownIndex;
			_containerVehicle = objectFromNetId _containerNetID;
			if (_containerVehicle isEqualTo objNull) throw 8;
			if !([_containerVehicle, _itemClassName] call ExileClient_util_containerCargo_canAdd) throw 9;
		};
	};
}
catch
{
	_tradingResult = _exception;
	_canBuyItem = false;
};
if (ExileClientIsWaitingForServerTradeResponse) then
{
	_canBuyItem = false;
};
if (_canBuyItem) then 
{
	_quantityDropdown ctrlEnable true;
	_purchaseButton ctrlEnable true;
	_purchaseButton setVariable ["ItemClassName", _itemClassName];
	_purchaseButton setVariable ["ItemGroupControl", _listBox];
}
else 
{
	if (_tradingResult isEqualTo 9) then
	{
		_inventoryLoadLabel ctrlSetTextColor [0.91, 0, 0, 0.6];
		_inventoryLoadValue ctrlSetTextColor [0.91, 0, 0, 0.6];
	};
	_quantityDropdown ctrlEnable false;
	_purchaseButton ctrlEnable false;
	_purchaseButton setVariable ["ItemClassName",""];
	_purchaseButton setVariable ["ItemGroupControl", controlNull];
};
private _shplr = _dialog displayctrl 1603;
_shplr setVariable ["ItemClassName", _itemClassName];

_inventoryListBox = _dialog displayCtrl 4005;
_inventoryListBox lbSetCurSel -1;
true

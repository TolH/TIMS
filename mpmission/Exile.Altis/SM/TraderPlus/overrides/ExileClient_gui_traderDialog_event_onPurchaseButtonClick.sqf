/**
 * ExileClient_gui_traderDialog_event_onPurchaseButtonClick
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

private["_dialog", "_sellButton", "_purchaseButton", "_storeListBox", "_selectedStoreListBoxIndex", "_itemClassName", "_quantity", "_inventoryDropdown", "_selectedInventoryDropdownIndex", "_currentContainerType", "_containerNetID"];
disableSerialization;
if (!(uiNameSpace getVariable ["RscExileTraderDialogIsInitialized", false]) || ExileClientTraderIsLoading) exitWith {};
_dialog = uiNameSpace getVariable ["RscExileTraderDialog", displayNull];
_sellButton = _dialog displayCtrl 4007;
_sellButton ctrlEnable false;
_sellButton ctrlCommit 0;
_purchaseButton = _dialog displayCtrl 4010;
_itemClassName = _purchaseButton getVariable ["ItemClassName", ""];
_quantity = 1; 
if !(_itemClassName isEqualTo "") then
{
	if !(ExileClientIsWaitingForServerTradeResponse) then
	{
		_inventoryDropdown = _dialog displayCtrl 4004;
		_selectedInventoryDropdownIndex = lbCurSel _inventoryDropdown;
		_currentContainerType = _inventoryDropdown lbValue _selectedInventoryDropdownIndex;
		_containerNetID = "";
		private _canAdd = false;
		switch (_currentContainerType) do
		{
			case 1: 
			{
				_canAdd = [player, _itemClassName] call ExileClient_util_playerCargo_canAdd;
			};
			case 2:
			{
				_canAdd = [(uniformContainer player), _itemClassName] call ExileClient_util_playerCargo_canAdd;
			};
			case 3: 
			{
				_canAdd = [(vestContainer player), _itemClassName] call ExileClient_util_playerCargo_canAdd;
			};
			case 4:
			{
				_canAdd = [(backpackContainer player), _itemClassName] call ExileClient_util_playerCargo_canAdd;
			};
			default 
			{
				_containerNetID = _inventoryDropdown lbData _selectedInventoryDropdownIndex;
				private _tradeVehicleObject = objectFromNetId _containerNetID;
				_canAdd = [_tradeVehicleObject, _itemClassName] call ExileClient_util_playerCargo_canAdd;
			};
		};
		if (_canAdd) then
		{
			ExileClientIsWaitingForServerTradeResponse = true;
			["purchaseItemRequest", [_itemClassName, _quantity, _currentContainerType, _containerNetID]] call ExileClient_system_network_send;
		}
		else
		{
			["ErrorTitleOnly", ["Not enough inventory space!"]] call ExileClient_gui_toaster_addTemplateToast;
		};
	};
};
true

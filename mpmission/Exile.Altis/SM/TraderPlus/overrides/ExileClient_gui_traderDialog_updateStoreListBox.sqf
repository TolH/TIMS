/**
 * ExileClient_gui_traderDialog_updateStoreListBox
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

disableSerialization;
private _dialog = uiNameSpace getVariable ["RscExileTraderDialog", displayNull];
private _categoryDropdown = _dialog displayCtrl 4008;
private _currentCategoryIndex = lbCurSel _categoryDropdown;
private _currentCategory = _categoryDropdown lbData _currentCategoryIndex;
private _controlsGroup = _dialog displayCtrl 42052;
if (isNull _controlsGroup) then
{
	ctrlDelete _controlsGroup;
	_controlsGroup = _dialog ctrlCreate ["SM_TraderPlus_RscControlsGroupNoHScrollbars", 42052];
	_controlsGroup ctrlShow false;
	ExileClientTraderIsLoading = true;
	(_dialog displayCtrl 1603) ctrlSetText "SHOW PREVIEW";
};
deleteVehicle ExileClientModelBoxVehicle;

private _idc = 42053;
private _traderConfig = missionConfigFile >> "CfgTraders" >> ExileClientCurrentTrader;
private _applyItemClassFilter = false;
private _filterToItemClasses = [];
if !((primaryWeapon player) isEqualTo "") then
{
	private _primaryWeaponCheckbox = _dialog displayCtrl 4044;
	if (cbChecked _primaryWeaponCheckbox) then
	{
		_applyItemClassFilter = true;
		_filterToItemClasses append ((primaryWeapon player) call ExileClient_util_item_getCompatibleWeaponItems);
	};
};
if !((handgunWeapon player) isEqualTo "") then
{
	private _handgunCheckbox = _dialog displayCtrl 4045;
	if (cbChecked _handgunCheckbox) then
	{
		_applyItemClassFilter = true;
		_filterToItemClasses append ((handgunWeapon player) call ExileClient_util_item_getCompatibleWeaponItems);
	};
};

private _items = [];
{
	private _categoryClass = _x;
	if (_currentCategoryIndex isEqualTo 0 || _currentCategory isEqualTo _categoryClass) then
	{
		_items append getArray(missionConfigFile >> "CfgTraderCategories" >> _categoryClass >> "items");
	};
} forEach getArray(_traderConfig >> "categories");

private _ctrlListItemPosY = 0;
private _currentItem = 0.025;
private _arsenalConfig = missionConfigFile >> "CfgExileArsenal";
private _tradingConfig = missionConfigFile >> "CfgTrading" >> "requiredRespect";

{
	private _itemClassName = _x;
	private _showItem = true;
	if (_applyItemClassFilter) then
	{
		_showItem = _itemClassName in _filterToItemClasses;
	};
	if (_showItem) then
	{
		private _configName = _itemClassName call ExileClient_util_gear_getConfigNameByClassName;
		private _itemConfig = configFile >> _configName >> _itemClassName;
		private _displayName = getText(_itemConfig >> "displayName");
		if ([_displayName, _itemClassName] call SM_TraderPlus_Search) then
		{
			private _picture = getText(_itemConfig >> "picture");
			private _quality = getNumber(_arsenalConfig >> _itemClassName >> "quality");
			private _salesPrice = getNumber(_arsenalConfig >> _itemClassName >> "price");
			private _requiredRespect = getNumber(_tradingConfig >> format["Level%1",_quality]);
			private _popTabColor = [1, 1, 1, 1];
			switch (_quality) do
			{
				case 1: { _popTabColor = [1,1,1,1]; };
				case 2: { _popTabColor = [0.62, 0.87 ,0.23, 1]; };
				case 3: { _popTabColor = [0, 0.78, 0.92, 1]; };
				case 4: { _popTabColor = [0.62, 0.27, 0.58, 1]; };
				case 5: { _popTabColor = [1, 0.7, 0.09, 1]; };
				case 6: { _popTabColor = [0.93, 0, 0.48, 1]; };				
			};
			private _imageColor = [1,1,1,1];
			private _toolTip = _displayName;
			private _playerMoney = player getVariable ["ExileMoney", 0];
			private _missingRespect = _requiredRespect - ExileClientPlayerScore;
			private _missingPopTabs = _salesPrice - _playerMoney;
			if (_requiredRespect > ExileClientPlayerScore) then
			{
				_popTabColor set[3, 0.3];
				_imageColor set [3, 0.3];
				_toolTip = _toolTip + format["%1%2", endl, format["Missing %1 Respect", _missingRespect call ExileClient_util_string_exponentToString]];
			};
			if (_salesPrice > (player getVariable ["ExileMoney", 0])) then
			{
				_popTabColor set[3, 0.3];
				_imageColor set [3, 0.3];
				_toolTip = _toolTip + format["%1%2",endl,format["Missing %1 Pop Tabs", _missingPopTabs call ExileClient_util_string_exponentToString]];
			};
			if ((_salesPrice > _playerMoney) && (_requiredRespect > ExileClientPlayerScore)) then
			{
				_toolTip = format["%4%3Missing %1 Pop Tabs & %2 Respect", _missingPopTabs call ExileClient_util_string_exponentToString, _missingRespect call ExileClient_util_string_exponentToString, endl, _displayName];
			};

			_idc = _idc + 1;
			private _ctrlListItemGroup = _controlsGroup controlsGroupCtrl _idc;
			if (isNull _ctrlListItemGroup) then
			{
				_ctrlListItemGroup = _dialog ctrlcreate ["SM_TraderPlus_ItemGroup", _idc, _controlsGroup];
			};

			private _itemGroupPos = [_currentItem, _ctrlListItemPosY, 0.15, 0.15];
			_ctrlListItemGroup ctrlSetPosition _itemGroupPos;
			_ctrlListItemGroup ctrlCommit 0;

			private _itemPictureCtrl = _ctrlListItemGroup controlsGroupCtrl 4202;
			_itemPictureCtrl ctrlSetTextColor _imageColor;
			_itemPictureCtrl ctrlSetText _picture;

			private _toolTipCtrl = _ctrlListItemGroup controlsGroupCtrl 4205;
			_toolTipCtrl ctrlSetTooltip _toolTip;

			private _displayNameCtrl = _ctrlListItemGroup controlsGroupCtrl 4203;
			_displayNameCtrl ctrlSetStructuredText parseText format["<t size='0.7' align='center' shadow=2>%1</t>", _displayName];

			private _poptabsCtrl = _ctrlListItemGroup controlsGroupCtrl 4204;
			_poptabsCtrl ctrlSetStructuredText parseText format["<t size='1.2' align='right' shadow=2>%1 <img size='1.6' image='exile_assets\texture\ui\poptab_trader_ca.paa'/></t>", _salesPrice call ExileClient_util_string_exponentToString];
			_poptabsCtrl ctrlSetTextColor _popTabColor;

			_ctrlListItemGroup setVariable ["ItemClassName", _itemClassName];

			_currentItem = _currentItem + 0.155;
			if (_currentItem > 0.8) then
			{
				_currentItem = 0.025;
				_ctrlListItemPosY = _ctrlListItemPosY + 0.155;
			};
		};
	};
} forEach _items;

_controlsGroup ctrlShow true;
ExileClientTraderIsLoading = false;

true

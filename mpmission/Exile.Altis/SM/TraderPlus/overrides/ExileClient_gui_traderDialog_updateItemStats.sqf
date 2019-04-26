/**
 * ExileClient_gui_traderDialog_updateItemStats
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

private["_itemClassName", "_dialog", "_itemPicture", "_i", "_itemConfig", "_promotedStats", "_controlID"];
_itemClassName = _this;
_dialog = uiNameSpace getVariable ["RscExileTraderDialog", displayNull];
_itemPicture = _dialog displayCtrl 4003;
_itemPicture ctrlShow false;
private _statsName = _dialog displayCtrl 2003;
for "_i" from 4015 to 4042 do 
{
	(_dialog displayCtrl _i) ctrlShow false;
};
if !(_itemClassName isEqualTo "") then
{
	_itemConfig = _itemClassName call ExileClient_util_gear_getConfigNameByClassName;
	_itemPicture ctrlShow true;
	_itemPicture ctrlSetText getText(configFile >> _itemConfig >> _itemClassName >> "picture");
	_statsName ctrlSetText format["STATS FOR: %1", getText(configFile >> _itemConfig >> _itemClassName >> "displayname")];
	_promotedStats = _itemClassName call ExileClient_util_item_getMainStats;
	_controlID = 4015;
	{
		(_dialog displayCtrl _controlID) ctrlShow true;
		(_dialog displayCtrl (_controlID + 2)) ctrlSetText (_x select 0);
		(_dialog displayCtrl (_controlID + 2)) ctrlShow true;
		(_dialog displayCtrl (_controlID + 3)) ctrlSetStructuredText parseText (_x select 1);
		(_dialog displayCtrl (_controlID + 3)) ctrlShow true;
		(_dialog displayCtrl (_controlID + 1)) progressSetPosition (_x select 2);
		(_dialog displayCtrl (_controlID + 1)) ctrlShow true;
		(_dialog displayCtrl (_controlID + 1)) ctrlCommit 1;
		_controlID = _controlID + 4;
	}
	forEach _promotedStats;
}
else
{
	_statsName ctrlSetText "STATS";
};
true
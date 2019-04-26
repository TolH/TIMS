/**
 * ExileServer_object_player_network_createPlayerRequest
 *
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_sessionID","_parameters","_requestingPlayer","_spawnLocationMarkerName","_playerUID","_accountData","_bambiPlayer","_cargoType"];
_sessionID = _this select 0;
_parameters = _this select 1;
_requestingPlayer = _sessionID call ExileServer_system_session_getPlayerObject;
try
{
	if (isNull _requestingPlayer) then 
	{
		throw format ["Session %1 requested a bambi character, but doesn't have a player object. Hacker or Monday?", _sessionID];
	};
	_spawnLocationMarkerName = _parameters select 0;
	_playerUID = getPlayerUID _requestingPlayer;
	if(_playerUID isEqualTo "")then
	{
		throw format ["Player: '%1' has no player UID. Arma/Steam sucks!.",name _requestingPlayer];
	};
	_accountData = format["getAccountStats:%1", _playerUID] call ExileServer_system_database_query_selectSingle;
	_bambiPlayer = (createGroup independent) createUnit ["Exile_Unit_Player", [0,0,0], [], 0, "CAN_COLLIDE"];
	
// Custom Loadout Starts Here. Uncomment the lines you want your players to have..

	// Remove Anything already on the BambiSettings
	removeAllAssignedItems _bambiPlayer;
	removeGoggles _bambiPlayer;
	removeHeadgear _bambiPlayer;
	removeUniform _bambiPlayer;
	removeBackpackGlobal _bambiPlayer; // Only Uncomment This if Not Using Paracutes
	
	// Clothing
	_bambiPlayer forceAddUniform "TRYK_U_B_PCUGs_BLK"; // Black Exile Overalls
	_bambiPlayer addVest "V_TacVest_blk"; // Change Vest Class Here
	_bambiPlayer addHeadgear "TRYK_headsetcap_blk"; // Change Headgear Class Here
	_bambiPlayer addBackpack "TRYK_U_B_PCUGs_BLK"; // Change Backpack Class Here
	//_bambiPlayer addGoggles "NVGoggles"; // This Puts The GPS Into The Correct Slot
	
	// Navigation Items
	//_bambiPlayer linkItem "NVGoggles"; // This Puts The GPS Into The Correct Slot
	_bambiPlayer linkItem "Exile_Item_XM8"; // This Puts The XM8 Into The Correct Slot 
	_bambiPlayer linkItem "ItemCompass"; //This Puts The Compass Into The Correct Slot
	_bambiPlayer linkItem "ItemMap"; //This Puts The Map Into The Correct Slot
	_bambiPlayer linkItem "ItemRadio"; //This Puts The Radio Into The Correct Slot
	
	// Food and Drink Items
	_bambiPlayer addItem "Exile_Item_PlasticBottleCoffee"; // Change Drink Class Here
	_bambiPlayer addItem "Exile_Item_BBQSandwich_Cooked"; // Change Food Class Here
	
	// Medical Items
	_bambiPlayer addItem "Exile_Item_Bandage"; // Change Meds Class Here
	_bambiPlayer addItem "Exile_Item_CanOpener"; // Change Meds Class Here
	_bambiPlayer addItem "Exile_Item_ExtensionCord"; // Change Meds Class Here
	
	// Ammo - Add ammo before weapons
    _bambiPlayer addItemToVest "hlc_30RND_545x39_B_AK"; // Ammo For Weapon Listed Below
	_bambiPlayer addItemToVest "hlc_30RND_545x39_B_AK"; // Ammo For Weapon Listed Below
	//_bambiPlayer addItemToVest "11Rnd_45ACP_Mag"; // Ammo For Weapon Listed Below
	
	// Weapons
	_bambiPlayer addWeapon "hlc_rifle_ak74_dirty"; // Weapon
	
	// Weapons Attachments
	//_bambiPlayer addHandgunItem "optic_MRD"; // Adds Attachment to Handgun | Change Attachment Class Here
	//_bambiPlayer addHandgunItem "muzzle_snds_acp"; // Adds Attachment to Handgun | Change Attachment Class Here
	//_bambiPlayer addPrimaryWeaponItem "acc_flashlight"; // Adds Attachment to Primary Weapon | Change Attachment Class Here
	_bambiPlayer addPrimaryWeaponItem "hlc_optic_kobra";// Adds Attachment to Primary Weapon | Change Attachment Class Here
	//_bambiPlayer addPrimaryWeaponItem "muzzle_snds_B_khk_F"; // Adds Attachment to Primary Weapon | Change Attachment Class Here
	
// Custom Loadout Ends Here. Uncomment the lines you want your players to have..
	
	/* Old original loadout
	removeHeadgear _bambiPlayer;
	{
		_cargoType = _x call ExileClient_util_cargo_getType;
		switch (_cargoType) do
		{
			case 1: 	{ _bambiPlayer addItem _x; };
			case 2: 	{ _bambiPlayer addWeaponGlobal _x; };
			case 3: 	{ _bambiPlayer addBackpackGlobal _x; };
			case 4:		{ _bambiPlayer linkItem _x; };
			default 					{ _bambiPlayer addItem _x; };
		};
	}
	forEach getArray(configFile >> "CfgSettings" >> "BambiSettings" >> "loadOut");*/
	
	[_sessionID, _requestingPlayer, _spawnLocationMarkerName, _bambiPlayer, _accountData] call ExileServer_object_player_createBambi;
	
}
catch
{
	_exception call ExileServer_util_log;
};
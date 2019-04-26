/**
	R3F Crate Selling Script by [GADD]Monkeynutz
	Allows selling of crates at the wastedump. Based on the origional script
	that can be found using the links in the Readme.md
	Shows Toasts and deletes the crate after adding the money and respect to the player.
	Public Variables fixed by [FPS]Kuplion. Tks bby.
**/

private _useInfiSTAR = true; 	// If you use infiSTAR, set this to true to have the crate selling logged in infiSTAR_Logs
private _convenience = 0.9;		// Change this to what ever you want. Default = 0.9. 0.9 = 10% taken from the earnings for convenience.
private _crateList = [	
		// I added this because people add things to the Movable Objects thing in R3F that aren't crates.
		// This array prevents people from selling a car by accident.
		// Add to this with classnames of Vehicles/Crates you want to be able to be used in this script.
		// Example: Crates are replaced with the SDV in the Underwater missions. Add them here if you want to.
			"I_CargoNet_01_ammo_F",		
			"Box_NATO_Wps_F",		
			"CargoNet_01_box_F",		
			"Box_NATO_Ammo_F",		
			"O_CargoNet_01_ammo_F",		
			"B_CargoNet_01_Ammo_F",		
			"Exile_Container_SupplyBox",	
			"O_supplyCrate_F",
			"I_supplyCrate_F",
			"B_supplyCrate_F",
			"Box_NATO_AmmoOrd_F",
			"C_IDAP_supplyCrate_F",
			"Box_IDAP_AmmoOrd_F",
			"Box_IDAP_Equip_F",
			"Box_IDAP_Uniforms_F",
			"C_IDAP_CargoNet_01_supplies_F"
		];

if (R3F_LOG_mutex_local_verrou) then
{
	hintC STR_R3F_LOG_mutex_action_en_cours;
}
else
{
	R3F_LOG_mutex_local_verrou = true;
	
	private _foundTrader = false;
	{
		_foundTrader = true;
	} forEach nearestObjects [player, ["Exile_Trader_WasteDump"], 12]; // Distance to the trader. Default = 12.

	if (_foundTrader) then {
			
		private _target = player;
		private _targetUID = getPlayerUID player;
		private _targetName = name player;
		private _crate = R3F_LOG_joueur_deplace_objet;
		private _cargo = _crate call ExileClient_util_containerCargo_list;	
		private _revenue = _cargo call ExileClient_util_gear_calculateTotalSellPrice;
		private _newrevenue = _revenue*_convenience;
		private _revrespect = ((_newrevenue/10)*0.8);	// Takes some respect off of the total respect earned for balancing reasons. Default = 0.8 = 20%
		private _percentage = (100-(_convenience*100));	// DO NOT MODIFY
		
		if !((typeOf _crate) in _crateList) exitWith
		{
			["InfoTitleAndText", ["Crate Selling", "This object was not a crate. Selling of contents aborted."]] call ExileClient_gui_toaster_addTemplateToast;
			R3F_LOG_joueur_deplace_objet = objNull;
			sleep 0.25;
			
			R3F_LOG_mutex_local_verrou = false;
		};
		
		clearWeaponCargoGlobal 		_crate;
		clearItemCargoGlobal 		_crate;
		clearMagazineCargoGlobal 	_crate;
		clearBackpackCargoGlobal 	_crate;
		
		private _cash = player getVariable ["ExileMoney", 0]; 
		private _crateCash = _crate getVariable ["ExileMoney", 0];
		private _currentRespect = ExileClientPlayerScore; 
		private _overallCash = round (_cash+_crateCash);
		private _addedRev = round (_newrevenue+_overallCash);
		private _addedRes = round (_currentRespect+_revrespect);
				
		_target setVariable ["ExileMoney",_addedRev, true];  
			
		//_target setVariable ['ExileScore', _addedRes, true];  
			
		_target setVariable['PLAYER_STATS_VAR',[_target getVariable ['ExileMoney', 0],_addedRes],true];  
		ExileClientPlayerScore = _addedRes;  
		//(owner _target) publicVariableClient 'ExileClientPlayerScore';  
		
		R3FCrateSale = [_target, _targetUID, _addedRev, _addedRes];
		publicVariableServer "R3FCrateSale"; 
			
		[format["<t size='30' font='OrbitronMedium' color='#00fff6'>Crate Contents Sold!</t><br />    
		<t size='24' font='PuristaMedium' color='#10ff00'>+%1<img image='\exile_assets\texture\ui\poptab_inline_ca.paa' size='24'/><br/> 
		+%2 Respect!<br/> 
		We have taken a %3 Percent convenience fee for the service.</t>",_newrevenue, _revrespect, _percentage], [0.8, 0, 1, 1]] call ExileClient_gui_toaster_addToast; 
		
		if (_useInfiSTAR) then 
		{
			Cratelogger = [_targetName, _targetUID, _newrevenue, _revrespect, _cash, _currentRespect, _addedRev, _addedRes, _cargo];
			publicVariableServer "CrateLogger";
		};
		
		systemChat "Removing crate from the world in 1 second!";
		
		sleep 1;
		
		deleteVehicle _crate;
	};
	
	R3F_LOG_joueur_deplace_objet = objNull;
	sleep 0.25;
	
	R3F_LOG_mutex_local_verrou = false;
};
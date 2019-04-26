/** Salty Dog Exile: Recruit Ai V.2
**  by aussie 2017
**  https://github.com/aussie-battler/Salty-Dog-Exile-Recruit-Ai
**/
private ["_statue","_unit","_unitList"];
	if (("Exile_Item_BeefParts" in (magazines player)) && (GUARD_AImax < 3)) then
    {
		player removeItem "Exile_Item_BeefParts";
		disableUserInput true;
		player playMove "AmovPercMstpSlowWrflDnon_Salute"; 
		_unitList = ["B_recon_F","B_recon_JTAC_F","B_recon_LAT_F","B_recon_M_F","B_recon_TL_F","B_recon_exp_F","B_recon_medic_F"];
		_unit = group player createUnit [_unitList select (round(random ((count _unitList) - 1))), getPos player, [], 0, "FORM"];
		_unit setskill ["aimingAccuracy",0.9];
		_unit setskill ["aimingShake",0.9];
		_unit setskill ["aimingSpeed",0.9];
		_unit setskill ["spotDistance",0.9];
		_unit setskill ["spotTime",0.9];
		_unit setskill ["courage",1.0];
		_unit setskill ["reloadSpeed",1.0];
		_unit setskill ["commanding",1.0];
		_unit setskill ["general",0.9];
		_unit setCombatMode "RED";
		_unit allowFleeing 0;
		_unit addEventHandler ["Killed",{ GUARD_AImax = GUARD_AImax - 1; deleteVehicle (_this select 0); }];
		GUARD_AImax = GUARD_AImax + 1;
		if (GUARD_AImax == 1) then 
		{
			["SuccessTitleAndText",["Bodyguard Deployed 1/3"]] call ExileClient_gui_toaster_addTemplateToast;
		};
		if (GUARD_AImax == 2) then 
		{
			["SuccessTitleAndText",["Bodyguard Deployed 2/3"]] call ExileClient_gui_toaster_addTemplateToast;
		};
		if (GUARD_AImax == 3) then 
		{
			["SuccessTitleAndText",["Bodyguard Deployed 3/3"]] call ExileClient_gui_toaster_addTemplateToast;
		};
		_statue = nearestObject [player, "Land_AncientStatue_01_F"];
		deleteVehicle _statue;
		disableUserInput false;
	} 
	else
	{
		if (GUARD_AImax == 3) then 
		{
			["ErrorTitleAndText",["You can only have 3 Bodyguards at a time..."]] call ExileClient_gui_toaster_addTemplateToast;
		}
		else
		{
			["ErrorTitleAndText",["You need Beef Parts..."]] call ExileClient_gui_toaster_addTemplateToast;
		};
	};
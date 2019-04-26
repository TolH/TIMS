class CfgRemoteExec
{
	class Functions
	{
		mode = 2;
		jip = 0;
		//infiSTAR AntiHack
		class fnc_AdminReq { allowedTargets=2; };
		//infiSTAR xm8apps
		class fn_xm8apps_server { allowedTargets=2; };
		//EXILE DEFAULT
		class ExileServer_system_network_dispatchIncomingMessage { allowedTargets=2; };
		//AIRDROP
		//class APOC_srv_startAirdrop 							{ allowedTargets=2; };
		//EXAD
		class ExAdServer_fnc_clientRequest 						{ allowedTargets=2; };
		//SLZ_ZEUS
		class slz_fnc_assigncurator 							{jip=1; allowedTargets = 2;};
		//ARES
		class achilles_fnc_changeside_local						{jip=1; allowedTargets = 2;};
		class achilles_fnc_spawn_remote							{jip=1; allowedTargets = 2;};
		class achilles_fnc_breachstun							{jip=1; allowedTargets = 2;};
		class achilles_fnc_ambientanim							{jip=1; allowedTargets = 2;};
		class bis_fnc_holdactionadd								{jip=1; allowedTargets = 2;};
		class bis_fnc_holdactionremove							{jip=1; allowedTargets = 2;};
		class achilles_fnc_chute								{jip=1; allowedTargets = 2;};
		class rhs_fnc_vehpara									{jip=1; allowedTargets = 2;};
		class bis_fnc_initvehicle								{jip=1; allowedTargets = 2;};
		class ares_fnc_surrenderunit							{jip=1; allowedTargets = 2;};
		class ace_medical_fnc_treatmentadvanced_fullheallocal	{jip=1; allowedTargets = 2;};
		class achilles_fnc_setaceinjury							{jip=1; allowedTargets = 2;};
		class achilles_fnc_setvanillainjury						{jip=1; allowedTargets = 2;};
		class achilles_fnc_createsuicidebomber					{jip=1; allowedTargets = 2;};
		class achilles_fnc_damagebuildings						{jip=1; allowedTargets = 2;};
		class achilles_fnc_effectfire							{jip=1; allowedTargets = 2;};
		class bis_fnc_earthquake								{jip=1; allowedTargets = 2;};
		class ares_fnc_weather_function							{jip=1; allowedTargets = 2;};
		class ares_fnc_change_weather_function					{jip=1; allowedTargets = 2;};
		class achilles_fnc_suppressivefire						{jip=1; allowedTargets = 2;};
		class bis_fnc_saymessage								{jip=1; allowedTargets = 2;};
		class ares_fnc_addintel									{jip=1; allowedTargets = 2;};
		class bis_fnc_shownotification							{jip=1; allowedTargets = 2;};
		class achilles_fnc_createied							{jip=1; allowedTargets = 2;};
		class bis_fnc_setpitchbank								{jip=1; allowedTargets = 2;};
		class achilles_fnc_setsrfrequencies						{jip=1; allowedTargets = 2;};
		class achilles_fnc_setlrfrequencies						{jip=1; allowedTargets = 2;};
		class bis_fnc_shakecuratorcamera						{jip=1; allowedTargets = 2;};
		class bis_fnc_advhint									{jip=1; allowedTargets = 2;};
		class bis_fnc_curatorsaymessage							{jip=1; allowedTargets = 2;};
		class bis_fnc_carrier01init								{jip=1; allowedTargets = 2;};
		class ares_fnc_arsenalsetup								{jip=1; allowedTargets = 2;};
		class ares_fnc_searchbuilding							{jip=1; allowedTargets = 2;};
		class achilles_fnc_instantbuildinggarrison				{jip=1; allowedTargets = 2;};
		class ares_fnc_updateteleportmarkeractions				{jip=1; allowedTargets = 2;};
		class achilles_fnc_eject_passengers						{jip=1; allowedTargets = 2;};
		class bis_fnc_carrier01posupdate						{jip=1; allowedTargets = 2;};
		class achilles_fnc_setunitammodef						{jip=1; allowedTargets = 2;};
		class achilles_fnc_setvehicleammodef					{jip=1; allowedTargets = 2;};
		class achilles_fnc_modulecas_server						{jip=1; allowedTargets = 2;};
		class bis_fnc_modulerespawnvehicle						{jip=1; allowedTargets = 2;};
		//Advanced Rappelling
		class AR_Client_Rappel_From_Heli 						{ allowedTargets=0; };
		class AR_Hint 											{ allowedTargets=1; };
		class AR_Hide_Object_Global 							{ allowedTargets=2; };
		class AR_Enable_Rappelling_Animation 					{ allowedTargets=2; };
		class AR_Rappel_From_Heli 								{ allowedTargets=2; };
		//Advanced Urban Rappelling
		class AUR_Hint 											{ allowedTargets=1; };
		class AUR_Hide_Object_Global 							{ allowedTargets=2; };
		class AUR_Enable_Rappelling_Animation_Global 			{ allowedTargets=2; };
		class AUR_Play_Rappelling_Sounds_Global 				{ allowedTargets=2; }; 
		//VCOM
		//class vcm_serverask { allowedTargets=2; };
		//SCAVENGE
		class ExileExpansionServer_system_scavenge_spawnLoot	{ allowedTargets=0; };
		//ADVANCED SLING LOADING
		class ASL_Pickup_Ropes { allowedTargets=0; };
		class ASL_Deploy_Ropes_Index { allowedTargets=0; };
		class ASL_Rope_Set_Mass { allowedTargets=0; };
		class ASL_Extend_Ropes { allowedTargets=0; };
		class ASL_Shorten_Ropes { allowedTargets=0; };
		class ASL_Release_Cargo { allowedTargets=0; };
		class ASL_Retract_Ropes { allowedTargets=0; };
		class ASL_Deploy_Ropes { allowedTargets=0; };
		class ASL_Attach_Ropes { allowedTargets=0; };
		class ASL_Drop_Ropes { allowedTargets=0; };
		class ASL_Hint { allowedTargets=1; };
		class ASL_Hide_Object_Global { allowedTargets=2; };
	};
	class Commands
	{
		mode=2;
		jip=0;
		//ARES
		class enableai											{jip=1; allowedTargets = 1;};
		class disableai											{jip=1; allowedTargets = 1;};
		class allowfleeing										{jip=1; allowedTargets = 1;};
		class setpylonloadout									{jip=1; allowedTargets = 1;};
		class setskill											{jip=1; allowedTargets = 1;};
		class setunittrait										{jip=1; allowedTargets = 1;};
		class sethitindex										{jip=1; allowedTargets = 1;};
		class setdir											{jip=1; allowedTargets = 1;};
		class setvectordirandup									{jip=1; allowedTargets = 1;};
		class switchmove										{jip=1; allowedTargets = 1;};
		class sidechat											{jip=1; allowedTargets = 1;};
		class globalChat										{jip=1; allowedTargets = 1;};
		class vehicleChat										{jip=1; allowedTargets = 1;};
		class commandChat										{jip=1; allowedTargets = 1;};
		class addeventhandler									{jip=1; allowedTargets = 1;};
		class unassignvehicle									{jip=1; allowedTargets = 1;};
		class action											{jip=1; allowedTargets = 1;};
		class ordergetin										{jip=1; allowedTargets = 1;};
		class enablesimulationglobal							{jip=1; allowedTargets = 1;};
		class setface											{jip=1; allowedTargets = 1;};
		class setspeaker										{jip=1; allowedTargets = 1;};
		class setpitch											{jip=1; allowedTargets = 1;};
		class setname											{jip=1; allowedTargets = 1;};
		class setnamesound										{jip=1; allowedTargets = 1;};
		class addcuratoreditableobjects							{jip=1; allowedTargets = 1;};
		class removecuratoreditableobjects						{jip=1; allowedTargets = 1;};
		class removeallactions									{jip=1; allowedTargets = 1;};
		class spawn												{jip=1; allowedTargets = 1;};
		class flyinheight										{jip=1; allowedTargets = 1;};
		class swimindepth										{jip=1; allowedTargets = 1;};
		class setfriend											{jip=1; allowedTargets = 1;};
		class allowdamage										{jip=1; allowedTargets = 1;};
		class hideobjectglobal									{jip=1; allowedTargets = 1;};
		class hint												{jip=1; allowedTargets = 1;};
		class enablegunlights									{jip=1; allowedTargets = 1;};
		class enableirlasers									{jip=1; allowedTargets = 1;};
		class linkitem											{jip=1; allowedTargets = 1;};
		class unassignitem										{jip=1; allowedTargets = 1;};
		class removeitem										{jip=1; allowedTargets = 1;};
		class removeprimaryweaponitem							{jip=1; allowedTargets = 1;};
		class addprimaryweaponitem								{jip=1; allowedTargets = 1;};
		class commandartilleryfire								{jip=1; allowedTargets = 1;};
		class hintsilent										{jip=1; allowedTargets = 1;};
		class hintcadet											{jip=1; allowedTargets = 1;};
		class setbehaviour										{jip=1; allowedTargets = 1;};
		class setcombatmode										{jip=1; allowedTargets = 1;};
		class setdate											{jip=1; allowedTargets = 1;};
		class setformation										{jip=1; allowedTargets = 1;};
		class setfuel											{jip=1; allowedTargets = 1;};
		class lock												{jip=1; allowedTargets = 1;};
		class setspeedmode										{jip=1; allowedTargets = 1;};
		class setunitpos										{jip=1; allowedTargets = 1;};
	};
};
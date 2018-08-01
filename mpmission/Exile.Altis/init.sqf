//=========================================================//
	//Igiload
	[] execVM "IgiLoad\IgiLoadInit.sqf";
	//R3F
	[] execVM "R3F_LOG\init.sqf";
	//infiDMS
	[] execVM "Infi\infistar_custom.sqf";
	//PaintShop
	[] execVM "addons\paintshop\paintshop_serveraddon.sqf";
	[] execVM "Custom\EnigmaRevive\init.sqf";
//=========================================================//
	if (hasInterface) then
	{
		[] execVM "addons\paintshop\paintshop.sqf";		// PaintShop
	};
//=========================================================//
//NOTIFICATION
	"layer_notifications" cutRsc ["rsc_notifications", "PLAIN"];

	addMissionEventHandler ["Loaded",
	{
		[] spawn
		{
			sleep 2;
			"layer_notifications" cutRsc ["rsc_notifications", "PLAIN"];
		};
	}];
//=========================================================//



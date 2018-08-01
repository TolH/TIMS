//==================================================================//
/*		
	_LVgroup1 = 
	[
		"B_Heli_Transport_01_camo_F",
		east,
		"MARKER"
		["TOHL"]
	] execVM "TIMS\LV\heli_drop_custom.sqf";

	
	
	
	_LVgroup1 = ["B_Heli_Transport_01_camo_F",east,"MARKER",["TOHL"]] execVM "TIMS\LV\heli_drop_custom.sqf";
	
	
*/
//==================================================================//
	if (!isServer)exitWith{};
//==================================================================//
	//PRIVATE
	private 
		[
			"_HeliModel","_Side","_DropPosition","","","","","","","",
			"","","","","","","","","",""
		];
//==================================================================//
	_HeliModel 					= _this select 0;
	_Side		 				= _this select 1;
	_DropPosition 				= _this select 2;
	_Main_Target_Position 		= _this select 3;
	_Main_Target_Position 		= _this select 4;
	_Main_Target_Position 		= _this select 5;
	_Main_Target_Position 		= _this select 6;
	_Main_Target_Position 		= _this select 7;



//==================================================================//



//==================================================================//




//==================================================================//
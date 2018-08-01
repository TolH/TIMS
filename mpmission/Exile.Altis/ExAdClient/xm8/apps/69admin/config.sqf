/// Copyright (C) 2016 DONAR (http://steamcommunity.com/id/donarfr/)
/// This work is licensed under the Apache License Version 2.0


ExAd_69admin_ItemsGroups = [
//  ["Display name", "group name"],
	["All", "all"],
	["Construction", "construction"],
	["Construction Wood", "wconstruction"],
	["Construction Concrete", "cconstruction"],
	["Container", "container"],
	["Tools", "tool"],
	["Buold Items", "builditem"],
	["Food", "food"]
	
];

ExAd_69admin_Items = [
//  ["Display name", "class name", "group"],
	//construction
	["Work Bench", "Exile_Item_WorkBenchKit", "construction"],
	["Wire Fence", "Exile_Item_WireFenceKit", "construction"],
	["Razor Wire", "Exile_Item_RazorWireKit", "construction"],
	["Sandbags Corner", "Exile_Item_SandBagsKit_Corner", "construction"],
	["Sandbags", "Exile_Item_SandBagsKit_Long", "construction"],
	["HBarrier", "Exile_Item_HBarrier5Kit", "construction"],
	["WaterBarrel", "Exile_Item_WaterBarrelKit", "construction"],
	["Metal Hedgehog", "Exile_Item_MetalHedgehogKit", "construction"],
	["Generator", "Exile_Item_PortableGeneratorKit", "construction"],
	["FloodLight", "Exile_Item_FloodlightKit", "construction"],
	["CampFire", "Exile_Item_CampFireKit", "construction"],
	["Camera", "Exile_Item_BaseCameraKit", "construction"],
	
	//construction wood
	["Wood Plank", "Exile_Item_WoodPlank", "wconstruction"],
	["Wood Log", "Exile_Item_WoodLog", "wconstruction"],
	["Wood Repair Kit", "Exile_Item_RepairKitWood", "wconstruction"],
	["Wood Floor", "Exile_Item_WoodFloorKit", "wconstruction"],
	["Wood Floor Port", "Exile_Item_WoodFloorPortKit", "wconstruction"],
	["Wood Wall", "Exile_Item_WoodWallKit", "wconstruction"],
	["Wood 1/2 Wall", "Exile_Item_WoodWallHalfKit", "wconstruction"],
	["Wood DoorWay", "Exile_Item_WoodDoorwayKit", "wconstruction"],
	["Wood Door", "Exile_Item_WoodDoorKit", "wconstruction"],
	["Wood Gate", "Exile_Item_WoodGateKit", "wconstruction"],
	["Wood Window", "Exile_Item_WoodWindowKit", "wconstruction"],
	["Wood Stairs", "Exile_Item_WoodStairsKit", "wconstruction"],
	["Wood Support", "Exile_Item_WoodSupportKit", "wconstruction"],
	
	
	//construction concrete
	["Concrete Floor", "Exile_Item_ConcreteFloorKit", "cconstruction"],
	["Concrete Floor Port", "Exile_Item_ConcreteFloorPortKit", "cconstruction"],
	["Concrete Wall", "Exile_Item_ConcreteWallKit", "cconstruction"],
	["Concrete Doorway", "Exile_Item_ConcreteDoorwayKit", "cconstruction"],
	["Concrete Door", "Exile_Item_ConcreteDoorKit", "cconstruction"],
	["Concrete Gate", "Exile_Item_ConcreteGateKit", "cconstruction"],
	["Concrete Window", "Exile_Item_ConcreteWindowKit", "cconstruction"],
	["Concrete Stairs", "Exile_Item_ConcreteStairsKit", "cconstruction"],
	["Concrete Support", "Exile_Item_ConcreteSupportKit", "cconstruction"],

	//container
	["Safe", "Exile_Item_SafeKit", "container"],
	["Camo Tent", "Exile_Item_CamoTentKit", "container"],
	["Storage Crate", "Exile_Item_StorageCrateKit", "container"],
	["Supply Box", "Exile_Item_SupplyBoxKit", "container"],

	//Build Items
	["Bag of Cement", "Exile_Item_Cement", "builditem"],
	["Bag of Sand", "Exile_Item_Sand", "builditem"],
	["Metal Wire", "Exile_Item_MetalWire", "builditem"],
	["Metal Board", "Exile_Item_MetalBoard", "builditem"],
	["Metal Pole", "Exile_Item_MetalPole", "builditem"],
	["Light Bulb", "Exile_Item_LightBulb", "builditem"],
	["Code Lock ", "Exile_Item_Codelock", "builditem"],
	["Fortification Upgrade", "Exile_Item_FortificationUpgrade", "builditem"],

	//Tools
	["Insta Doc", "Exile_Item_InstaDoc", "tool"],
	["Thermal Scanner Pro", "Exile_Item_ThermalScannerPro", "tool"],
	["Bandage ", "Exile_Item_Bandage", "tool"],
	["Knife ", "Exile_Item_Knife", "tool"],
	["Zip Tie ", "Exile_Item_ZipTie", "tool"],
	["Rope", "Exile_Item_Rope", "tool"],
	["Foolbox", "Exile_Item_Foolbox", "tool"],
	["Laptop", "Exile_Item_Laptop", "tool"],
	
	//Food
	["Can Opener", "Exile_Item_CanOpener", "food"],
	["BBQ Sandwich (Cooked)", "Exile_Item_BBQSandwich_Cooked", "food"],
	["Catfood (Cooked)", "Exile_Item_Catfood_Cooked", "food"],
	["Catfood (Raw)", "Exile_Item_Catfood", "food"],
	["Christmas Tinner (Cooked)", "Exile_Item_ChristmasTinner_Cooked", "food"],
	["Chemical Noodles", "Exile_Item_Noodles", "food"],
	["Cheathas", "Exile_Item_Cheathas", "food"]
];


// ###########################################
// # DO NOT CHANGE ANYTHING BELOW THIS LINE #
// ##########################################


//Admin Check
ExAd_69admin_fnc_isAdmin = {
	private["_return"];
	_return = serverCommandAvailable "#exec ban";
	// for Debug in SP
	//_return = true;
	_return
	
};

//Console
ExAd_69admin_fnc_execCode = {
	private["_textCtrl", "_text"];
	if !([] call ExAd_69admin_fnc_isAdmin) exitWith{};
	_textCtrl = _this select 0;
	_text = ctrlText _textCtrl;
	["InfoTitleAndText", ["Console Comand", _text]] call ExileClient_gui_toaster_addTemplateToast;
	
	if(count _text == 0) then {
		["ErrorTitleAndText", ["ExAd - Console", "Field empty :)"]] call ExileClient_gui_toaster_addTemplateToast;
	}
	else {
	_code = compile _text;
	call _code;
	
	};
	
};


// Add Item

ExAd_69admin_showItems = {
	private["_display", "_69cbItem", "_69cbItemGroups"];
	disableSerialization;
	_display = uiNameSpace getVariable ["RscExileXM8", displayNull];
	_69cbItem = ctrlIDC ([_display,"ExAd_69admin","listAddItem"] call ExAd_fnc_getAppCtrl);
	
	_69cbItemGroups = ctrlIDC ([_display,"ExAd_69admin","cbItemGroup"] call ExAd_fnc_getAppCtrl);
	_69group =  lbData [_69cbItemGroups, (lbCurSel _69cbItemGroups)];
	LBClear _69cbItem;
	_showAll = if(_69group == "all") then {true} else {false};
	_show = false;
{
	_show = if(_x select 2 == _69group) then {true} else {false};
	if(_show || _showAll) then {
	    (_display displayCtrl _69cbItem) lbAdd Format["%1",_x select 0];
	    (_display displayCtrl _69cbItem) lbSetData [(lbSize _69cbItem) -1,_x select 1];
		 
	};
  } foreach ExAd_69admin_Items;

};


ExAd_69admin_fnc_addItem = {
	private["_textCtrl", "_text"];
	_IDCSelect = _this select 0;
	_IDCAmount = _this select 1;
	
	_amount = ctrlText _IDCAmount;
	_selcected = lbCurSel _IDCSelect;
	_name = lbText [_IDCSelect, _selcected];
	_class = lbData [_IDCSelect, _selcected];
	
	if (typename _amount != "SCALAR") then { _amount = 1 };
	
	//player addItemToBackpack _class ;
	for "_i" from 1 to _amount do {player addItem _class ;};	
	["InfoTitleAndText", [format ["You have added %1 x %2 (%3)",_amount, _name, _class]]] call ExileClient_gui_toaster_addTemplateToast;		
};

//Asenal

ExAd_69admin_fnc_openAsenal = {
	closeDialog 0;
	["Open",true] spawn BIS_fnc_arsenal;
};


//Teleport

ExAd_69admin_fnc_TPLoadPlayer = {
	private["_display", "_69listCtrlTP"];
	disableSerialization;
	_display = uiNameSpace getVariable ["RscExileXM8", displayNull];
	_69listCtrlTP = ctrlIDC ([_display,"ExAd_69admin","listTPPlayers"] call ExAd_fnc_getAppCtrl);
	LBClear _69listCtrlTP;
	{
		(_display displayCtrl _69listCtrlTP) lbAdd Format["%1",name _x];
		lbSetData [_69listCtrlTP, (lbSize _69listCtrlTP) -1, getPlayerUID _x];
	} foreach playableUnits;
	
};

ExAd_69admin_fnc_TPMeTo = {
	private["_selcected", "_IDCSelect", "_name", "_player"];
	_IDCSelect = _this select 0;
	_selcected = lbCurSel _IDCSelect;
	_name = lbText [_IDCSelect, _selcected];
	_playerID = lbData [_IDCSelect, _selcected];
	["InfoTitleAndText", [format ["You have teleported You to %1 (%2) ",_name, _playerID]]] call ExileClient_gui_toaster_addTemplateToast;
	{
		if(getPlayerUID _x == _playerID) then {vehicle player setPos (position _x);};
	} foreach playableUnits;
	
	
};

ExAd_69admin_fnc_TPHere = {
	private["_selcected", "_IDCSelect", "_name", "_player"];
	_IDCSelect = _this select 0;
	_selcected = lbCurSel _IDCSelect;
	_name = lbText [_IDCSelect, _selcected];
	_playerID = lbData [_IDCSelect, _selcected];
	["InfoTitleAndText", [format ["You have teleported %1 (%2) to you",_name, _playerID]]] call ExileClient_gui_toaster_addTemplateToast;
	{
		if(getPlayerUID _x == _playerID) then {(vehicle _x) setPos (position player);};
	} foreach playableUnits;
};

ExAd_69admin_fnc_TPMapMe = {
	closeDialog 0;
	openMap [true, false];
	onMapSingleClick "vehicle player setPos[_pos select 0, _pos select 1, _pos select 2]; onMapSingleClick ''";
};

ExAd_69admin_fnc_TPMap = {
private["_selcected", "_IDCSelect", "_name", "_player"];
	_IDCSelect = _this select 0;
	_selcected = lbCurSel _IDCSelect;
	_name = lbText [_IDCSelect, _selcected];
	_playerID = lbData [_IDCSelect, _selcected];
	
	{
		if(getPlayerUID _x == _playerID) then {
			closeDialog 0;
			openMap [true, false];
			onMapSingleClick 'vehicle _x setPos[_pos select 0, _pos select 1, _pos select 2]; ["InfoTitleAndText", [format ["You have teleported %1 (%2) to you",_name, _playerID]]] call ExileClient_gui_toaster_addTemplateToast; onMapSingleClick "" ';	
		};
	} foreach playableUnits;
};

ExAd_69admin_fnc_carFlip = {
	private["_vehicle"];
	_vehicle = vehicle player;
	_vehicle setPos [getPos _vehicle select 0, getPos _vehicle select 1, (getPos _vehicle select 2)+0.7];

}
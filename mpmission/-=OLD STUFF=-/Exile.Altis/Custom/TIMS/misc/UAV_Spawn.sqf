UAV_XM8_SPAWN = 
[
	["Menu",false],
	["-=UAV=-", [0], "", -5, [["expression", ""]], "1", "1"],
	["UAV_1 (Free)", [0], "", -5, [["expression", "nul = createVehicle [""O_UAV_01_F"", getPos player, [], 0, ""NONE""]; player addItem ""I_UavTerminal""; player linkItem ""I_UavTerminal"";"]], "1", "1"],
	["UAV_2 (Free)", [0], "", -5, [["expression", "nul = createVehicle [""C_UAV_06_medical_F"", getPos player, [], 0, ""NONE""]; player addItem ""I_UavTerminal""; player linkItem ""I_UavTerminal"";"]], "1", "1"],
//	["UAV_3 (15k)", [0], "", -5, [["expression", "nul = createVehicle [""C_UAV_06_medical_F"", getPos player, [], 0, ""NONE""]; [-15000] execVM ""Custom\TIMS\misc\UAV_xm8_buy.sqf""; player addItem ""I_UavTerminal""; player linkItem ""I_UavTerminal""; "]], "1", "1"],
//	["UAV_4 (25k)", [0], "", -5, [["expression", "nul = createVehicle [""C_UAV_06_medical_F"", getPos player, [], 0, ""NONE""]; [-25000] execVM ""Custom\TIMS\misc\UAV_xm8_buy.sqf""; player addItem ""I_UavTerminal""; player linkItem ""I_UavTerminal""; "]], "1", "1"],
	["UAV_5 (50k)", [0], "", -5, [["expression", "nul = createVehicle [""B_T_UAV_03_F"", getPos player, [], 0, ""NONE""]; [-50000] execVM ""Custom\TIMS\misc\UAV_xm8_buy.sqf""; player addItem ""I_UavTerminal""; player linkItem ""I_UavTerminal""; "]], "1", "1"]
];
showCommandingMenu "#USER:UAV_XM8_SPAWN";
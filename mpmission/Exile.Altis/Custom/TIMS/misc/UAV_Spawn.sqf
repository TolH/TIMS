private _UAV = createVehicle ["O_UAV_01_F", getPos player, [], 0, "NONE"];
private _items = items player;
player addItem "I_UavTerminal";
player linkItem "I_UavTerminal";

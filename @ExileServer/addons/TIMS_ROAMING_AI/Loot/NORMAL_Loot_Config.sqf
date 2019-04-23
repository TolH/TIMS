/*
	//CRATE LOOT RATE/QUALITY CAN BE:
		LOW_Loot_Setup;
		NORMAL_Loot_Setup;
		HIGH_Loot_Setup;
	//CRATE LOOT TYPE CAN BE:
		"EXILEWEAPONS"
		"RHSWEAPONS"
		"MEDIC"
		"CONSTRUCTION"
		"TOOLS"
		"TROPHY"
		"DDR"
		"BACKPACKS"
		"SCOPES"
	//EXEMPLE HOW TO USE:
		[_crate1,"EXILEWEAPONS"] ExecVM LOW_Loot_Setup;
		[_crate1,"RHSWEAPONS"] ExecVM LOW_Loot_Setup;
		[_crate1,"SCOPES"] ExecVM NORMAL_Loot_Setup;
		[_crate1,"MEDIC"] ExecVM NORMAL_Loot_Setup;
		[_crate1,"CONSTRUCTION"] ExecVM HIGH_Loot_Setup;
		[_crate1,"TOOLS"] ExecVM HIGH_Loot_Setup;
		[_crate1,"TROPHY"] ExecVM NORMAL_Loot_Setup;
		[_crate1,"DDR"] ExecVM NORMAL_Loot_Setup;
		[_crate1,"BACKPACKS"] ExecVM NORMAL_Loot_Setup;
*/
//============================================////============================================//
private _crate = _this select 0;
private _type = _this select 1;
//============================================////============================================//
//RANDOM NUMBER SHORTCUT
//============================================////============================================//
private _TROPHY_randomMAX 		= floor(random 3);
private _WEAPONS_randomMAX 		= floor(random 10);
private _RHS_WEAPONS_randomMAX 	= floor(random 10);
private _SCOPES_randomMAX 		= floor(random 10);
private _MEDIC_randomMAX 		= floor(random 10);
private _CONSTRUCTION_randomMAX = floor(random 10);
private _BACKPACKS_randomMAX 	= floor(random 10);
private _DDR_randomMAX 			= floor(random 10);
private _TOOLS_randomMAX 		= floor(random 10);
//============================================////============================================//
//"TROPHY" TYPE CRATE Loots...
//============================================////============================================//
	if (_type isEqualTo "TROPHY") then 
	{
		//LOOT_TROPHY
		_scount = count LOOT_TROPHY;
		for "_x" from 1 to _TROPHY_randomMAX do 
		{
			_sSelect = floor(random _sCount);
			_item = LOOT_TROPHY select _sSelect;
			_crate addItemCargoGlobal [_item,1];
		};
	};
//============================================////============================================//
//"EXILEWEAPONS" TYPE CRATE Loots...
//============================================////============================================//
	if (_type isEqualTo "EXILEWEAPONS") then 
	{
		//============================================////============================================//
		//LOOT_SNIPER
		_scount = count LOOT_SNIPER;
		for "_x" from 1 to _WEAPONS_randomMAX do 
		{
			_sSelect = floor(random _sCount);
			_item = LOOT_SNIPER select _sSelect;
			_crate addWeaponCargoGlobal [_item,1];
			_ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
			if (count _ammo > 0) then 
			{
				_crate addMagazineCargoGlobal [(_ammo select 0),(round(random 5))];
			};
		};
		//============================================////============================================//
		//LOOT_ASSAULT_RIFLES
		_scount = count LOOT_ASSAULT_RIFLES;
		for "_x" from 1 to _WEAPONS_randomMAX do 
		{
			_sSelect = floor(random _sCount);
			_item = LOOT_ASSAULT_RIFLES select _sSelect;
			_crate addWeaponCargoGlobal [_item,1];
			_ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
			if (count _ammo > 0) then {
				_crate addMagazineCargoGlobal [(_ammo select 0),(round(random 5))];
			};
		};
		//============================================////============================================//
		//LOOT_SHOTGUN
		/*_scount = count LOOT_SHOTGUN;
		for "_x" from 1 to _WEAPONS_randomMAX do 
		{
			_sSelect = floor(random _sCount);
			_item = LOOT_SHOTGUN select _sSelect;
			_crate addWeaponCargoGlobal [_item,1];
			_ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
			if (count _ammo > 0) then {
				_crate addMagazineCargoGlobal [(_ammo select 0),(round(random 5))];
			};
		};*/
		//============================================////============================================//
		//LOOT_LIGHT_MACHINE_GUNS
		_scount = count LOOT_LIGHT_MACHINE_GUNS;
		for "_x" from 1 to _WEAPONS_randomMAX do 
		{
			_sSelect = floor(random _sCount);
			_item = LOOT_LIGHT_MACHINE_GUNS select _sSelect;
			_crate addWeaponCargoGlobal [_item,1];
			_ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
			if (count _ammo > 0) then 
			{
				_crate addMagazineCargoGlobal [(_ammo select 0),(round(random 5))];
			};
		};
		//============================================////============================================//
		//LOOT_SUB_MACHINE_GUNS
		_scount = count LOOT_SUB_MACHINE_GUNS;
		for "_x" from 1 to _WEAPONS_randomMAX do 
		{
			_sSelect = floor(random _sCount);
			_item = LOOT_SUB_MACHINE_GUNS select _sSelect;
			_crate addWeaponCargoGlobal [_item,1];
			_ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
			if (count _ammo > 0) then 
			{
				_crate addMagazineCargoGlobal [(_ammo select 0),(round(random 5))];
			};
		};
		//============================================////============================================//
		//LOOT_PISTOLS
		_scount = count LOOT_PISTOLS;
		for "_x" from 1 to _WEAPONS_randomMAX do 
		{
			_sSelect = floor(random _sCount);
			_item = LOOT_PISTOLS select _sSelect;
			_crate addWeaponCargoGlobal [_item,1];
			_ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
			if (count _ammo > 0) then 
			{
				_crate addMagazineCargoGlobal [(_ammo select 0),(round(random 5))];
			};
		};
		//============================================////============================================//
		//LOOT_EXPLOSIVES
		_scount = count LOOT_EXPLOSIVES;
		for "_x" from 1 to _WEAPONS_randomMAX do 
		{
			_sSelect = floor(random _sCount);
			_item = LOOT_EXPLOSIVES select _sSelect;
			_crate addMagazineCargoGlobal [_item,(round(random 2))];
		};
	};
//============================================////============================================//
//"RHSWEAPONS" TYPE CRATE Loots...
//============================================////============================================//
	if (_type isEqualTo "RHSWEAPONS") then 
	{
		//============================================////============================================//
		//LOOT_RHS_SNIPER
		_scount = count LOOT_RHS_SNIPER;
		for "_x" from 1 to _RHS_WEAPONS_randomMAX do 
		{
			_sSelect = floor(random _sCount);
			_item = LOOT_RHS_SNIPER select _sSelect;
			_crate addWeaponCargoGlobal [_item,1];
			/*_ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
			if (count _ammo > 0) then 
			{
				_crate addMagazineCargoGlobal [(_ammo select 0),(round(random 5))];
			};*/
		};
		//============================================////============================================//
		//LOOT_RHS_ASSAULT_RIFLES
		_scount = count LOOT_RHS_ASSAULT_RIFLES;
		for "_x" from 1 to _RHS_WEAPONS_randomMAX do 
		{
			_sSelect = floor(random _sCount);
			_item = LOOT_RHS_ASSAULT_RIFLES select _sSelect;
			_crate addWeaponCargoGlobal [_item,1];
			/*_ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
			if (count _ammo > 0) then {
				_crate addMagazineCargoGlobal [(_ammo select 0),(round(random 5))];
			};*/
		};
		//============================================////============================================//
		//LOOT_RHS_SHOTGUN
		_scount = count LOOT_RHS_SHOTGUN;
		for "_x" from 1 to _RHS_WEAPONS_randomMAX do 
		{
			_sSelect = floor(random _sCount);
			_item = LOOT_RHS_SHOTGUN select _sSelect;
			_crate addWeaponCargoGlobal [_item,1];
			/*_ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
			if (count _ammo > 0) then {
				_crate addMagazineCargoGlobal [(_ammo select 0),(round(random 5))];
			};*/
		};
		//============================================////============================================//
		//LOOT_RHS_LIGHT_MACHINE_GUNS
		_scount = count LOOT_RHS_LIGHT_MACHINE_GUNS;
		for "_x" from 1 to _RHS_WEAPONS_randomMAX do 
		{
			_sSelect = floor(random _sCount);
			_item = LOOT_RHS_LIGHT_MACHINE_GUNS select _sSelect;
			_crate addWeaponCargoGlobal [_item,1];
			/*_ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
			if (count _ammo > 0) then 
			{
				_crate addMagazineCargoGlobal [(_ammo select 0),(round(random 5))];
			};*/
		};
		//============================================////============================================//
		//LOOT_RHS_PISTOLS
		_scount = count LOOT_RHS_PISTOLS;
		for "_x" from 1 to _RHS_WEAPONS_randomMAX do 
		{
			_sSelect = floor(random _sCount);
			_item = LOOT_RHS_PISTOLS select _sSelect;
			_crate addWeaponCargoGlobal [_item,1];
			/*_ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
			if (count _ammo > 0) then 
			{
				_crate addMagazineCargoGlobal [(_ammo select 0),(round(random 5))];
			};*/
		};
		//============================================////============================================//
		//LOOT_RHS_EXPLOSIVES
		_scount = count LOOT_RHS_EXPLOSIVES;
		for "_x" from 1 to _RHS_WEAPONS_randomMAX do 
		{
			_sSelect = floor(random _sCount);
			_item = LOOT_RHS_EXPLOSIVES select _sSelect;
			_crate addMagazineCargoGlobal [_item,(round(random 2))];
		};
	};
//============================================////============================================//
//"SCOPES" TYPE CRATE Loots...
//============================================////============================================//
	if (_type isEqualTo "SCOPES") then 
	{
		//LOOT_SCOPES
		_scount = count LOOT_SCOPES;
		for "_x" from 1 to _SCOPES_randomMAX do 
		{
			_sSelect = floor(random _sCount);
			_item = LOOT_SCOPES select _sSelect;
			_crate addItemCargoGlobal [_item,1];
		};
	};
//============================================////============================================//
//"MEDIC" TYPE CRATE Loots...
//============================================////============================================//
	if (_type isEqualTo "MEDIC") then 
	{
		//============================================////============================================//
		//LOOT_FOOD
		_scount = count LOOT_FOOD;
		for "_x" from 1 to _MEDIC_randomMAX do 
		{
			_sSelect = floor(random _sCount);
			_item = LOOT_FOOD select _sSelect;
			_crate addItemCargoGlobal [_item,(round(random 5))];
		};
		//============================================////============================================//
		//LOOT_DRINKS
		_scount = count LOOT_DRINKS;
		for "_x" from 1 to _MEDIC_randomMAX do 
		{
			_sSelect = floor(random _sCount);
			_item = LOOT_DRINKS select _sSelect;
			_crate addItemCargoGlobal [_item,(round(random 5))];
		};
		//============================================////============================================//
		//LOOT_FIRST_AID
		_scount = count LOOT_FIRST_AID;
		for "_x" from 1 to _MEDIC_randomMAX do 
		{
			_sSelect = floor(random _sCount);
			_item = LOOT_FIRST_AID select _sSelect;
			_crate addItemCargoGlobal [_item,(round(random 5))];
		};
		//============================================////============================================//
	};
//============================================////============================================//
//"CONSTRUCTION" TYPE CRATE Loots...
//============================================////============================================//
	if (_type isEqualTo "CONSTRUCTION") then 
	{
		//============================================////============================================//
		//LOOT_CONSTRUCTION
		_scount = count LOOT_CONSTRUCTION;
		for "_x" from 1 to _CONSTRUCTION_randomMAX do 
		{
			_sSelect = floor(random _sCount);
			_item = LOOT_CONSTRUCTION select _sSelect;
			_crate addItemCargoGlobal [_item,(round(random 3))];
		};
	};
//============================================////============================================//
//"BACKPACKS" TYPE CRATE Loots...
//============================================////============================================//
	if (_type isEqualTo "BACKPACKS") then 
	{
		//============================================////============================================//
		//LOOT_BACKPACKS
		_scount = count LOOT_BACKPACKS;
		for "_x" from 1 to _BACKPACKS_randomMAX do 
		{
			_sSelect = floor(random _sCount);
			_item = LOOT_BACKPACKS select _sSelect;
			_crate addBackpackCargoGlobal [_item,(round(random 3))];
		};
	};
//============================================////============================================//
//"DDR" TYPE CRATE Loots...
//============================================////============================================//
	if (_type isEqualTo "DDR") then 
	{
		//LOOT_DDR
		_scount = count LOOT_DDR;
		for "_x" from 1 to _DDR_randomMAX do 
		{
			_sSelect = floor(random _sCount);
			_item = LOOT_DDR select _sSelect;
			_crate addItemCargoGlobal [_item,(round(random 3))];
		};
	};
//============================================////============================================//
//"TOOLS" TYPE CRATE Loots...
//============================================////============================================//
	if (_type isEqualTo "TOOLS") then 
	{
		//LOOT_TOOLS
		_scount = count LOOT_TOOLS;
		for "_x" from 1 to _TOOLS_randomMAX do 
		{
			_sSelect = floor(random _sCount);
			_item = LOOT_TOOLS select _sSelect;
			_crate addItemCargoGlobal [_item,(round(random 3))];
		};
	};
//============================================////============================================//
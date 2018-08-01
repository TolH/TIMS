/*
	//CRATE LOOT RATE/QUALITY CAN BE:
		LOW_Loot_Setup;
		NORMAL_Loot_Setup;
		HIGH_Loot_Setup;
	//CRATE LOOT TYPE CAN BE:
		"WEAPONS"
		"MEDIC"
		"CONSTRUCTION"
	//EXEMPLE HOW TO USE:
		[_crate1,"WEAPONS"] ExecVM LOW_Loot_Setup;
		[_crate1,"MEDIC"] ExecVM NORMAL_Loot_Setup;
		[_crate1,"CONSTRUCTION"] ExecVM HIGH_Loot_Setup;
*/
_crate = _this select 0;
_type = _this select 1;

//============================================////============================================//
//"WEAPONS" TYPE CRATE Loots...
//============================================////============================================//
	if (_type == "WEAPONS") then 
	{
		//============================================////============================================//
		//LOOT_SNIPER
		_scount = count LOOT_SNIPER;
		for "_x" from 0 to 1 do 
		{
			_sSelect = floor(random _sCount);
			_item = LOOT_SNIPER select _sSelect;
			_crate addWeaponCargoGlobal [_item,1];
			_ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
			if (count _ammo > 0) then 
			{
				_crate addMagazineCargoGlobal [(_ammo select 0),(round(random 4))];
			};
		};
		//============================================////============================================//
		//LOOT_ASSAULT_RIFLES
		_scount = count LOOT_ASSAULT_RIFLES;
		for "_x" from 0 to 3 do 
		{
			_sSelect = floor(random _sCount);
			_item = LOOT_ASSAULT_RIFLES select _sSelect;
			_crate addWeaponCargoGlobal [_item,1];
			_ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
			if (count _ammo > 0) then {
				_crate addMagazineCargoGlobal [(_ammo select 0),(round(random 4))];
			};
		};
		//============================================////============================================//
		//LOOT_SHOTGUN
		_scount = count LOOT_SHOTGUN;
		for "_x" from 0 to 0 do 
		{
			_sSelect = floor(random _sCount);
			_item = LOOT_SHOTGUN select _sSelect;
			_crate addWeaponCargoGlobal [_item,1];
			_ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
			if (count _ammo > 0) then {
				_crate addMagazineCargoGlobal [(_ammo select 0),(round(random 2))];
			};
		};
		//============================================////============================================//
		//LOOT_LIGHT_MACHINE_GUNS
		_scount = count LOOT_LIGHT_MACHINE_GUNS;
		for "_x" from 0 to 0 do 
		{
			_sSelect = floor(random _sCount);
			_item = LOOT_LIGHT_MACHINE_GUNS select _sSelect;
			_crate addWeaponCargoGlobal [_item,1];
			_ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
			if (count _ammo > 0) then 
			{
				_crate addMagazineCargoGlobal [(_ammo select 0),(round(random 1))];
			};
		};
		//============================================////============================================//
		//LOOT_SUB_MACHINE_GUNS
		_scount = count LOOT_SUB_MACHINE_GUNS;
		for "_x" from 0 to 1 do 
		{
			_sSelect = floor(random _sCount);
			_item = LOOT_SUB_MACHINE_GUNS select _sSelect;
			_crate addWeaponCargoGlobal [_item,1];
			_ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
			if (count _ammo > 0) then 
			{
				_crate addMagazineCargoGlobal [(_ammo select 0),(round(random 4))];
			};
		};
		//============================================////============================================//
		//LOOT_PISTOLS
		_scount = count LOOT_PISTOLS;
		for "_x" from 0 to 3 do 
		{
			_sSelect = floor(random _sCount);
			_item = LOOT_PISTOLS select _sSelect;
			_crate addWeaponCargoGlobal [_item,1];
			_ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
			if (count _ammo > 0) then 
			{
				_crate addMagazineCargoGlobal [(_ammo select 0),(round(random 4))];
			};
		};
		//============================================////============================================//
		//LOOT_EXPLOSIVES
		_scount = count LOOT_EXPLOSIVES;
		for "_x" from 0 to 0 do 
		{
			_sSelect = floor(random _sCount);
			_item = LOOT_EXPLOSIVES select _sSelect;
			_crate addMagazineCargoGlobal [_item,(round(random 2))];
		};
	};

//============================================////============================================//
//"MEDIC" TYPE CRATE Loots...
//============================================////============================================//
	if (_type == "MEDIC") then 
	{
		//============================================////============================================//
		//LOOT_FOOD
		_scount = count LOOT_FOOD;
		for "_x" from 0 to 3 do 
		{
			_sSelect = floor(random _sCount);
			_item = LOOT_FOOD select _sSelect;
			_crate addItemCargoGlobal [_item,(round(random 4))];
		};
		//============================================////============================================//
		//LOOT_DRINKS
		_scount = count LOOT_DRINKS;
		for "_x" from 0 to 3 do 
		{
			_sSelect = floor(random _sCount);
			_item = LOOT_DRINKS select _sSelect;
			_crate addItemCargoGlobal [_item,(round(random 4))];
		};
		//============================================////============================================//
		//LOOT_FIRST_AID
		_scount = count LOOT_FIRST_AID;
		for "_x" from 0 to 2 do 
		{
			_sSelect = floor(random _sCount);
			_item = LOOT_FIRST_AID select _sSelect;
			_crate addItemCargoGlobal [_item,(round(random 2))];
		};
	};

//============================================////============================================//
//"CONSTRUCTION" TYPE CRATE Loots...
//============================================////============================================//
	if (_type == "CONSTRUCTION") then 
	{
		//============================================////============================================//
		//LOOT_CONSTRUCTION
		_scount = count LOOT_CONSTRUCTION;
		for "_x" from 0 to 6 do 
		{
			_sSelect = floor(random _sCount);
			_item = LOOT_CONSTRUCTION select _sSelect;
			_crate addItemCargoGlobal [_item,(round(random 4))];
		};
	};


/*
	Vehicle, uniform & backpack Paintshop
	By Halv
	
	Copyright (C) 2015  Halvhjearne > README.md
	
	Halv's Paintshop eXpanded 4 Exile 
	by DirtySanchez
	DonkeyPunch.INFO
	https://discord.me/eXpoch
*/

if(isServer)then{

	HALV_server_savetextures = {
		private ["_vehicle","_skinTextures","_vehicleID","_sessionId"];
		_sessionId = _this select 0;
		_vehicle = _this select 1;
		if (!isNull _vehicle) then {
			_vehicleID = _vehicle getVariable ["ExileDatabaseID",0];
			_skinTextures = getObjectTextures _vehicle;
			format["updateVehicleSkin:%1:%2", _skinTextures, _vehicleID] call ExileServer_system_database_query_fireAndForget;
			[_sessionId, "toastRequest", ["SuccessTitleAndText", ["Vehicle Skin Saved!", "Halv's Paintshop eXpanded 4 Exile by DirtySanchez"]]] call ExileServer_system_network_send_to;
		};
	};
	"HALV_vehsavetex" addPublicVariableEventHandler {(_this select 1) call HALV_server_savetextures;};

	HALV_server_saveBPtextures = {
		private ["_construction","_databaseID","_textures","_sessionId"];
		_sessionId = _this select 0;
		_construction = _this select 1;
		if (!isNull _construction) then {
			_databaseID = _construction getVariable ["ExileDatabaseID",0];
			_textures = getObjectTextures _construction;
			format ["updateBasePaint:%1:%2",_textures,_databaseID] call ExileServer_system_database_query_fireAndForget;
			[_sessionId, "toastRequest", ["SuccessTitleAndText", ["BasePart Skin Saved!", "Halv's Paintshop eXpanded 4 Exile by DirtySanchez"]]] call ExileServer_system_network_send_to;
		};
	};
	"HALV_basepartsavetex" addPublicVariableEventHandler {(_this select 1) call HALV_server_saveBPtextures;};
};

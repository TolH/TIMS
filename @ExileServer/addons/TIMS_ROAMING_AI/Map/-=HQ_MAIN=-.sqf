//============================================////============================================//
	//CREATE PLAYER MAIN-BASE AREA FOR INVASION
		//POSITION
			private _SafeVehicleSpawnPos = [26695.096,24800.029,17.30];				//SafeVehicleSpawnPos
			private _PlayerMainHQrespawnPos = [26742.754,24617.191,20.50];			//RESPAWN MAIN
			private _PlayerSecondaryHQrespawnPos = [26721.063,24644.447,26];		//RESPAWN SECONDARY
			private _PlayerSecondaryHQrespawnCarrierPos = [26402.7,25156.7,26.20];	//RESPAWN SECONDARY ON CARRIER
			private _PlayerHeliPos2 = [26417.27,25169.805,26.15];			//HELI "RHS_AH1Z"
			private _PlayerJetPos1 = [26484.914,25142.453,26];				//JET "I_Plane_Fighter_03_dynamicLoadout_F"
			private _PlayerJetPos2 = [26460.045,25142.191,26];				//JET "I_Plane_Fighter_03_dynamicLoadout_F"
			private _PlayerJetPos3 = [26372.518,25088.988,26];				//JET "ffaa_ar_harrier"
			//MAINHQ DEFENCE
			private _MainHQ_Defence_AA_Pos1 = [26866.891,24516.275,26.92];	//AA "RHS_ZU23_VMF"
			private _MainHQ_Defence_AA_Pos2 = [26859.432,24507.473,27.11];	//AA "RHS_ZU23_VMF"
		//PUT RESPAWN MARKER TO ACTIVATE HQ RESPAWN
		    private _PlayerMainHQrespawnMrk = createMarker ["PlayerMainHQrespawnMrk", _PlayerMainHQrespawnPos];
			"PlayerMainHQrespawnMrk" setMarkerText "USSFreedom";
			"PlayerMainHQrespawnMrk" setMarkerType "ExileSpawnZone";
			"PlayerMainHQrespawnMrk" setMarkerColor "ColorGUER";
		//DELETE A TOWER FROM EXILE NOT WANTED TO REPLACE BY SPAWN ZONE
			private _UnwantedTower = getMarkerPos "PlayerMainHQrespawnMrk" nearestObject "Land_Airport_01_controlTower_F";
			uiSleep 0.5;
			deletevehicle _UnwantedTower;
			uiSleep 0.5;
		//SPAWN MAINHQ DEFENCE
			private _GrpSideMAINHQ_AA1 = createGroup resistance;
			private _GrpSideMAINHQ_AA2 = createGroup resistance;
			//AA DEFENCE #1
				private _MainHQ_Defence_AA1 = "RHS_ZU23_VMF" createVehicle _MainHQ_Defence_AA_Pos1;
				_MainHQ_Defence_AA1 allowDamage false;
				uiSleep 0.5;
				_MainHQ_Defence_AA1 setDir 230;
				uiSleep 1;
					//CREATE CREW FOR VEHICLE #1
					createVehicleCrew _MainHQ_Defence_AA1;
					{
						[_x] joinSilent _GrpSideMAINHQ_AA1;
						_x allowDamage false;
						_x setSkill 1;
					} forEach crew _MainHQ_Defence_AA1;
				_MainHQ_Defence_AA1 setvehicleammo 1;
				_MainHQ_Defence_AA1 addEventHandler ["Fired",{[_this select 0,getNumber (configFile/"CfgAmmo"/(_this select 4)/"explosive")] spawn {if (_this select 1==1) then {uiSleep 60};_this select 0 setVehicleAmmo 1}}];
				_MainHQ_Defence_AA1 setVehicleLock "LOCKED";
			//AA DEFENCE #2
				private _MainHQ_Defence_AA2 = "RHS_ZU23_VMF" createVehicle _MainHQ_Defence_AA_Pos2;
				_MainHQ_Defence_AA2 allowDamage false;
				uiSleep 0.5;
				_MainHQ_Defence_AA2 setDir 40;
				uiSleep 1;
					//CREATE CREW FOR VEHICLE #2
					createVehicleCrew _MainHQ_Defence_AA2;
					{
						[_x] joinSilent _GrpSideMAINHQ_AA2;
						_x allowDamage false;
						_x setSkill 1;
					} forEach crew _MainHQ_Defence_AA2;
				_MainHQ_Defence_AA2 setvehicleammo 1;
				_MainHQ_Defence_AA2 addEventHandler ["Fired",{[_this select 0,getNumber (configFile/"CfgAmmo"/(_this select 4)/"explosive")] spawn {if (_this select 1==1) then {uiSleep 60};_this select 0 setVehicleAmmo 1}}];
				_MainHQ_Defence_AA2 setVehicleLock "LOCKED";
		//SPAWN MISSION VEHICLES FOR PLAYER TO USE FOR FREE
			//HELI
				private _PlayerHeli_2 = "RHS_AH1Z" createVehicle _SafeVehicleSpawnPos;
				_PlayerHeli_2 allowDamage false;
				uiSleep 0.5;
				_PlayerHeli_2 setPosWorld _PlayerHeliPos2;
				_PlayerHeli_2 setDir 230;
				uiSleep 3;
				_PlayerHeli_2 allowDamage true;
			//JETS
				private _PlayerJet_1 = "I_Plane_Fighter_03_dynamicLoadout_F" createVehicle _SafeVehicleSpawnPos;
				_PlayerJet_1 allowDamage false;
				uiSleep 0.5;
				_PlayerJet_1 setPosWorld _PlayerJetPos1;
				_PlayerJet_1 setDir 230;
				uiSleep 3;
				_PlayerJet_1 allowDamage true;
				private _PlayerJet_2 = "I_Plane_Fighter_03_dynamicLoadout_F" createVehicle _SafeVehicleSpawnPos;
				_PlayerJet_2 allowDamage false;
				uiSleep 0.5;
				_PlayerJet_2 setPosWorld _PlayerJetPos2;
				_PlayerJet_2 setDir 226;
				uiSleep 3;
				_PlayerJet_2 allowDamage true;
				private _PlayerJet_3 = "ffaa_ar_harrier" createVehicle _SafeVehicleSpawnPos;
				_PlayerJet_3 allowDamage false;
				uiSleep 0.5;
				_PlayerJet_3 setPosWorld _PlayerJetPos3;
				_PlayerJet_3 setDir 228;
				uiSleep 3;
				_PlayerJet_3 allowDamage true;
			private _ClearVehicles = [_PlayerHeli_2,_PlayerJet_1,_PlayerJet_2,_PlayerJet_3];
			{
				clearBackpackCargoGlobal _x;
				clearMagazineCargoGlobal _x;
				clearWeaponCargoGlobal _x;
				clearItemCargoGlobal _x;
				uiSleep 0.1;
			} forEach _ClearVehicles;
		//VEHICLE MARKERS IF ENABLED FROM CONFIG
			if (PLAYER_VEHICLE_TRACKER isEqualTo 1) then
			{
				//RHS_AH1Z
				private _PlayerHeliMrk2 = createMarker ["PHELI2", getPos _PlayerHeli_2];
				"PHELI2" setMarkerSize [0.70,0.70];
				"PHELI2" setMarkerColor "ColorGUER";
				"PHELI2" setMarkerType "b_plane";
				"PHELI2" setMarkerText "";
				[_PlayerHeli_2, "PHELI2"] execVM "TIMS_ROAMING_AI\Roaming_AI\Player_Vehicle_Marker.sqf";
				uiSleep 0.25;
				//I_Plane_Fighter_03_dynamicLoadout_F
				private _PlayerJetMrk1 = createMarker ["PJET1", getPos _PlayerJet_1];
				"PJET1" setMarkerSize [0.75,0.75];
				"PJET1" setMarkerColor "ColorGUER";
				"PJET1" setMarkerType "c_plane";
				"PJET1" setMarkerText "";
				[_PlayerJet_1, "PJET1"] execVM "TIMS_ROAMING_AI\Roaming_AI\Player_Vehicle_Marker.sqf";
				uiSleep 0.25;
				//I_Plane_Fighter_03_dynamicLoadout_F
				private _PlayerJetMrk2 = createMarker ["PJET2", getPos _PlayerJet_2];
				"PJET2" setMarkerSize [0.75,0.75];
				"PJET2" setMarkerColor "ColorGUER";
				"PJET2" setMarkerType "c_plane";
				"PJET2" setMarkerText "";
				[_PlayerJet_2, "PJET2"] execVM "TIMS_ROAMING_AI\Roaming_AI\Player_Vehicle_Marker.sqf";
				uiSleep 0.25;
				//ffaa_ar_harrier
				private _PlayerJetMrk3 = createMarker ["PJET3", getPos _PlayerJet_3];
				"PJET3" setMarkerSize [0.75,0.75];
				"PJET3" setMarkerColor "ColorGUER";
				"PJET3" setMarkerType "c_plane";
				"PJET3" setMarkerText "";
				[_PlayerJet_3, "PJET3"] execVM "TIMS_ROAMING_AI\Roaming_AI\Player_Vehicle_Marker.sqf";
				uiSleep 0.25;
			};
		//AUTO RESPAWN SCRIPTS
			//HELI
				[_PlayerHeli_2, 5, 300, 0, "PHELI2", _SafeVehicleSpawnPos, _PlayerHeliPos2] execVM "TIMS_ROAMING_AI\Roaming_AI\vehicleRespawn.sqf";//RHS_AH1Z
				uiSleep 0.25;
			//JET
				[_PlayerJet_1, 5, 120, 0, "PJET1", _SafeVehicleSpawnPos, _PlayerJetPos1] execVM "TIMS_ROAMING_AI\Roaming_AI\vehicleRespawn.sqf";//I_Plane_Fighter_03_dynamicLoadout_F
				uiSleep 0.25;
				[_PlayerJet_2, 5, 120, 0, "PJET2", _SafeVehicleSpawnPos, _PlayerJetPos2] execVM "TIMS_ROAMING_AI\Roaming_AI\vehicleRespawn.sqf";//I_Plane_Fighter_03_dynamicLoadout_F
				uiSleep 0.25;
				[_PlayerJet_3, 5, 120, 0, "PJET3", _SafeVehicleSpawnPos, _PlayerJetPos3] execVM "TIMS_ROAMING_AI\Roaming_AI\vehicleRespawn.sqf";//ffaa_ar_harrier
				uiSleep 0.25;
		//
	//
HQALREADYSPAWNED = 1;
//============================================////============================================//
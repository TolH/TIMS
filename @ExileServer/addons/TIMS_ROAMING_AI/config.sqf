//============================================////============================================//
//=====================================/*-CONFIG START-*/=====================================//
//============================================////============================================//
//==================================//
	/*MISC*/
		START_FREE_VEHICLES_SPAWN	= 1;		// ENABLE MAINHQ AT SERVER START OR WAIT FOR INVASION TO SPAWN STUFF (1=Enable)
		PLAYER_VEHICLE_TRACKER		= 1;		// TRACK FREE VEHICLE WITH A MARKER ON THE MAP (1=Enabled)
//==================================//
	/*TIMS_MISSIONS*/
		TIMS_MISSION_ACTIVATED		= 1;		// ENABLE TIMS MISSION SYSTEM (1=Enabled)
		NEED_ONLINE_PLAYER_TIMS		= 1;		// START A MISSION ONLY IF THIS AMOUNT OF PLAYER ARE ONLINE (Default=1)
	/*CRATES_CONFIG*/
		CRATE_TYPE_TIMS				= "C_IDAP_CargoNet_01_supplies_F";	// DEFAULT = "Exile_Container_SupplyBox" FOR MOUNTING OPTION.
		CRATE_MONEY_TIMS			= 150000;							// RANDOM AMOUNT OF MONEY IN THE CRATE. THIS IS THE MAX AMOUNT TO HAVE IN A CRATE.
		CRATE_MASS_TIMS				= 100;								// CHANGE THE MASS OF THE CRATE. SET A HIGH AMOUNT AND VEHICLES WILL MOVE SLOWER.
//==================================//
	/*ROAMING_AI SELECTION*/
		AI_ROAMING_ACTIVATED		= 1;		//ENABLE ROAMING AI (default=0 Enabled)
		AI_BONUS_VR_HUNT			= 20;		//SPAWN A SPECIAL AI WORTH 1 MILLION WHEN PLAYER KILLED THIS AMOUNT OF AI (Default=50)
		AI_ROAMING_FLYING_MAX		= 6;		//MAX NUMBER OF FLYING VEHICLE ROAMING THE MAP
		AI_ROAMING_GROUND_MAX		= 9;		//MAX NUMBER OF GROUND VEHICLE ROAMING THE MAP
		AI_ROAMING_UNIT_ON_FOOT_MAX = 100;		//MAX NUMBER OF UNIT_ON_FOOT ROAMING THE MAP
		AI_ROAMING_FLYING_CHOICE	= 
			["RHS_UH1Y_d","RHS_Mi8mt_vdv","RHS_CH_47F","ffaa_nh90tth_armed","O_Heli_Light_02_dynamicLoadout_F",
			 "RHS_UH60M_d","rhs_uh1h_hidf_gunship","B_Heli_Transport_01_F","ffaa_famet_cougar_armed",
			 "B_Plane_CAS_01_dynamicLoadout_F","rhs_mig29sm_vmf","RHS_C130J"];
		AI_ROAMING_GROUND_CHOICE	= 
			["ffaa_et_vamtac_cardom","ffaa_et_lince_m2","O_G_Offroad_01_armed_F","B_G_Offroad_01_armed_F"];
			 /*AI_ROAMING_GROUND_CHOICE	= 
			["ffaa_et_vamtac_cardom","O_G_Offroad_01_armed_F","B_T_MBT_01_mlrs_F","I_LT_01_AA_F","O_MBT_04_command_F",
			 "O_LSV_02_armed_F","rhsusf_M1237_M2_usarmy_d","ffaa_et_rg31_samson","rhsusf_m1043_d_m2","B_LSV_01_armed_F",
			 "rhsgref_hidf_m1025_m2","I_APC_tracked_03_cannon_F","B_G_Offroad_01_armed_F","rhsgref_ins_gaz66_ap2",
			 "rhs_kamaz5350_msv","rhsusf_M1078A1R_SOV_M2_D_fmtv_socom","rhs_btr60_vdv","I_MRAP_03_hmg_F",
			 "rhsgref_ins_btr60","rhs_tigr_m_vmf","I_LT_01_cannon_F","I_C_Offroad_02_LMG_F","rhs_t80u",
			 "rhs_tigr_sts_3camo_msv","rhsgref_cdf_t80bv_tv","rhs_btr70_msv","rhs_btr60_vmf","ffaa_et_lince_m2",
			 "rhs_btr80_msv","B_APC_Wheeled_01_cannon_F","O_MRAP_02_hmg_F","O_Truck_03_transport_F",
			 "rhsusf_M977A4_BKIT_M2_usarmy_d"];*/
		AI_ROAMING_MEN_CHOICE		= 
			["O_sniper_F","O_spotter_F","O_SoldierU_GL_F","O_SoldierU_SL_F","O_sniper_F","O_spotter_F","O_recon_F","O_recon_JTAC_F","O_recon_LAT_F","O_recon_M_F","O_recon_TL_F","O_recon_exp_F",
			 "O_sniper_F","O_spotter_F","O_soldierU_AA_F","O_soldierU_AR_F","O_soldierU_AT_F","O_soldierU_A_F","O_soldierU_F","O_sniper_F","O_spotter_F",
			 "O_recon_F","O_recon_JTAC_F","O_recon_LAT_F","O_recon_M_F","O_recon_TL_F","O_recon_exp_F","O_sniper_F","O_spotter_F","O_soldierU_LAT_F","O_soldierU_M_F","O_soldierU_TL_F","O_soldierU_exp_F","O_soldierU_medic_F","O_sniper_F","O_spotter_F"];
	//ZAROS INVASION SELECTION
		/*TANK_AI_LIST 				= ["O_APC_Tracked_02_AA_F","I_Truck_02_MRL_F","I_LT_01_AA_F","O_MBT_04_command_F","B_T_MBT_01_mlrs_F","rhs_t72be_tv","ffaa_et_vamtac_cardom"];
		HELI_AI_LIST 				= ["O_Heli_Attack_02_F","O_Heli_Attack_02_black_F","RHS_MELB_AH6M"];
		HELI_TRANSPORT_AI_LIST 		= ["O_Heli_Transport_04_covered_F"];
		PLANE_AI_LIST 				= ["O_Plane_CAS_02_F","O_Plane_Fighter_02_Stealth_F","B_Plane_CAS_01_F"];
		PLANE_TRANSPORT_AI_LIST		= ["O_T_VTOL_02_infantry_dynamicLoadout_F"];
		BOAT_AI_LIST 				= ["O_T_Boat_Armed_01_hmg_F","rhsusf_mkvsoc"];*/
//==================================// 
	/*AI_OPTIONNAL CONFIGS*/
		AI_ROCKET_EQUIP_CHANCE		= 25;		// THE CHANCE IN % AI WILL SPAWN WITH A ROCKET LAUNCHER. (DEFAULT =25%).
		AI_MONEY_DROP				= 5000;		// RANDOM MAX AMOUNT OF MONEY IN THE AI INVENTORY.
		LOOT_TRACKER 				= 1;		// ENABLE OR DISABLE MOVING CRATE MARKER ON THE MAP. (Default 1=Enable).
//==================================// 
	/*AI_SKILLS CONFIGS*/
		//SET BETWEEN (0.0 TO 1.0 BEING MAX VALUE)
		AI_SKILLS_ROAMING_RND = [0.10, 0.11, 0.12, 0.13, 0.14, 0.15, 0.16, 0.17, 0.18, 0.19, 0.20, 0.21, 0.22, 0.23, 0.24, 0.25];
//==================================//
//============================================////============================================//
//======================================/*-CONFIG END-*/======================================//
//============================================////============================================//

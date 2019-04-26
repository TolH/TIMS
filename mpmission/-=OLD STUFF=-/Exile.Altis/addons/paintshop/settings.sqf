/*
	Vehicle & backpack Paintshop
	By Halv
	
	Copyright (C) 2015  Halvhjearne > README.md

	Halv's Paintshop eXpanded 4 Exile 
	by DirtySanchez
	DonkeyPunch.INFO
	https://discord.me/eXpoch
*/


//these are the classnames of buildings that will activate the paintshop for uniforms / back packs / vehicles
//Base Painting is based on your own territory and the action is built into exile code
//Vehicle Painting is based on _paintshopBuildings and the action is built into exile code
_paintshopbuildings = ["Land_CarService_F","Land_Repair_center", "SignAd_Sponsor_F"]; 

//add textures and preset colors here
_textures = [
	//Halv's Paintshop eXpanded 4 Exile by DirtySanchez
	
	// CAMO PATTERNS
	
	["TG-Camo_AAF_Digital","addons\paintshop\skins\TG-Camo_AAF_Digital.jpg"],
	["TG-Camo_ACU","addons\paintshop\skins\TG-Camo_ACU.jpg"],
	["TG-camo_4_2","addons\paintshop\skins\TG-camo_4_2.jpg"],
	["TG-Camo_CadPat","addons\paintshop\skins\TG-Camo_CadPat.jpg"],
	["TG-camo_FlecktarnB","addons\paintshop\skins\TG-camo_FlecktarnB.jpg"],
	["TG-camo_GUXDRku","addons\paintshop\skins\TG-camo_GUXDRku.jpg"],
	["TG5","addons\paintshop\skins\TG5.jpg"],
	["TG7","addons\paintshop\skins\TG7.jpg"],
	["TG-camo_marpatvariant1_preview","addons\paintshop\skins\TG-camo_marpatvariant1_preview.jpg"],
	["TG3","addons\paintshop\skins\TG3.jpg"],
	["TG-Camo_WGermany_ZeltTarnmuster_Autumn","addons\paintshop\skins\TG-Camo_WGermany_ZeltTarnmuster_Autumn.jpg"],
	["TG-Camo_Vegetato_Desert_01","addons\paintshop\skins\TG-Camo_Vegetato_Desert_01.jpg"],
	["TG-Camo_DPM_Woodland2","addons\paintshop\skins\TG-Camo_DPM_Woodland2.jpg"],
	["TG4","addons\paintshop\skins\TG4.jpg"],
	["TG-camo_multi_tropic","addons\paintshop\skins\TG-camo_multi_tropic.jpg"],
	["TG-Camo_Germany_Flektarn_BW","addons\paintshop\skins\TG-Camo_Germany_Flektarn_BW.jpg"],
	["TG17","addons\paintshop\skins\TG17.jpg"],
	["TG-camo_Xo8vp4q","addons\paintshop\skins\TG-camo_Xo8vp4q.jpg"],
	["TG-Camo_Jungle_Flora","addons\paintshop\skins\TG-Camo_Jungle_Flora.jpg"],
	["TG-Camo_Marpat_Urban","addons\paintshop\skins\TG-Camo_Marpat_Urban.jpg"],
	["TG6","addons\paintshop\skins\TG6.jpg"],
	["TG-Camo_TTsKO_5","addons\paintshop\skins\TG-Camo_TTsKO_5.jpg"],
	["TG-Camo_Sweden_M90","addons\paintshop\skins\TG-Camo_Sweden_M90.jpg"],
	["TG-Camo_Sweden_M90_Night","addons\paintshop\skins\TG-Camo_Sweden_M90_Night.jpg"],
	["TG18","addons\paintshop\skins\TG18.jpg"],
	["TG8","addons\paintshop\skins\TG8.jpg"],
	["TG-Camo_Norway_M98_Woodland","addons\paintshop\skins\TG-Camo_Norway_M98_Woodland.jpg"],
	["TG9","addons\paintshop\skins\TG9.jpg"],
	["TG12","addons\paintshop\skins\TG12.jpg"],
	["TG13","addons\paintshop\skins\TG13.jpg"],
	["TG10","addons\paintshop\skins\TG10.jpg"],
	["TG11","addons\paintshop\skins\TG11.jpg"],
	["TG-camo_yoHjJww","addons\paintshop\skins\TG-camo_yoHjJww.jpg"],
	["TG-camo_Japanese JGSDF","addons\paintshop\skins\TG-camo_Japanese JGSDF.jpg"],
	["TG2","addons\paintshop\skins\TG2.jpg"],
	["TG15","addons\paintshop\skins\TG15.jpg"],
	["TG16","addons\paintshop\skins\TG16.jpg"],
	["TG-Camo_USCM_Armor","addons\paintshop\skins\TG-Camo_USCM_Armor.jpg"],
	["TG1","addons\paintshop\skins\TG1.jpg"],
	["TG-Camo_WGermany_ZeltTarnmuster_Spring","addons\paintshop\skins\TG-Camo_WGermany_ZeltTarnmuster_Spring.jpg"],
	["TG14","addons\paintshop\skins\TG14.jpg"],
	["TG19","addons\paintshop\skins\TG19.jpg"],
	["TG-Camo_Soldier2000","addons\paintshop\skins\TG-Camo_Soldier2000.jpg"],
	["TG21","addons\paintshop\skins\TG21.jpg"],
	["TG-camoBW4","addons\paintshop\skins\TG-camoBW4.jpg"],
	["TG-camoBW3","addons\paintshop\skins\TG-camoBW3.jpg"],
	["TG-camoBW2","addons\paintshop\skins\TG-camoBW2.jpg"],
	["TG20","addons\paintshop\skins\TG20.jpg"],
	["TG-camo_Opacity_50test","addons\paintshop\Opacity_50test.paa"],
	
	
	
	//SOLID MILITARY COLOURS
	
	["TG-charcoal","addons\paintshop\skins\TG-charcoal.jpg"],
	["TG-coyote","addons\paintshop\skins\TG-coyote.jpg"],
	["TG-grey","addons\paintshop\skins\TG-grey.jpg"],
	["TG-khaki","addons\paintshop\skins\TG-khaki.jpg"],
	["TG-olivedrab","addons\paintshop\skins\TG-olivedrab.jpg"],
	
	//WOOD FLOOR
	
	["TG-wood1","addons\paintshop\skins\TG-wood1.jpg"],
	["TG-wood2","addons\paintshop\skins\TG-wood2.jpg"],
	["TG-wood3","addons\paintshop\skins\TG-wood3.jpg"],
	["TG-wood4","addons\paintshop\skins\TG-wood4.jpg"],
	["TG-wood5","addons\paintshop\skins\TG-wood5.jpg"],
	["TG-wood6","addons\paintshop\skins\TG-wood6.jpg"],
	["TG-wood7","addons\paintshop\skins\TG-wood7.jpg"],
	

	//BRICK WALLS
	
	["TG-brick1","addons\paintshop\skins\TG-brick1.jpg"],
	["TG-brick2","addons\paintshop\skins\TG-brick2.jpg"],
	["TG-brick3","addons\paintshop\skins\TG-brick3.jpg"],
	["TG-brick4","addons\paintshop\skins\TG-brick4.jpg"],
	["TG-transparent","addons\paintshop\skins\TG-trans.jpg"],
	["TG-brick5","addons\paintshop\skins\TG-brick5.jpg"],
	["TG-brick6","addons\paintshop\skins\TG-brick6.jpg"],
	["TG-brick7","addons\paintshop\skins\TG-brick7.jpg"],
	["TG-rust2","addons\paintshop\skins\TG-rust2.jpg"],
	
	["TG-brick8","addons\paintshop\skins\TG-brick8.jpg"],
	["TG-brick9","addons\paintshop\skins\TG-brick9.jpg"],
	
	["Exile","addons\paintshop\skins\exile1.jpg"],
	
	//preset colors
	
	["White","#(argb,8,8,3)color(1,1,1,1)"],
	["Silver","#(argb,8,8,3)color(0.75,0.75,0.75,1)"],
	["Gray","#(argb,8,8,3)color(0.5,0.5,0.5,1)"],
	["Black","#(argb,8,8,3)color(0,0,0,0.6)"],
	["Red","#(argb,8,8,3)color(1,0,0,1)"],
	["Maroon","#(argb,8,8,3)color(0.5,0,0,0.7)"],
	["Yellow","#(argb,8,8,3)color(1,1,0,1)"],
	["Lime","#(argb,8,8,3)color(0,1,0,1)"],
	["Green","#(argb,8,8,3)color(0,0.5,0,1)"],
	["Aqua","#(argb,8,8,3)color(0,1,1,1)"],
	["Teal","#(argb,8,8,3)color(0,0.5,0.5,1)"],
	["Blue","#(argb,8,8,3)color(0,0,1,1)"],
	["Navy","#(argb,8,8,3)color(0,0,0.5,1)"],
	["Fuchsia","#(argb,8,8,3)color(1,0,1,1)"],
	["Purple","#(argb,8,8,3)color(0.5,0,0.5,1)"],
	["Pink","#(argb,8,8,3)color(1,0.75,0.84,0.2)"],
	["Tan","#(argb,8,8,3)color(0.8,0.7,0.5,0.2)"]
	

	
	
	
	
];

/*
// Use these below as examples of how to add other textures from MODS or from the mission file pbo :)
//Epoch
	//Epoch["Bear","\x\addons\a3_epoch_assets\textures\bear\bear_co.paa"],
	//Epoch["Candy","\x\addons\a3_epoch_assets\textures\candy\candy_ca.paa"],
	//Epoch["Circuit","\x\addons\a3_epoch_assets\textures\circuit\circuit_co.paa"],
	//Epoch["Concrete","\x\addons\a3_epoch_assets\textures\concrete_ca.paa"],
	//Epoch["Wood","\x\addons\a3_epoch_assets\textures\wood_co.paa"],
	//Epoch["Supply crate","\x\addons\a3_epoch_assets_1\textures\supply_crate_co.paa"],
	//Epoch["Carry Tent","\x\addons\a3_epoch_assets_3\carnival\carnyTent_co.paa"],
//custom textures (have to be in your mission pbo)
	//custom["Linux","trader\trader.jpg"],
	//custom["DK Flag","custom\dkflag.jpg"],
	//custom["Load Screen","custom\loadscreen.jpg"],
	//custom["Problem Solving","custom\problemsolving.jpg"],
	//custom["Union Jack","custom\unionjack.jpg"],
	//custom["Carbon","custom\carbon.jpg"],
	//custom["Stars and Bars","custom\confederate.jpg"],
	//custom["Leopard skin","custom\leopard.jpg"],
	//custom["Stars and Stripes","custom\murica.jpg"],
	//custom["Rainbow","custom\rainbow.jpg"],
	//custom["Shark Teeths","custom\shark.jpg"],
	//custom["Camo Light Green","custom\lightgreen.jpg"]
//default arma 3 textures
	["Debriefing background","\a3\Ui_f\data\gui\cfg\Debriefing\debriefingbackground_co.paa"],
	["CommunityGuide background 1","\a3\Ui_f\data\gui\cfg\CommunityGuide\airassault_co.paa"],
	["CommunityGuide background 2","\a3\Ui_f\data\gui\cfg\CommunityGuide\basicinfantrycombat_co.paa"],
	["CommunityGuide background 3","\a3\Ui_f\data\gui\cfg\CommunityGuide\combinedarms_co.paa"],
	["CommunityGuide background 4","\a3\Ui_f\data\gui\cfg\CommunityGuide\groundvehiclecrew_co.paa"],
	["CommunityGuide background 5","\a3\Ui_f\data\gui\cfg\CommunityGuide\guerrillawarfare_co.paa"],
	["CommunityGuide background 6","\a3\Ui_f\data\gui\cfg\CommunityGuide\helicopters_co.paa"],
	["CommunityGuide background 7","\a3\Ui_f\data\gui\cfg\CommunityGuide\introduction_co.paa"],
	["CommunityGuide background 8","\a3\Ui_f\data\gui\cfg\CommunityGuide\sniperslaunchers_co.paa"],
	["CommunityGuide background 9","\a3\Ui_f\data\gui\cfg\CommunityGuide\zeus_co.paa"],
	["LoadingScreens 1","\a3\Ui_f\data\gui\cfg\LoadingScreens\gc_wallpaper_06_co.paa"],
	["LoadingScreens 2","\a3\Ui_f\data\gui\cfg\LoadingScreens\gc_wallpaper_07_co.paa"],
	["LoadingScreens 3","\a3\Ui_f\data\gui\cfg\LoadingScreens\gc_wallpaper_10_co.paa"],
	["LoadingScreens 4","\a3\Ui_f\data\gui\cfg\LoadingScreens\gc_wallpaper_14_co.paa"],
	["LoadingScreens 5","\a3\Ui_f\data\gui\cfg\LoadingScreens\gc_wallpaper_16_co.paa"],
	["LoadingScreens 6","\a3\Ui_f\data\gui\cfg\LoadingScreens\gc_wallpaper_17_co.paa"],
	["LoadingScreens 7","\a3\Ui_f\data\gui\cfg\LoadingScreens\gc_wallpaper_18_co.paa"],
	["LoadingScreens 8","\a3\Ui_f\data\gui\cfg\LoadingScreens\loading_01_co.paa"],
	["Bootcamp Background","\a3\Ui_f\data\gui\Rsc\RscDisplayBootcampMsgBox\bootcampmsgbox_background_ca.paa"],
	["Workshop defaultimage","\a3\Ui_f\data\gui\Rsc\RscDisplayPublishMission\steamworksdefaultimage_co.paa"],
	["WelcomeScreens 1","\a3\Ui_f\data\gui\Rsc\RscDisplayWelcome\welcome1_ca.paa"],
	["WelcomeScreens 2","\a3\Ui_f\data\gui\Rsc\RscDisplayWelcome\welcome2_ca.paa"],
	["WelcomeScreens 3","\a3\Ui_f\data\gui\Rsc\RscDisplayWelcome\welcome3_ca.paa"],
	["WelcomeScreens 4","\a3\Ui_f\data\gui\Rsc\RscDisplayWelcome\welcome4_ca.paa"],
//karts pics
	["Karts Content","\a3\data_f_kart\images\karts_contentbrowserpicture_co.paa"],
	["Karts illustration 1","\a3\data_f_kart\images\karts_illustration_01_ca.paa"],
	["Karts illustration 2","\a3\data_f_kart\images\karts_illustration_02_ca.paa"],
	["Karts illustration 3","\a3\data_f_kart\images\karts_illustration_03_ca.paa"],
	["Karts illustration 4","\a3\data_f_kart\images\karts_illustration_04_ca.paa"],
	["Karts illustration 5","\a3\data_f_kart\images\karts_illustration_05_ca.paa"],
	["Karts illustration 6","\a3\data_f_kart\images\karts_illustration_06_ca.paa"],
	["Karts Overview","\a3\data_f_kart\images\karts_overviewpicture_co.paa"],
	["Karts Flag 1","\a3\data_f_kart\Flags\flag_bluking1_co.paa"],
	["Karts Flag 2","\a3\data_f_kart\Flags\flag_bluking2_co.paa"],
	["Karts Flag 3","\a3\data_f_kart\Flags\flag_fuel1_co.paa"],
	["Karts Flag 4","\a3\data_f_kart\Flags\flag_fuel2_co.paa"],
	["Karts Flag 5","\a3\data_f_kart\Flags\flag_koke1_co.paa"],
	["Karts Flag 6","\a3\data_f_kart\Flags\flag_koke2_co.paa"],
	["Karts Flag 7","\a3\data_f_kart\Flags\flag_redburger_co.paa"],
	["Karts Flag 8","\a3\data_f_kart\Flags\flag_redstone_co.paa"],
	["Karts Flag 9","\a3\data_f_kart\Flags\flag_suatmm_co.paa"],

//other
	["Heli Content","\a3\data_f_heli\images\heli_overviewpicture_co.paa"],
*/
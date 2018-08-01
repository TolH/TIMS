// **********************************************************************************************************
// * This project is licensed under Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0) 
// * https://creativecommons.org/licenses/by-sa/4.0/
// **********************************************************************************************************
//	@file Name: modChecker.sqf
//	@file Author: NRZ7 (www.standarol.com)
//	@description: This script check the mods loaded by the client. If any mod is not loaded, pop's a screen with detailed information and clickable community links (modCheckerDisplay.sqf).
//					You can configure requiered addons (error 99) or optional addons (error 1). If any required mod fails, the client load "You Loose" screen after close the dialog.
//			

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// DO NOT TOUCH UNDER THIS LINE IF DON'T KNOW WHAT ARE YOU DOING
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		
errorLevel = 0;

#include "..\modConfig.hpp"	
	
if (errorLevel > 0) then {
	warnMessage =  "<t color='#ff0000' size='1.3' shadow='1' shadowColor='#000000' align='center'>Some is WRONG with your MODS</t><br/>";
	} else {
	warnMessage = "<t color='#2fd402' size='1.3' shadow='1' shadowColor='#000000' align='center'>All MODS are FINE</t><br/>";
	};
	
if ((errorLevel == 0) && (firstCheck == 0)) then {
	firstCheck = 1 // Do nothing
	} else {
	execVM "addons\modChecker\init\modCheckerDisplay.sqf"
	};

// execVM "addons\modChecker\init\modCheckerDisplay.sqf"



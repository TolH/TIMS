// **********************************************************************************************************
// * This project is licensed under Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0) 
// * https://creativecommons.org/licenses/by-sa/4.0/
// **********************************************************************************************************
//	@file Name: xm8modChecker.sqf
//	@file Author: jmayr2000 and NRZ7 (www.standarol.com)

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// DO NOT TOUCH UNDER THIS LINE IF DON'T KNOW WHAT ARE YOU DOING
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
errorLevel = 0; // Do not touch. Set errors to 0 before run modChecker.sqf

#include "..\..\..\..\addons\modChecker\modConfig.hpp"
	
if (errorLevel > 0) then {
	warnMessage =  "<t color='#ff0000' size='1.3' shadow='1' shadowColor='#000000' align='center'>Some is WRONG with your MODS</t><br/>"; // General error message
	} else {
	warnMessage = "<t color='#2fd402' size='1.3' shadow='1' shadowColor='#000000' align='center'>All MODS are FINE</t><br/>"; // All mods are loaded message
	};

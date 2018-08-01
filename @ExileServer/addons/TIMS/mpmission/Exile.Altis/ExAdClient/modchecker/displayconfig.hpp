// **********************************************************************************************************
// * This project is licensed under Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0) 
// * https://creativecommons.org/licenses/by-sa/4.0/
// **********************************************************************************************************
//  @file Name: modmodCheckerDisplay.sqf
//  @file Author: NRZ7 (www.standarol.com) and Repentz
//  @description: This script is a UI launched by modmodChecker.sqf. If any mod is not loaded, pop's a screen with detailed information and clickable community links (modmodCheckerDisplay.sqf).
//                  You can configure custom messages and links to your community guides.


/////////////////////////////////////////////////////////////////////////////////////////////
//                          DISPLAY HEADER
/////////////////////////////////////////////////////////////////////////////////////////////

_message = "";
_message = _message + "<t align='center' size='2' shadow='0'></t><br />";
_message = _message + "<t align='center' size='2' shadow='0'>Welcome to Mod modChecker</t><br />";
_message = _message + "<t align='center'>______________________________________________________________________________________<br /><br />";
_message = _message + warnMessage;
_message = _message + "<t align='center'><br />";


/////////////////////////////////////////////////////////////////////////////////////////////
//                          MOD CONFIG PART HERE
// Remember to add-delete-modify the same mod variable names used in modmodCheckerConfig.hpp
/////////////////////////////////////////////////////////////////////////////////////////////
_message = _message + modCheckExile;
_message = _message + modCheckBase;
//_message = _message + modCheckRyan;
_message = _message + modCheckWeapons;
_message = _message + modCheckVehicles;
_message = _message + modCheckUnits;
_message = _message + modCheckTerrain;
_message = _message + modCheckCBA;
//_message = _message + modCheckNimitz;
//_message = _message + modCheckVcom;
//_message = _message + modCheckDS;
//_message = _message + modCheckHouses;
_message = _message + modCheckBaBe;
//_message = _message + modCheck

/////////////////////////////////////////////////////////////////////////////////////////////
//              Custom message with community links - MODIFY HERE
/////////////////////////////////////////////////////////////////////////////////////////////

_message = _message + "<br />";
_message = _message + "If you get any error, please, read the following links<br /><br />";
_message = _message + "Download the mods from <a href= 'http://steamcommunity.com/sharedfiles/filedetails/?id=799227619' color='#ff9900'>Steam Workshop</a> Only click on Subscribe!<br />";
//_message = _message + "<a href= 'http://standarol.com/index.php/topic,674.0.html' color='#ff9900'>Guía de lanzamiento e instalación de mods [ESPAÑOL]</a> </t><br /><br />";
// _message = message + "Easy add more lines like this";
// _message = _message + "You can easy add <a href= 'http://www.example.com' color='#ff9900'>ANY LINK!</a> And unlimited number of lines.<br />";
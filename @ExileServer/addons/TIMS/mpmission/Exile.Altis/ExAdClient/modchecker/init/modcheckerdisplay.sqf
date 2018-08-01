// **********************************************************************************************************
// * This project is licensed under Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0) 
// * https://creativecommons.org/licenses/by-sa/4.0/
// **********************************************************************************************************
//	@file Name: modCheckerDisplay.sqf
//	@file Author: NRZ7 (www.standarol.com)
//	@description: This script is a UI launched by modchecker.sqf. If any mod is not loaded, pop's a screen with detailed information and clickable community links (modCheckerDisplay.sqf).
//					You can configure custom messages and links to your community guides.

/*
	Some code is from
	File: rules.sqf
	For exile edited by Repentz
	Link: http://www.exilemod.com/topic/10375-advanced-server-rules-for-xm8/
*/

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// DO NOT TOUCH UNDER THIS LINE IF DON'T KNOW WHAT ARE YOU DOING
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

if ((firstCheck == 0) && (errorLevel > 0)) then { player allowdamage false }; // God Mode ON to avoid die and close dialog only if ModCheckerDisplay is auto executed.

disableSerialization;
[
	"",
	0,
	0.2,
	10,
	0,
	0,
	8
] spawn BIS_fnc_dynamicText;

createDialog "RscDisplayWelcome";

_display = findDisplay 999999; // 999999 needed to whitelist in infistar if you are using this.
_text1 = _display displayCtrl 1100;
_buttonSpoiler = _display displayctrl 2400;
_textSpoiler = _display displayctrl 1101;
_text2 = _display displayCtrl 1102;

#include "..\displayConfig.hpp"

//Fill only the first text
_text1 ctrlSetStructuredText (parseText _message);

//Resize StructuredText component to display the scrollbar if needed
_positionText1 = ctrlPosition _text1;
_yText1 = _positionText1 select 1;
_hText1 = ctrlTextHeight _text1;
_text1 ctrlSetPosition [_positionText1 select 0, _yText1, _positionText1 select 2, _hText1];
_text1 ctrlcommit 0;
//Hide second text, spoiler text and button
_buttonSpoiler ctrlSetFade 1;
_buttonSpoiler ctrlCommit 0;
_buttonSpoiler ctrlEnable false;
_textSpoiler ctrlSetFade 1;
_textSpoiler ctrlCommit 0;
_text2 ctrlSetFade 1;
_text2 ctrlCommit 0;

//Waith until dialog is closed and kick the player  if a required mod is not loaded.
waitUntil {!dialog };
if (errorLevel > 90) then // non requiered addons have level 1. Requiered addons have error level 99.
	{
	endMission "LOSER"
	}
	else
	{
	firstCheck = 1; player allowDamage true // Disables God Mode protection and set mods as checked.
	};
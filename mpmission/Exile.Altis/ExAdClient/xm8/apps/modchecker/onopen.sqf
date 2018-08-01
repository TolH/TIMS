// **********************************************************************************************************
// * This project is licensed under Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0) 
// * https://creativecommons.org/licenses/by-sa/4.0/
// **********************************************************************************************************
//	@file Name: xm8modChecker.sqf
//	@file Author: jmayr2000 (from exilemod.com)

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// DO NOT TOUCH UNDER THIS LINE IF DON'T KNOW WHAT ARE YOU DOING
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

private["_display","_message","_strTxt","_pos"];

try
{
	_message = preprocessFileLineNumbers "ExAdClient\XM8\Apps\ModChecker\xm8modChecker.sqf";
	_message = _message select [(_message find "ExAdClient") + (count "ExAdClient\XM8\Apps\ModChecker\xm8modChecker.sqf") + 1];

	if(count _message == 0)exitWith{
		throw "No server info provided";
	};

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

#include "..\..\..\..\addons\modChecker\displayConfig.hpp"
	
	_display = uiNameSpace getVariable ["RscExileXM8", displayNull];
	if(isNull _display)exitWith{
		throw "XM8 not loaded!";
	};
	
	_strTxt = [_display,"ExAd_ModChecker","strTxt"] call ExAd_fnc_getAppCtrl;
	_strTxt ctrlSetStructuredText parseText format[_message];
	
	_pos = ctrlPosition _strTxt;
	_strTxt ctrlSetPosition [_pos select 0, _pos select 1, _pos select 2, ctrlTextHeight _strTxt];
	_strTxt ctrlcommit 0;
	([_display,"ExAd_ModChecker","strTxt"] call ExAd_fnc_getAppCtrl) ctrlEnable true;
}
catch
{
	["ErrorTitleAndText", ["ExAd - Mod Checker", _exception]] call ExileClient_gui_toaster_addTemplateToast;
	["extraApps", 1] call ExileClient_gui_xm8_slide
}


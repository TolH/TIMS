private ["_flags","_flag"];
_flags = nearestObjects [player,["Exile_Construction_Flag_Static"],150];

try
{
	call ExAd_fnc_loadContent;
}
catch
{
	["ErrorTitleAndText", ["ExAd - Virtual Garage", _exception]] call ExileClient_gui_toaster_addTemplateToast;
	["extraApps", 1] call ExileClient_gui_xm8_slide
}
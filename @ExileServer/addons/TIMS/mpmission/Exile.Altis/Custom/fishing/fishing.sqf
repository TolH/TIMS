/*
 Basic fishing script for exile by JackFrost, modify by Serveratze [Fishing Boat]
*/

if (isNil {alreadyFishing}) then  {
	alreadyFishing = 0;
};

if (alreadyFishing == 1) exitWith 
{
	[
	    "ErrorTitleAndText",
	    ["Fishing Info", "You're already fishing!"]
	] call ExileClient_gui_toaster_addTemplateToast;	
};

alreadyFishing = 1;

timeFishing = 8;

diag_log format['A Player starting fishing'];

private["_fisharray"];

if (ExileClientPlayerIsInCombat) exitWith
{
	[
	    "ErrorTitleAndText", 
	    ["Fishing Info", "You are in combat!"]
	] call ExileClient_gui_toaster_addTemplateToast;
		alreadyFishing = 0
};
if (ExilePlayerInSafezone) exitWith
{
 	[
	    "ErrorTitleAndText", 
	    ["Fishing Info", "Please leave the safezone first!"]
	] call ExileClient_gui_toaster_addTemplateToast;
		alreadyFishing = 0
};
if (speed vehicle player >= 5) exitwith
{ 
    [
	    "ErrorTitleAndText",
	    ["Fishing Info", "You are moving too fast to throw your net!"]
	] call ExileClient_gui_toaster_addTemplateToast;
		alreadyFishing = 0
};
if (speed vehicle player <= -5) exitwith
{ 
    [
	    "ErrorTitleAndText",
		["Fishing Info", "You are moving too fast to throw your net!"]
	] call ExileClient_gui_toaster_addTemplateToast;
		alreadyFishing = 0
};
if !("DDR_Item_Fishing_Net" in magazines player) exitwith
{ 
    [
	    "ErrorTitleAndText",
		["Fishing Info", "You need a fishing net to be able to fish!"]
    ] call ExileClient_gui_toaster_addTemplateToast;
		alreadyFishing = 0
};
if !(vehicle player isKindOf "Ship") exitwith
{ 
    [
	    "ErrorTitleAndText",
	    ["Fishing Info", "You must be in a boat to fish!"]
	] call ExileClient_gui_toaster_addTemplateToast;
		alreadyFishing = 0
};
if (abs (getTerrainHeightASL getPos player) <= 30) exitwith 
{ 
    [
	    "ErrorTitleAndText",
		["Fishing Info", "No catches here! You will have to go to deeper waters to find bigger fish!"]
	] call ExileClient_gui_toaster_addTemplateToast;
		alreadyFishing = 0
}; 
if ("DDR_Item_Fishing_Net" in magazines player) then {
 
		["You throw out your net!"] spawn ExileClient_gui_baguette_show;
        playsound "net";
	while
		{	
			timeFishing > 0 && speed vehicle player <= 5 && speed vehicle player >= -5
		}
		do
			{
				timeFishing = timeFishing-1;
				sleep 1;
			
				if (timeFishing == 0)then
					{
						completed = 1;
					}
				else
					{
						completed = 0};
			};
		
	if (completed == 1) then
		{	
			fishingChance = random 1;
				
			if (fishingChance > 0.85) then
				{
					_fisharray =[
	                    "DDR_Item_CatShark",
	                    "DDR_Item_Mackerel",
	                    "DDR_Item_Mackerel",
	                    "DDR_Item_Mackerel",
	                    "DDR_Item_Mullet",
	                    "DDR_Item_Mullet",
	                    "DDR_Item_Mullet",
	                    "DDR_Item_Ornate",
	                    "DDR_Item_Ornate",
	                    "DDR_Item_Ornate",
	                    "DDR_Item_Tunaa",
	                    "DDR_Item_Turtle"
						] call BIS_fnc_selectRandom;
					["YOU CATCHED SOMETHING!"] spawn ExileClient_gui_baguette_show;
						playsound "fish";
						player addItem _fisharray;
				}
			else			
				{
					["You didn't catch anything."] spawn ExileClient_gui_baguette_show;
				};
			
			if (random 1 > 0.98) then
				{
					player removeItem "DDR_Item_Fishing_Net";
					[
					"InfoTitleAndText",
					["Fishing Info", "You've lost the net!"]
					] call ExileClient_gui_toaster_addTemplateToast;
						alreadyFishing = 0
				};
		}
		else
		{
		    ["ErrorTitleAndText",["Fishing Info", "You cannot move while fishing!"]] call ExileClient_gui_toaster_addTemplateToast;
			alreadyFishing = 0
		}
};

alreadyFishing = 0;
//============================================////============================================//
// TO SHOW INGAME: createDialog "TIMS_MISSION_1_RACING";
// IDD USED FOR INFISTAR: #77877
	class TIMS_MISSION_1_RACING
	{
		idd = 77877;
		class controls
		{
			class MissionButtonClose 
			{
				idc = -1;
				type = CT_BUTTON;
				style = ST_LEFT;
				default = false;
				font = "PuristaBold";
				sizeEx = 0.04;
				colorText[] = {0,0,0,1};
				colorFocused[] = { 1, 0, 0, 1 };   // border color for focused state
				colorDisabled[] = {0.3,0.3,0.3,1};
				colorBackground[] = {0.6,0.6,0.6,1};
				colorBackgroundDisabled[] = {0.6,0.6,0.6,1};
				colorBackgroundActive[] = {1,0.5,0,1};
				offsetX = 0.003;
				offsetY = 0.003;
				offsetPressedX = 0.002;
				offsetPressedY = 0.002;
				colorShadow[] = { 0, 0, 0, 0.5 };
				colorBorder[] = { 0, 0, 0, 1 };
				borderSize = 0;
				soundEnter[] = { "", 1, 1 };  // no sound
				soundPush[] = { "", 1, 1 };
				soundClick[] = { "", 0, 1 };  // no sound
				soundEscape[] = { "", 0, 1 };  // no sound
				x = "SafeZoneX + (870.207612456747 / 1920) * SafeZoneW";
				y = "SafeZoneY + (570.000000000001 / 1080) * SafeZoneH";
				w = "(179.792387543253 / 1920) * SafeZoneW";
				h = "(29.9999999999995 / 1080) * SafeZoneH";
				text = "								Refuse";
				action = " closeDialog 0; [""ErrorTitleAndText"", [""REFUSED RACING!""]] call ExileClient_gui_toaster_addTemplateToast; ";
			};
			class MissionButtonReset 
			{
				idc = -1;
				type = CT_BUTTON;
				style = ST_LEFT;
				default = false;
				font = "PuristaBold";
				sizeEx = 0.04;
				colorText[] = {0,0,0,1};
				colorFocused[] = { 1, 0, 0, 1 };   // border color for focused state
				colorDisabled[] = {0.3,0.3,0.3,1};
				colorBackground[] = {0.6,0.6,0.6,1};
				colorBackgroundDisabled[] = {0.6,0.6,0.6,1};
				colorBackgroundActive[] = {1,0.5,0,1};
				offsetX = 0.003;
				offsetY = 0.003;
				offsetPressedX = 0.002;
				offsetPressedY = 0.002;
				colorShadow[] = { 0, 0, 0, 0.5 };
				colorBorder[] = { 0, 0, 0, 1 };
				borderSize = 0;
				soundEnter[] = { "", 1, 1 };  // no sound
				soundPush[] = { "", 1, 1 };
				soundClick[] = { "", 0, 1 };  // no sound
				soundEscape[] = { "", 0, 1 };  // no sound
				x = "SafeZoneX + (870.207612456747 / 1920) * SafeZoneW";
				y = "SafeZoneY + (525.000000000001 / 1080) * SafeZoneH";
				w = "(179.792387543253 / 1920) * SafeZoneW";
				h = "(29.9999999999995 / 1080) * SafeZoneH";
				text = "								Accept";
				action = " execVM ""Custom\TIMS\-=Events=-\Racing.sqf""; closeDialog 0; [""SuccessTitleAndText"", [""ACCEPTED RACING!""]] call ExileClient_gui_toaster_addTemplateToast; ";
			};
			class BODYGUARD_INFORMATION_TEXT
			{
				idc = -1;
				access = 0;
				type = 13;
				style = 0;
				font = "PuristaBold";
				size = 0.04;
				shadow = 1;
				x = "SafeZoneX + (611.105610561056 / 1920) * SafeZoneW";
				y = "SafeZoneY + (661.617821782178 / 1080) * SafeZoneH";
				w = "(708.999999999999 / 1920) * SafeZoneW";
				h = "(136 / 1080) * SafeZoneH";
				text = "<t align='CENTER'>DO YOU ACCEPT THE RACE REQUEST ?</t>";
				tooltip = "";
			};
		};
	};
//============================================////============================================//
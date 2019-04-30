//============================================////============================================//
// TO SHOW INGAME: createDialog "TIMS_MISSION_1_RACING";
//				   createDialog "TIMS_MISSION_1_RACING_TIMEBOARD";
// IDD USED FOR INFISTAR: #77877, #77879
//============================================////============================================//
	class TIMS_MISSION_1_RACING
	{
		idd = 77877;
		class controls
		{
			class REFUSE_RACE_Button 
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
				text = "								  Nah";
				action = " closeDialog 0; [""ErrorTitleAndText"", [""Nah... not right now.""]] call ExileClient_gui_toaster_addTemplateToast; ";
			};
			class ACCEPT_RACE_Button 
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
				text = "								  Yes";
				action = " execVM ""Custom\TIMS\-=Events=-\Racing.sqf""; closeDialog 0; [""SuccessTitleAndText"", [""Race starting soon... Good luck!""]] call ExileClient_gui_toaster_addTemplateToast; ";
			};
			class TIMEBOARD_Button 
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
				soundClick[] = { "", 0, 1 };  // no sound   profileNamespace getVariable "TP_BACK_POS";
				soundEscape[] = { "", 0, 1 };  // no sound
				x = "SafeZoneX + (870.207612456747 / 1920) * SafeZoneW";
				y = "SafeZoneY + (480.000000000001 / 1080) * SafeZoneH";
				w = "(179.792387543253 / 1920) * SafeZoneW";
				h = "(29.9999999999995 / 1080) * SafeZoneH";
				text = "			  TimerBoard";
				action = " profileNamespace setVariable [""TP_BACK_POS_GUI_TEST"", getPos player]; systemchat format [""TEST:(%1), (%2)"", profileNamespace getVariable ""TP_BACK_POS_GUI_TEST"", name player]; ";
			};
			class RACE_INFORMATION_TEXT
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
	/*class TIMS_MISSION_1_RACING_TIMEBOARD
	{
		idd = 77878;
		class controls
		{
			class TIMEBOARD_Button 
			{

			};
		};
	};*/
//============================================////============================================//
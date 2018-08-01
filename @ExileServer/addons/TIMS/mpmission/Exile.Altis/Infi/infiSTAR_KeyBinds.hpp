class infiSTAR_KeyBinds
{
	idd = 55;
	class ControlsBackground
	{
		class infiSTAR_KeyBinds_Background
		{
			type = 0;
			idc = 100;
			x = safeZoneX + safeZoneW * 0.245;
			y = safeZoneY + safeZoneH * 0.22444445;
			w = safeZoneW * 0.563125;
			h = safeZoneH * 0.55555556;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,.8};
			colorText[] = {1,1,1,1};
			font = "RobotoCondensed";
			sizeEx = (((((safeZoneW / safeZoneH) min 1.2) / 1.2) / 25) * 1);
		};
		class infiSTAR_KeyBinds_Title
		{
			type = 0;
			idc = 101;
			x = safeZoneX + safeZoneW * 0.245;
			y = safeZoneY + safeZoneH * 0.22333334;
			w = safeZoneW * 0.563125;
			h = safeZoneH * 0.02555556;
			style = 0;
			text = "infiSTAR.de Keybinds Menu";
			colorBackground[] = {0.6,0,0,1};
			colorText[] = {1,1,1,1};
			font = "RobotoCondensed";
			sizeEx = (((((safeZoneW / safeZoneH) min 1.2) / 1.2) / 25) * 1.35);
		};
	};
	class Controls
	{
		class infiSTAR_KeyBinds_Actionlist
		{
			style = 16;
			type = 102;
			idc = 102;
			text = "";
			sizeEx = (((((safeZoneW / safeZoneH) min 1.2) / 1.2) / 25) * 0.9);
			columns[] = {0, safeZoneW * 0.25};
			drawSideArrows = false;
			idcLeft = -1;
			idcRight = -1;
			x = safeZoneX + safeZoneW * 0.25125;
			y = safeZoneY + safeZoneH * 0.32888889;
			w = safeZoneW * 0.33625;
			h = safeZoneH * 0.43666667;
			shadow = 0;
			font = "RobotoCondensed";
			color[] = {0.95,0.95,0.95,1};
			colorText[] = {1,1,1,1};
			colorDisabled[] = {0.1,0.1,0.1,0.6};
			colorScrollbar[] = {0.95,0.95,0.95,1};
			colorSelect[] = {1,0,0,1};
			colorSelect2[] = {1,0,0,1};
			colorSelectBackground[] = {0.1,0.1,0.1,0.6};
			colorSelectBackground2[] = {0.1,0.1,0.1,0.6};
			soundSelect[] = {"",0.1,1};
			soundExpand[] = {"",0.1,1};
			soundCollapse[] = {"",0.1,1};
			period = 1.2;
			maxHistoryDelay = 0;
			rowHeight = 0;
			autoScrollSpeed = -1;
			autoScrollDelay = 5;
			autoScrollRewind = 0;
			onLBDblClick = "ctrlSetFocus (uiNamespace getVariable ['infiSTAR_keyBinds_edit',controlNull]);";
			onLBSelChanged = "_this call fn_infiSTAR_keyBinds_lbSelChanged;";
			onLoad = "uiNamespace setVariable ['infiSTAR_keyBinds_ListBox',_this select 0];(_this select 0) call fn_infiSTAR_keyBinds_initListbox;";
			class ListScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
				colorActive[] = {1,1,1,1};
				colorDisabled[] = {1,1,1,0.3};
			};
		};
		class infiSTAR_KeyBinds_currentKeyEdit
		{
			type = 2;
			idc = 104;
			x = safeZoneX + safeZoneW * 0.605625;
			y = safeZoneY + safeZoneH * 0.27555556;
			w = safeZoneW * 0.19;
			h = safeZoneH * 0.03555556;
			style = 0;
			text = "";
			autocomplete = "";
			colorBackground[] = {0,0,0,0.6};
			colorDisabled[] = {0,0,0,0.6};
			colorSelection[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "RobotoCondensed";
			sizeEx = (((((safeZoneW / safeZoneH) min 1.2) / 1.2) / 25) * 1.2);
			onKeyDown = "_this call fn_infiSTAR_keyBinds_edit_KeyDown;";
			onLoad = "uiNameSpace setVariable ['infiSTAR_keyBinds_edit',_this select 0];";
		};
		class infiSTAR_KeyBinds_searchKeyBind
		{
			type = 2;
			idc = 1041;
			x = safeZoneX + safeZoneW * 0.25125;
			y = safeZoneY + safeZoneH * 0.27555556;
			w = safeZoneW * 0.33625;
			h = safeZoneH * 0.03555556;
			style = 0;
			text = "search..";
			autocomplete = "";
			colorBackground[] = {0,0,0,0.6};
			colorDisabled[] = {0,0,0,0.6};
			colorSelection[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "RobotoCondensed";
			sizeEx = (((((safeZoneW / safeZoneH) min 1.2) / 1.2) / 25) * 1.2);
			onKeyDown = "call fn_infiSTAR_keyBinds_initListbox;";
			onLoad = "uiNameSpace setVariable ['infiSTAR_KeyBinds_searchKeyBind',_this select 0];";
		};
		class infiSTAR_KeyBinds_button
		{
			idc = 1;
			x=0;
			y=0;
			w=0;
			h=0;
			text="";
			type = 1;
			style = 0+2;
			borderSize = 0;
			colorBackground[] = {0.1,0.1,0.1,0.6};
			colorBackgroundActive[] = {0.2,0.2,0.2,0.6};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,0.6};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {1,0,0,0.8};
			colorFocused[] = {0,0,0,0};
			colorShadow[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "RobotoCondensed";
			offsetPressedX = 0;
			offsetPressedY = 0;
			offsetX = 0;
			offsetY = 0;
			sizeEx = (((((safeZoneW / safeZoneH) min 1.2) / 1.2) / 25) * 1.5);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			shadow = 2;
		};
		class infiSTAR_KeyBinds_save:infiSTAR_KeyBinds_button
		{
			idc = 105;
			x = safeZoneX + safeZoneW * 0.715625;
			y = safeZoneY + safeZoneH * 0.33555556;
			w = safeZoneW * 0.08;
			h = safeZoneH * 0.04555556;
			text = "Save";
			action = "[] call fn_infiSTAR_keyBinds_btnSave;";
		};
		class infiSTAR_KeyBinds_reset:infiSTAR_KeyBinds_button
		{
			idc = 106;
			x = safeZoneX + safeZoneW * 0.605625;
			y = safeZoneY + safeZoneH * 0.33555556;
			w = safeZoneW * 0.08;
			h = safeZoneH * 0.04555556;
			text = "Reset";
			action = "[] spawn fn_infiSTAR_keyBinds_btnReset;";
		};
		class infiSTAR_KeyBinds_resetAll:infiSTAR_KeyBinds_button
		{
			idc = 107;
			x = safeZoneX + safeZoneW * 0.605625;
			y = safeZoneY + safeZoneH * 0.71;
			w = safeZoneW * 0.19;
			h = safeZoneH * 0.05;
			text = "Reset All";
			action = "[] spawn fn_infiSTAR_keyBinds_btnResetAll;";
		};
	};
};

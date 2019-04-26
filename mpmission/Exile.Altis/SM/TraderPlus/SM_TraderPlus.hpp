/**
 * Author; StokesMagee
 * Website; www.stokesmagee.net
 * Copyright; © 2017 StokesMagee
 *
 * This work is property of StokesMagee. You do not have permissions to use/edit/distribute any of this content
 * without written permission from StokesMagee.
 */

class SM_TraderPlus_ScrollBar
{
	color[] = {1, 1, 1, 0.6};
	colorActive[] = {1, 1, 1, 1};
	colorDisabled[] = {1, 1, 1, 0.3};
	thumb = "\A3\ui_f\data\gui\cfg\ScrollBar\thumb_ca.paa";
	arrowEmpty = "\A3\ui_f\data\gui\cfg\ScrollBar\arrowEmpty_ca.paa";
	arrowFull = "\A3\ui_f\data\gui\cfg\ScrollBar\arrowFull_ca.paa";
	border = "\A3\ui_f\data\gui\cfg\ScrollBar\border_ca.paa";
	shadow = 0;
	scrollSpeed = 0.06;
	width = 0;
	height = 0;
	autoScrollEnabled = 0;
	autoScrollSpeed = -1;
	autoScrollDelay = 5;
	autoScrollRewind = 0;
};
class SM_TraderPlus_RscText
{
	deletable = 0;
	fade = 0;
	type = 0;
	idc = -1;
	colorBackground[] = {0, 0, 0, 0};
	colorText[] = {1, 1, 1, 1};
	text = "";
	fixedWidth = 0;
	x = 0;
	y = 0;
	h = 0.037;
	w = 0.3;
	style = 0;
	shadow = 1;
	colorShadow[] = {0, 0, 0, 0.5};
	font = "RobotoCondensed";
	SizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	linespacing = 1;
	tooltipColorText[] = {1, 1, 1, 1};
	tooltipColorBox[] = {1, 1, 1, 1};
	tooltipColorShade[] = {0, 0, 0, 0.65};
};
class SM_TraderPlus_RscButton
{
	deletable = 0;
	fade = 0;
	type = 1;
	text = "";
	colorText[] = {1, 1, 1, 1};
	colorDisabled[] = {1, 1, 1, 0.25};
	colorBackground[] = {0, 0, 0, 0.5};
	colorBackgroundDisabled[] = {0, 0, 0, 0.5};
	colorBackgroundActive[] = {0, 0, 0, 1};
	colorFocused[] = {0, 0, 0, 1};
	colorShadow[] = {0, 0, 0, 0};
	colorBorder[] = {0, 0, 0, 1};
	soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter", 0.09, 1};
	soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush", 0.09, 1};
	soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick", 0.09, 1};
	soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape", 0.09, 1};
	idc = -1;
	style = 2;
	x = 0;
	y = 0;
	w = 0.095589;
	h = 0.039216;
	shadow = 2;
	font = "RobotoCondensed";
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	url = "";
	offsetX = 0;
	offsetY = 0;
	offsetPressedX = 0;
	offsetPressedY = 0;
	borderSize = 0;
};
class SM_TraderPlus_RscProgress
{
	deletable = 0;
	fade = 0;
	type = 8;
	style = 0;
	colorFrame[] = {0, 0, 0, 0};
	colorBar[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.13])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.54])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.21])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.8])"};
	x = 0.344;
	y = 0.619;
	w = 0.313726;
	h = 0.0261438;
	shadow = 2;
	texture = "#(argb,8,8,3)color(1,1,1,1)";
};
class SM_TraderPlus_RscStructuredText
{
	deletable = 0;
	fade = 0;
	type = 13;
	idc = -1;
	style = 0;
	colorText[] = {1, 1, 1, 1};
	class Attributes
	{
		font = "RobotoCondensed";
		color = "#ffffff";
		colorLink = "#D09B43";
		align = "left";
		shadow = 1;
	};
	x = 0;
	y = 0;
	h = 0.035;
	w = 0.1;
	text = "";
	size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	shadow = 1;
};
class SM_TraderPlus_RscPicture
{
	deletable = 0;
	fade = 0;
	type = 0;
	idc = -1;
	style = 48;
	colorBackground[] = {0, 0, 0, 0};
	colorText[] = {1, 1, 1, 1};
	font = "TahomaB";
	sizeEx = 0;
	lineSpacing = 0;
	text = "";
	fixedWidth = 0;
	shadow = 0;
	x = 0;
	y = 0;
	w = 0.2;
	h = 0.15;
	tooltipColorText[] = {1, 1, 1, 1};
	tooltipColorBox[] = {1, 1, 1, 1};
	tooltipColorShade[] = {0, 0, 0, 0.65};
};
class SM_TraderPlus_RscPictureKeepAspect: SM_TraderPlus_RscPicture
{
	style = "0x30 + 0x800";
};
class SM_TraderPlus_RscCombo
{
	deletable = 0;
	fade = 0;
	type = 4;
	colorSelect[] = {0, 0, 0, 1};
	colorText[] = {1, 1, 1, 1};
	colorBackground[] = {0, 0, 0, 1};
	colorScrollBar[] = {1, 0, 0, 1};
	colorDisabled[] = {1, 1, 1, 0.25};
	colorPicture[] = {1, 1, 1, 1};
	colorPictureSelected[] = {1, 1, 1, 1};
	colorPictureDisabled[] = {1, 1, 1, 0.25};
	colorPictureRight[] = {1, 1, 1, 1};
	colorPictureRightSelected[] = {1, 1, 1, 1};
	colorPictureRightDisabled[] = {1, 1, 1, 0.25};
	colorTextRight[] = {1, 1, 1, 1};
	colorSelectRight[] = {0, 0, 0, 1};
	colorSelect2Right[] = {0, 0, 0, 1};
	tooltipColorText[] = {1, 1, 1, 1};
	tooltipColorBox[] = {1, 1, 1, 1};
	tooltipColorShade[] = {0, 0, 0, 0.65};
	soundSelect[] = {"\A3\ui_f\data\sound\RscCombo\soundSelect", 0.1, 1};
	soundExpand[] = {"\A3\ui_f\data\sound\RscCombo\soundExpand", 0.1, 1};
	soundCollapse[] = {"\A3\ui_f\data\sound\RscCombo\soundCollapse", 0.1, 1};
	maxHistoryDelay = 1;
	class ComboScrollBar: SM_TraderPlus_ScrollBar
	{
		color[] = {1, 1, 1, 1};
	};
	style = "0x10 + 0x200";
	font = "RobotoCondensed";
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	shadow = 0;
	x = 0;
	y = 0;
	w = 0.12;
	h = 0.035;
	colorSelectBackground[] = {1, 1, 1, 0.7};
	arrowEmpty = "\A3\ui_f\data\GUI\RscCommon\RscCombo\arrow_combo_ca.paa";
	arrowFull = "\A3\ui_f\data\GUI\RscCommon\RscCombo\arrow_combo_active_ca.paa";
	wholeHeight = 0.45;
	colorActive[] = {1, 0, 0, 1};
};
class SM_TraderPlus_RscListBox
{
	deletable = 0;
	fade = 0;
	type = 5;
	rowHeight = 0;
	colorText[] = {1, 1, 1, 1};
	colorDisabled[] = {1, 1, 1, 0.25};
	colorScrollBar[] = {1, 0, 0, 0};
	colorSelect[] = {0, 0, 0, 1};
	colorSelect2[] = {0, 0, 0, 1};
	colorSelectBackground[] = {0.95, 0.95, 0.95, 1};
	colorSelectBackground2[] = {1, 1, 1, 0.5};
	colorBackground[] = {0, 0, 0, 0.3};
	soundSelect[] = {"\A3\ui_f\data\sound\RscListBox\soundSelect", 0.09, 1};
	autoScrollSpeed = -1;
	autoScrollDelay = 5;
	autoScrollRewind = 0;
	arrowEmpty = "#(argb,8,8,3)color(1,1,1,1)";
	arrowFull = "#(argb,8,8,3)color(1,1,1,1)";
	colorPicture[] = {1, 1, 1, 1};
	colorPictureSelected[] = {1, 1, 1, 1};
	colorPictureDisabled[] = {1, 1, 1, 0.25};
	colorPictureRight[] = {1, 1, 1, 1};
	colorPictureRightSelected[] = {1, 1, 1, 1};
	colorPictureRightDisabled[] = {1, 1, 1, 0.25};
	colorTextRight[] = {1, 1, 1, 1};
	colorSelectRight[] = {0, 0, 0, 1};
	colorSelect2Right[] = {0, 0, 0, 1};
	tooltipColorText[] = {1, 1, 1, 1};
	tooltipColorBox[] = {1, 1, 1, 1};
	tooltipColorShade[] = {0, 0, 0, 0.65};
	class ListScrollBar: SM_TraderPlus_ScrollBar
	{
		color[] = {1, 1, 1, 1};
		autoScrollEnabled = 1;
	};
	x = 0;
	y = 0;
	w = 0.3;
	h = 0.3;
	style = 16;
	font = "RobotoCondensed";
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	shadow = 0;
	colorShadow[] = {0, 0, 0, 0.5};
	period = 1.2;
	maxHistoryDelay = 1;
};
class SM_TraderPlus_ExileItemListBox: SM_TraderPlus_RscListBox
{
	sizeEx = "0.8 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
	sizeEx2 = "0.8 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
	rowHeight = "2 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
	canDrag = 0;
	itemSpacing = 0.001;
	period = 1.2;
	shadow = 0;
	maxHistoryDelay = 1;
	fade = 0;
	deletable = 0;
	type = 5;
	style = 16;
	colorBackground[] = {0,0,0,0.3};
	colorDisabled[] = {1,1,1,0.25};
	colorPicture[] = {1,1,1,1};
	colorPictureDisabled[] = {1,1,1,0.25};
	colorPictureRight[] = {1,1,1,1};
	colorPictureRightDisabled[] = {1,1,1,0.25};
	colorPictureSelected[] = {1,1,1,1};
	colorScrollBar[] = {1,0,0,0};
	colorSelect2[] = {0,0,0,1};
	colorSelect2Right[] = {0,0,0,1};
	colorSelectBackground2[] = {1,1,1,0.5};
	colorSelectBackground[] = {0.95,0.95,0.95,1};
	colorSelectRight[] = {0,0,0,1};
	colorShadow[] = {0,0,0,0.5};
	colorText[] = {1,1,1,1};
	colorTextRight[] = {1,1,1,1};
	disabledCtrlColor[] = {1,1,1,0.5};
	itemBackground[] = {1,1,1,0.1};
	tooltipColorBox[] = {1,1,1,1};
	tooltipColorShade[] = {0,0,0,0.65};
	tooltipColorText[] = {1,1,1,1};
};
class SM_TraderPlus_RscCheckBox
{
	idc = -1;
	type = 77;
	deletable = 0;
	style = 0;
	checked = 0;
	x = "0.375 * safezoneW + safezoneX";
	y = "0.36 * safezoneH + safezoneY";
	w = "0.025 * safezoneW";
	h = "0.04 * safezoneH";
	color[] = {1, 1, 1, 0.7};
	colorFocused[] = {1, 1, 1, 1};
	colorHover[] = {1, 1, 1, 1};
	colorPressed[] = {1, 1, 1, 1};
	colorDisabled[] = {1, 1, 1, 0.2};
	colorBackground[] = {0, 0, 0, 0};
	colorBackgroundFocused[] = {0, 0, 0, 0};
	colorBackgroundHover[] = {0, 0, 0, 0};
	colorBackgroundPressed[] = {0, 0, 0, 0};
	colorBackgroundDisabled[] = {0, 0, 0, 0};
	textureChecked = "A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";
	textureUnchecked = "A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";
	textureFocusedChecked = "A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";
	textureFocusedUnchecked = "A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";
	textureHoverChecked = "A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";
	textureHoverUnchecked = "A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";
	texturePressedChecked = "A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";
	texturePressedUnchecked = "A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";
	textureDisabledChecked = "A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";
	textureDisabledUnchecked = "A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";
	tooltipColorText[] = {1, 1, 1, 1};
	tooltipColorBox[] = {1, 1, 1, 1};
	tooltipColorShade[] = {0, 0, 0, 0.65};
	soundEnter[] = {"", 0.1, 1};
	soundPush[] = {"", 0.1, 1};
	soundClick[] = {"", 0.1, 1};
	soundEscape[] = {"", 0.1, 1};
};
class SM_TraderPlus_RscEdit
{
	deletable = 0;
	fade = 0;
	type = 2;
	x = 0;
	y = 0;
	h = 0.04;
	w = 0.2;
	colorBackground[] = {0, 0, 0, 0};
	colorText[] = {0.95, 0.95, 0.95, 1};
	colorDisabled[] = {1, 1, 1, 0.25};
	colorSelection[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.13])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.54])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.21])", 1};
	autocomplete = "";
	text = "";
	size = 0.2;
	style = "0x00 + 0x40";
	font = "RobotoCondensed";
	shadow = 2;
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	canModify = 1;
	tooltipColorText[] = {1, 1, 1, 1};
	tooltipColorBox[] = {1, 1, 1, 1};
	tooltipColorShade[] = {0, 0, 0, 0.65};
};
class SM_TraderPlus_RscControlsGroup
{
	deletable = 0;
	fade = 0;
	class VScrollbar: SM_TraderPlus_ScrollBar
	{
		color[] = {1, 1, 1, 1};
		width = 0.021;
		autoScrollEnabled = 1;
	};
	class HScrollbar: SM_TraderPlus_ScrollBar
	{
		color[] = {1, 1, 1, 1};
		height = 0.028;
	};
	class Controls //sources - []
	{
	};
	type = 15;
	idc = -1;
	x = 0;
	y = 0;
	w = 1;
	h = 1;
	shadow = 0;
	style = 16;
};
class SM_TraderPlus_RscControlsGroupNoHScrollbars: SM_TraderPlus_RscControlsGroup
{
	y = -0.044;
	class HScrollbar: HScrollbar
	{
		width = 0;
	};
};
class SM_TraderPlus_ItemGroup: SM_TraderPlus_RscControlsGroupNoHScrollbars
{
	y = 0;
	w = 0.15;
	h = 0.15;
	onMouseButtonDown = "_this call ExileClient_gui_traderDialog_event_onStoreListBoxSelectionChanged; true";
	onMouseButtonDblClick = "[] call ExileClient_gui_traderDialog_event_onPurchaseButtonClick; true";
	class controls
	{
		class Background: SM_TraderPlus_RscText
		{
			idc = 4201;
			x = 0;
			y = 0;
			w = 0.15;
			h = 0.15;
			colorBackground[] = {0.2,0.2,0.2,1};
		};
		class ItemPicture: SM_TraderPlus_RscPictureKeepAspect
		{
			idc = 4202;
			x = 0;
			y = 0;
			w = 0.15;
			h = 0.15;
			text = "";
		};
		class DisplayName: SM_TraderPlus_RscStructuredText
		{
			idc = 4203;
			x = 0;
			y = 0;
			w = 0.15;
			h = 0.15;
			text = "";
		};
		class Price: SM_TraderPlus_RscStructuredText
		{
			idc = 4204;
			x = 0;
			y = 0.098;
			w = 0.15;
			h = 0.045;
			text = "<t size='1' align='right'>0 <img size='1.5' image='exile_assets\texture\ui\poptab_trader_ca.paa'/></t>";
		};
		class ToolTip: SM_TraderPlus_RscButton
		{
			idc = 4205;
			x = 0;
			y = 0;
			w = 0.15;
			h = 0.15;
			colorText[] = {0,0,0,0};
			colorDisabled[] = {0,0,0,0};
			colorBackground[] = {0,0,0,0};
			colorBackgroundDisabled[] = {0,0,0,0};
			colorBackgroundActive[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
			colorBorder[] = {0,0,0,0};
			soundEnter[] = {};
			soundPush[] = {};
			soundClick[] = {};
			soundEscape[] = {};
			shadow = 0;
			tooltip = "";
			tooltipColorText[] = {1,1,1,1};
			tooltipColorBox[] = {0.2,0.2,0.2,1};
			tooltipColorShade[] = {0.2,0.2,0.2,1};
		};
	};
};
class RscExileTraderDialog
{
	idd = 24007;
	onLoad = "uiNamespace setVariable ['RscExileTraderDialog', _this select 0]";
	onUnload = "call ExileClient_gui_traderDialog_event_onUnload; uiNamespace setVariable ['RscExileTraderDialog', displayNull]";
	class controlsBackground
	{
		class Background01: SM_TraderPlus_RscText
		{
			idc = 4000;
			x = -0.4425;
			y = -0.044;
			w = 0.4375;
			h = 0.04;
			text = "StokesMagee";
			colorBackground[] = {0.1,0.1,0.1,1};
		};
		class Background02: SM_TraderPlus_RscText
		{
			idc = 1005;
			x = 1.00499;
			y = -0.044;
			w = 0.3;
			h = 0.04;
			text = "STATS";
			colorBackground[] = {0.1,0.1,0.1,1};
		};
		class Background03: SM_TraderPlus_RscText
		{
			idc = 1003;
			x = 1.00499;
			y = 0;
			w = 0.3;
			h = 0.96;
			colorBackground[] = {0.1,0.1,0.1,1};
		};
		class Background04: SM_TraderPlus_RscText
		{
			idc = 1009;
			x = 0.5125;
			y = 0.98;
			w = 0.4875;
			h = 0.1;
			colorBackground[] = {0.1,0.1,0.1,1};
		};
		class Background05: SM_TraderPlus_RscText
		{
			idc = 1001;
			x = 1.00499;
			y = 0.98;
			w = 0.3;
			h = 0.1;
			colorBackground[] = {0.1,0.1,0.1,1};
		};
		class Background06: SM_TraderPlus_RscText
		{
			idc = 1000;
			x = -0.4425;
			y = 0.98;
			w = 0.4375;
			h = 0.1;
			colorBackground[] = {0.1,0.1,0.1,1};
		};
		class Background07: SM_TraderPlus_RscText
		{
			idc = 1002;
			x = -0.4425;
			y = 0;
			w = 0.4375;
			h = 0.96;
			colorBackground[] = {0.1,0.1,0.1,1};
		};
		class Background08: SM_TraderPlus_RscText
		{
			idc = 1007;
			x = 0;
			y = 0.98;
			w = 0.4875;
			h = 0.1;
			colorBackground[] = {0.1,0.1,0.1,1};
		};
		class Background09: SM_TraderPlus_RscText
		{
			idc = 1008;
			x = 0.25;
			y = -0.136;
			w = 0.525;
			h = 0.08;
			colorBackground[] = {0.1,0.1,0.1,1};
		};
		class LoadBackground: SM_TraderPlus_RscText
		{
			idc = 4425;
			x = -0.43;
			y = 0.892;
			w = 0.4125;
			h = 0.052;
			colorBackground[] = {0,0,0,1};
		};
	};
	class controls
	{
		class SellButton: SM_TraderPlus_RscButton
		{
			idc = 4007;
			text = "SELL";
			x = -0.43;
			y = 1;
			w = 0.4125;
			h = 0.06;
			onButtonClick = "[] call ExileClient_gui_traderDialog_event_onSellButtonClick";
		};
		class CancelButton: SM_TraderPlus_RscButton
		{
			idc = 4006;
			text = "CANCEL";
			x = 1.01999;
			y = 1;
			w = 0.275;
			h = 0.06;
			onButtonClick = "closeDialog 0;";
		};
		class PlayerLoadProgress: SM_TraderPlus_RscProgress
		{
			idc = 4012;
			x = -0.43;
			y = 0.892;
			w = 0.4125;
			h = 0.052;
			colorText[] = {1,1,1,0.25};
			colorBackground[] = {0,0,0,1};
		};
		class PlayerLoadLabel: SM_TraderPlus_RscText
		{
			idc = 4013;
			text = "LOAD";
			x = -0.43;
			y = 0.892;
			w = 0.4125;
			h = 0.052;
		};
		class PlayerLoadValue: SM_TraderPlus_RscStructuredText
		{
			idc = 4014;
			text = "100%";
			x = -0.43;
			y = 0.892;
			w = 0.4125;
			h = 0.052;
		};
		class PurchaseButton: SM_TraderPlus_RscButton
		{
			idc = 4010;
			text = "PURCHASE";
			x = 0.76125;
			y = 1;
			w = 0.22625;
			h = 0.06;
			onButtonClick = "_this call ExileClient_gui_traderDialog_event_onPurchaseButtonClick";
		};
		class HideItemsButton: SM_TraderPlus_RscButton
		{
			idc = 1603;
			text = "SHOW PLAYER";
			x = 0.525;
			y = 1;
			w = 0.22625;
			h = 0.06;
			onButtonClick = "call SM_TraderPlus_onHideItemsButtonClick; true";
		};
		class Search: SM_TraderPlus_RscEdit
		{
			idc = 15103;
			text = "Search";
			x = 0.0125;
			y = 1;
			w = 0.22625;
			h = 0.06;
		};
		class SearchButton: SM_TraderPlus_RscButton
		{
			idc = 4055;
			text = "SEARCH";
			x = 0.24875;
			y = 1;
			w = 0.22625;
			h = 0.06;
			onButtonClick = "'' call SM_TraderPlus_onSearchButtonClick";
		};
		class TextPlayerMoney: SM_TraderPlus_RscStructuredText
		{
			idc = 4002;
			text = "0";
			x = -0.4425;
			y = -0.044;
			w = 0.4375;
			h = 0.04;
		};
		class ItemPicture: SM_TraderPlus_RscPictureKeepAspect
		{
			idc = 4003;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 1.01999;
			y = 0.02;
			w = "11 * (0.025)";
			h = "9 * (0.04)";
		};
		class InventoryDropDown: SM_TraderPlus_RscCombo
		{
			idc = 4004;
			x = -0.43;
			y = 0.02;
			w = "16.5 * (0.025)";
			h = "1 * (0.04)";
			onLBSelChanged = "_this call ExileClient_gui_traderDialog_event_onPlayerInventoryDropDownSelectionChanged";
		};
		class InventoryListBox: SM_TraderPlus_ExileItemListBox
		{
			idc = 4005;
			x = -0.43;
			y = 0.076;
			w = "16.5 * (0.025)";
			h = "20 * (0.04)";
			colorBackground[] = {1,1,1,0.1};
			onLBDblClick = "if (((_this select 0) lbValue (_this select 1)) != -1) then { [] call ExileClient_gui_traderDialog_event_onSellButtonClick };";
			onLBSelChanged = "_this call ExileClient_gui_traderDialog_event_onPlayerInventoryListBoxSelectionChanged";
		};
		class StoreDropDown: SM_TraderPlus_RscCombo
		{
			idc = 4008;
			x = 0.26;
			y = -0.116;
			w = "16.5 * (0.025)";
			h = "1 * (0.04)";
			onLBSelChanged = "_this call ExileClient_gui_traderDialog_event_onStoreDropDownSelectionChanged";
		};
		class PrimaryWeaponFilter: SM_TraderPlus_RscCheckBox
		{
			idc = 4044;
			x = 0.6875;
			y = -0.116;
			w = "1.2 * (0.025)";
			h = "1 * (0.04)";
			tooltip = "Show only items that are compatible with your primary weapon.";
			color[] = {1,1,1,1};
			colorDisabled[] = {1,1,1,0.25};
			colorFocused[] = {1,1,1,1};
			colorHover[] = {0,0,0,1};
			colorPressed[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.8};
			colorBackgroundDisabled[] = {0,0,0,0.8};
			colorBackgroundFocused[] = {0,0,0,0.8};
			colorBackgroundHover[] = {1,1,1,1};
			colorBackgroundPressed[] = {0,0,0,0.8};
			soundClick[] = {"\A3\ui_f\data\sound\RscButtonMenu\soundClick",0.09,1};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButtonMenu\soundEnter",0.09,1};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButtonMenu\soundEscape",0.09,1};
			soundPush[] = {"\A3\ui_f\data\sound\RscButtonMenu\soundPush",0.09,1};
			textureChecked = "exile_assets\texture\arsenal\primaryweapon_green_ca.paa";
			textureDisabledChecked = "exile_assets\texture\arsenal\primaryweapon_green_ca.paa";
			textureFocusedChecked = "exile_assets\texture\arsenal\primaryweapon_green_ca.paa";
			textureHoverChecked = "exile_assets\texture\arsenal\primaryweapon_green_ca.paa";
			texturePressedChecked = "exile_assets\texture\arsenal\primaryweapon_green_ca.paa";
			textureDisabledUnchecked = "exile_assets\texture\arsenal\primaryweapon_ca.paa";
			textureHoverUnchecked = "exile_assets\texture\arsenal\primaryweapon_ca.paa";
			textureFocusedUnchecked = "exile_assets\texture\arsenal\primaryweapon_ca.paa";
			texturePressedUnchecked = "exile_assets\texture\arsenal\primaryweapon_ca.paa";
			textureUnchecked = "exile_assets\texture\arsenal\primaryweapon_ca.paa";
			onCheckedChanged = "_this call ExileClient_gui_traderDialog_event_onFilterCheckboxStateChanged";
			show = "false";
		};
		class HandgunWeaponFilter: PrimaryWeaponFilter
		{
			idc = 4045;
			x = 0.73;
			y = -0.116;
			tooltip = "Show only items that are compatible with your handgun.";
			textureChecked = "exile_assets\texture\arsenal\handgun_green_ca.paa";
			textureDisabledChecked = "exile_assets\texture\arsenal\handgun_green_ca.paa";
			textureFocusedChecked = "exile_assets\texture\arsenal\handgun_green_ca.paa";
			textureHoverChecked = "exile_assets\texture\arsenal\handgun_green_ca.paa";
			texturePressedChecked = "exile_assets\texture\arsenal\handgun_green_ca.paa";
			textureDisabledUnchecked = "exile_assets\texture\arsenal\handgun_ca.paa";
			textureHoverUnchecked = "exile_assets\texture\arsenal\handgun_ca.paa";
			textureFocusedUnchecked = "exile_assets\texture\arsenal\handgun_ca.paa";
			texturePressedUnchecked = "exile_assets\texture\arsenal\handgun_ca.paa";
			textureUnchecked = "exile_assets\texture\arsenal\handgun_ca.paa";
		};
		class Stat01Background: SM_TraderPlus_RscText
		{
			idc = 4015;
			x = 1.01999;
			y = "11 * (0.04) + (0)";
			w = "11 * (0.025)";
			h = "1 * (0.04)";
			colorBackground[] = {0,0,0,0.5};
		};
		class Stat01Progress: SM_TraderPlus_RscProgress
		{
			idc = 4016;
			x = 1.01999;
			y = "11 * (0.04) + (0)";
			w = "11 * (0.025)";
			h = "1 * (0.04)";
			colorText[] = {1,1,1,0.25};
			colorBackground[] = {1,1,1,0.25};
		};
		class Stat01Label: SM_TraderPlus_RscText
		{
			idc = 4017;
			text = "ARMOR";
			x = 1.01999;
			y = "11 * (0.04) + (0)";
			w = "11 * (0.025)";
			h = "1 * (0.04)";
		};
		class Stat01Value: SM_TraderPlus_RscStructuredText
		{
			idc = 4018;
			text = "0";
			x = 1.01999;
			y = "11 * (0.04) + (0)";
			w = "11 * (0.025)";
			h = "1 * (0.04)";
		};
		class Stat02Background: SM_TraderPlus_RscText
		{
			idc = 4019;
			x = 1.01999;
			y = "12.5 * (0.04) + (0)";
			w = "11 * (0.025)";
			h = "1 * (0.04)";
			colorBackground[] = {0,0,0,0.5};
		};
		class Stat02Progress: SM_TraderPlus_RscProgress
		{
			idc = 4020;
			x = 1.01999;
			y = "12.5 * (0.04) + (0)";
			w = "11 * (0.025)";
			h = "1 * (0.04)";
			colorText[] = {1,1,1,0.25};
			colorBackground[] = {1,1,1,0.25};
		};
		class Stat02Label: SM_TraderPlus_RscText
		{
			idc = 4021;
			text = "ARMOR";
			x = 1.01999;
			y = "12.5 * (0.04) + (0)";
			w = "11 * (0.025)";
			h = "1 * (0.04)";
		};
		class Stat02Value: SM_TraderPlus_RscStructuredText
		{
			idc = 4022;
			text = "0";
			x = 1.01999;
			y = "12.5 * (0.04) + (0)";
			w = "11 * (0.025)";
			h = "1 * (0.04)";
		};
		class Stat03Background: SM_TraderPlus_RscText
		{
			idc = 4023;
			x = 1.01999;
			y = "14 * (0.04) + (0)";
			w = "11 * (0.025)";
			h = "1 * (0.04)";
			colorBackground[] = {0,0,0,0.5};
		};
		class Stat03Progress: SM_TraderPlus_RscProgress
		{
			idc = 4024;
			x = 1.01999;
			y = "14 * (0.04) + (0)";
			w = "11 * (0.025)";
			h = "1 * (0.04)";
			colorText[] = {1,1,1,0.25};
			colorBackground[] = {1,1,1,0.25};
		};
		class Stat03Label: SM_TraderPlus_RscText
		{
			idc = 4025;
			text = "ARMOR";
			x = 1.01999;
			y = "14 * (0.04) + (0)";
			w = "11 * (0.025)";
			h = "1 * (0.04)";
		};
		class Stat03Value: SM_TraderPlus_RscStructuredText
		{
			idc = 4026;
			text = "0";
			x = 1.01999;
			y = "14 * (0.04) + (0)";
			w = "11 * (0.025)";
			h = "1 * (0.04)";
		};
		class Stat04Background: SM_TraderPlus_RscText
		{
			idc = 4027;
			x = 1.01999;
			y = "15.5 * (0.04) + (0)";
			w = "11 * (0.025)";
			h = "1 * (0.04)";
			colorBackground[] = {0,0,0,0.5};
		};
		class Stat04Progress: SM_TraderPlus_RscProgress
		{
			idc = 4028;
			x = 1.01999;
			y = "15.5 * (0.04) + (0)";
			w = "11 * (0.025)";
			h = "1 * (0.04)";
			colorText[] = {1,1,1,0.25};
			colorBackground[] = {1,1,1,0.25};
		};
		class Stat04Label: SM_TraderPlus_RscText
		{
			idc = 4029;
			text = "ARMOR";
			x = 1.01999;
			y = "15.5 * (0.04) + (0)";
			w = "11 * (0.025)";
			h = "1 * (0.04)";
		};
		class Stat04Value: SM_TraderPlus_RscStructuredText
		{
			idc = 4030;
			text = "0";
			x = 1.01999;
			y = "15.5 * (0.04) + (0)";
			w = "11 * (0.025)";
			h = "1 * (0.04)";
		};
		class Stat05Background: SM_TraderPlus_RscText
		{
			idc = 4031;
			x = 1.01999;
			y = "17 * (0.04) + (0)";
			w = "11 * (0.025)";
			h = "1 * (0.04)";
			colorBackground[] = {0,0,0,0.5};
		};
		class Stat05Progress: SM_TraderPlus_RscProgress
		{
			idc = 4032;
			x = 1.01999;
			y = "17 * (0.04) + (0)";
			w = "11 * (0.025)";
			h = "1 * (0.04)";
			colorText[] = {1,1,1,0.25};
			colorBackground[] = {1,1,1,0.25};
		};
		class Stat05Label: SM_TraderPlus_RscText
		{
			idc = 4033;
			text = "ARMOR";
			x = 1.01999;
			y = "17 * (0.04) + (0)";
			w = "11 * (0.025)";
			h = "1 * (0.04)";
		};
		class Stat05Value: SM_TraderPlus_RscStructuredText
		{
			idc = 4034;
			text = "0";
			x = 1.01999;
			y = "17 * (0.04) + (0)";
			w = "11 * (0.025)";
			h = "1 * (0.04)";
		};
		class Stat06Background: SM_TraderPlus_RscText
		{
			idc = 4035;
			x = 1.01999;
			y = "18.5 * (0.04) + (0)";
			w = "11 * (0.025)";
			h = "1 * (0.04)";
			colorBackground[] = {0,0,0,0.5};
		};
		class Stat06Progress: SM_TraderPlus_RscProgress
		{
			idc = 4036;
			x = 1.01999;
			y = "18.5 * (0.04) + (0)";
			w = "11 * (0.025)";
			h = "1 * (0.04)";
			colorText[] = {1,1,1,0.25};
			colorBackground[] = {1,1,1,0.25};
		};
		class Stat06Label: SM_TraderPlus_RscText
		{
			idc = 4037;
			text = "ARMOR";
			x = 1.01999;
			y = "18.5 * (0.04) + (0)";
			w = "11 * (0.025)";
			h = "1 * (0.04)";
		};
		class Stat06Value: SM_TraderPlus_RscStructuredText
		{
			idc = 4038;
			text = "0";
			x = 1.01999;
			y = "18.5 * (0.04) + (0)";
			w = "11 * (0.025)";
			h = "1 * (0.04)";
		};
		class Stat07Background: SM_TraderPlus_RscText
		{
			idc = 4039;
			x = 1.01999;
			y = "20 * (0.04) + (0)";
			w = "11 * (0.025)";
			h = "1 * (0.04)";
			colorBackground[] = {0,0,0,0.5};
		};
		class Stat07Progress: SM_TraderPlus_RscProgress
		{
			idc = 4040;
			x = 1.01999;
			y = "20 * (0.04) + (0)";
			w = "11 * (0.025)";
			h = "1 * (0.04)";
			colorText[] = {1,1,1,0.25};
			colorBackground[] = {1,1,1,0.25};
		};
		class Stat07Label: SM_TraderPlus_RscText
		{
			idc = 4041;
			text = "0";
			x = 1.01999;
			y = "20 * (0.04) + (0)";
			w = "11 * (0.025)";
			h = "1 * (0.04)";
		};
		class Stat07Value: SM_TraderPlus_RscStructuredText
		{
			idc = 4042;
			text = "0";
			x = 1.01999;
			y = "20 * (0.04) + (0)";
			w = "11 * (0.025)";
			h = "1 * (0.04)";
		};
	};
};
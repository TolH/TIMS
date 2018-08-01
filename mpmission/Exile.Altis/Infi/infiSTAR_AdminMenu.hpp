/*
Antihack & AdminTools - Christian Lorenzen - www.infiSTAR.de
#13526
*/
class infiSTAR_AdminMenu
{
	idd=-1338;
	movingenable=false;
	version=3;
	controls[]=
	{
		infi_TXT2,
		infi_BTN10,
		infi_BTN11,
		infi_BTN12,
		infi_TREE1499,
		infi_LIST1501,
		infi_BTN20,
		infi_BTN21,
		infi_BTN23,
		infi_BTN24,
		infi_EDIT1,
		infi_EDIT2,
		infi_BTN36,
		infi_BTN37,
		infi_BTN38
	};
	class infi_TREE1499:RscTreeSearch
	{
		idc=1499;
		x=safeZoneX;
		y=safeZoneY * safeZoneH * 0.22;
		w=0.189063 * safeZoneW;
		h=0.8545 * safeZoneH;
	};
	class infi_LIST1501:RscListBox_infiSTAR
	{
		idc=1501;
		x=safeZoneX + 0.192 * safeZoneW;
		y=safeZoneY + 0.06 * safeZoneH;
		w=0.335 * safeZoneW;
		h=0.935 * safeZoneH;
	};
	class infi_EDIT1:RscEdit_infiSTAR
	{
		idc=100;
		x=0.1964 * safeZoneW + safeZoneX;
		y=0.125933 * safeZoneH + safeZoneY;
		w=0.326563 * safeZoneW;
		h=0.044 * safeZoneH;
	};
	class infi_EDIT2:RscEdit_infiSTAR_multi
	{
		idc=103;
		show=0;
	};
	class infi_TXT2:RscText_infiSTAR
	{
		idc=2;
		text="infiSTAR.de";
		x=-5.31323e-005 * safeZoneW + safeZoneX;
		y=-7.50085e-005 * safeZoneH + safeZoneY;
		w=1 * safeZoneW;
		h=0.0341667 * safeZoneH;
		colorText[]={1,1,1,0.9};
		colorBackground[]={0.56,0.04,0.04,1};
	};
	class infi_BTN10:RscButton_infiSTAR
	{
		idc=10;
		text="Alphabet";
		x=0.005 + safeZoneX;
		y=0.0379694 * safeZoneH + safeZoneY;
		w=0.06 * safeZoneW;
		h=0.02 * safeZoneH;
		action="SortRangePlease=nil;SortAlphaPlease=true;SortGroupsPlease=nil;[] call fn_infiSTARAdmin_fillPlayer;[] call fn_infiSTARAdmin_setFocus;";
	};
	class infi_BTN11:RscButton_infiSTAR
	{
		idc=11;
		text="Groups";
		x=0.01 + safeZoneX + (0.06 * safeZoneW);
		y=0.0379694 * safeZoneH + safeZoneY;
		w=0.06 * safeZoneW;
		h=0.02 * safeZoneH;
		action="SortAlphaPlease=nil;SortRangePlease=nil;SortGroupsPlease=true;[] call fn_infiSTARAdmin_fillPlayer;[] call fn_infiSTARAdmin_setFocus;";
	};
	class infi_BTN12:RscButton_infiSTAR
	{
		idc=12;
		text="Range";
		x=0.015 + safeZoneX + (0.06 * safeZoneW)*2;
		y=0.0379694 * safeZoneH + safeZoneY;
		w=0.06 * safeZoneW;
		h=0.02 * safeZoneH;
		action="SortAlphaPlease=nil;SortRangePlease=true;SortGroupsPlease=nil;[] call fn_infiSTARAdmin_fillPlayer;[] call fn_infiSTARAdmin_setFocus;";
	};
	class infi_BTN20:RscButton_infiSTAR
	{
		idc=20;
		default="true";
		text="MainMenu";
		x=0.202072 * safeZoneW + safeZoneX;
		y=0.0379694 * safeZoneH + safeZoneY;
		w=0.0625001 * safeZoneW;
		h=0.02 * safeZoneH;
	};
	class infi_BTN21:RscButton_infiSTAR
	{
		idc=21;
		text="SpawnMenu";
		x=0.287975 * safeZoneW + safeZoneX;
		y=0.0379694 * safeZoneH + safeZoneY;
		w=0.0625001 * safeZoneW;
		h=0.02 * safeZoneH;
	};
	class infi_BTN23:RscButton_infiSTAR
	{
		idc=23;
		text="AHLog";
		x=0.373981 * safeZoneW + safeZoneX;
		y=0.0379694 * safeZoneH + safeZoneY;
		w=0.0625001 * safeZoneW;
		h=0.02 * safeZoneH;
	};
	class infi_BTN24:RscButton_infiSTAR
	{
		idc=24;
		text="AdminLog";
		x=0.459884 * safeZoneW + safeZoneX;
		y=0.0379694 * safeZoneH + safeZoneY;
		w=0.0625001 * safeZoneW;
		h=0.02 * safeZoneH;
	};
	class infi_BTN36:RscButton_infiSTAR
	{
		idc=36;
		text="Items";
		x=0.219294 * safeZoneW + safeZoneX;
		y=0.0819514 * safeZoneH + safeZoneY;
		w=0.0916667 * safeZoneW;
		h=0.0329999 * safeZoneH;
	};
	class infi_BTN37:RscButton_infiSTAR
	{
		idc=37;
		text="Vehicles";
		x=0.316644 * safeZoneW + safeZoneX;
		y=0.0819514 * safeZoneH + safeZoneY;
		w=0.0916667 * safeZoneW;
		h=0.0329999 * safeZoneH;
	};
	class infi_BTN38:RscButton_infiSTAR
	{
		idc=38;
		text="Trader";
		x=0.414097 * safeZoneW + safeZoneX;
		y=0.0819514 * safeZoneH + safeZoneY;
		w=0.0916667 * safeZoneW;
		h=0.0329999 * safeZoneH;
	};
};

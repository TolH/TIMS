//============================================////============================================//
	class RANDOM_LOOT_CRATE_NOTIFICATION
	{
		idd = 88666;
		duration = 15;
		fadeIn = 1;
		fadeOut = 3;
		movingEnable = false;
		class controls
		{
			//MAIN IMAGE BACKGROUND COLOR FRAME
			class MyRscStructuredText
			{
				idc = -1; 
				type = 13;
				style = 0;
				colorBackground[] = { 0.05, 0, 0.10, 0.10 };
				x = "SafeZoneX + (1650 / 1920) * SafeZoneW";
				y = "SafeZoneY + (734.999999999999 / 1080) * SafeZoneH";
				w = "(195 / 1920) * SafeZoneW";
				h = "(149.999999999999 / 1080) * SafeZoneH";
				size = 0.03;
				sizeEx = 0.03;
				text = "";
				class Attributes
				{
					font = "PuristaMedium";
					color = "#ffffff";
					colorLink = "#D09B43";
					align = "left";
					shadow = 1;
				};
			};
			//MAIN IMAGE FRAME COUNTOUR
			class MyPicRscFrame
			{
				type = 0;
				idc = -1;
				deletable = 0;
				style = 64;
				shadow = 2;
				colorBackground[] = {0, 0, 1, 1};
				colorText[] = {1,1,1,1};
				font = "PuristaBold";
				sizeEx = 0.03;
				text = "";
				x = "SafeZoneX + (1650 / 1920) * SafeZoneW";
				y = "SafeZoneY + (734.999999999999 / 1080) * SafeZoneH";
				w = "(195 / 1920) * SafeZoneW";
				h = "(149.999999999999 / 1080) * SafeZoneH";
			};
			//MAIN IMAGES FRAME
			class MyRscPicture
			{
				deletable = 0;
				fade = 0;
				access = 0;
				type = 0;
				idc = -1;
				style = 48; //+ 0x800;
				colorBackground[] = {0, 0, 0, 0};
				colorText[] = {1, 1, 1, 1};
				font = "PuristaBold";
				sizeEx = 0;
				lineSpacing = 0;
				text = "Custom\TIMS\Images\crate.jpg";
				//autoplay = 1;
				//loops = 5;
				fixedWidth = 0;
				shadow = 1;
				x = "SafeZoneX + (1665 / 1920) * SafeZoneW";
				y = "SafeZoneY + (750.000000000001 / 1080) * SafeZoneH";
				w = "(165 / 1920) * SafeZoneW";
				h = "(120 / 1080) * SafeZoneH";
				tooltipColorText[] = {1, 1, 1, 1};
				tooltipColorBox[] = {1, 1, 1, 1};
				tooltipColorShade[] = {0, 0, 0, 1};
			};
		};
	};
//============================================////============================================//
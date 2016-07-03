#define COLOR_HALF_BLACK { 0, 0, 0, 0.5 }
/*
	Author: Artkyom - AltisLifeFR.com

	File: hud_stats.hpp
*/

class playerHUD {
	idd = -1;
	duration = 10e10;
	movingEnable = 1;
	fadein = 0;
	fadeout = 0;
	name = "playerHUD";
	onLoad = "uiNamespace setVariable ['playerHUD',_this select 0]";
	objects[] = {};
	
	
	class controlsBackground 
	{
		class alfr_watermark : life_RscPicture
		{
			idc = -1;
			text= "icons\alfr_watermark.paa";
			x = 0.90* safezoneW + safezoneX;
            y = 0.85 * safezoneH + safezoneY;
            w = 0.0945 * safezoneW;
            h = 0.128 * safezoneH;
		};
		
		class foodHIcon : life_RscPicture 
		{
		
			idc = -1;
			text = "icons\food.paa";
			x = safeZoneX+safeZoneW-0.15; y = safeZoneY+safeZoneH-0.400;
			w = 0.032; h = 0.042;
			colorBackground[] = COLOR_HALF_BLACK;
		};
		
		class waterHIcon : life_RscPicture 
		{
		
			idc = -1;
			text = "icons\water.paa";
			x = safeZoneX+safeZoneW-0.15; y = safeZoneY+safeZoneH-0.353;
			w = 0.032; h = 0.042;
			colorBackground[] = COLOR_HALF_BLACK;
		};
		
		class healthHIcon : life_RscPicture
		{
			
			idc = -1;
			text = "icons\health.paa";
			x = safeZoneX+safeZoneW-0.15; y = safeZoneY+safeZoneH-0.306;
			w = 0.032; h = 0.042;
			colorBackground[] = COLOR_HALF_BLACK;
		};	
		
		class alcoolHIcon : life_RscPicture
		{
			
			idc = -1;
			text = "icons\alcool.paa";
			x = safeZoneX+safeZoneW-0.15; y = safeZoneY+safeZoneH-0.259;
			w = 0.032; h = 0.042;
			colorBackground[] = COLOR_HALF_BLACK;
		};
	};
	
	class controls
	{
		class foodtext
		{
			type=0;
			idc=23500;
			style=0;
			x=-1;
			y=-1;
			w=0.3;
			h=0.04;
			sizeEx=0.03;
			size=1;
			font="PuristaSemibold";
			colorBackground[] = COLOR_HALF_BLACK;
			colorText[] = { 1 , 1 , 1 , 1 };
			shadow=true;
			text="";
		};
		
		class watertext
		{
			type=0;
			idc=23510;
			style=0;
			x=-1;
			y=-1;
			w=0.3;
			h=0.04;
			sizeEx=0.03;
			size=1;
			font="PuristaSemibold";
			colorBackground[] = COLOR_HALF_BLACK;
			colorText[] = { 1 , 1 , 1 , 1 };
			shadow=true;
			text="";
		};
		
		class healthtext
		{
			type=0;
			idc=23515;
			style=0;
			x=-1;
			y=-1;
			w=0.3;
			h=0.04;
			sizeEx=0.03;
			size=1;
			font="PuristaSemibold";
			colorBackground[] = COLOR_HALF_BLACK;
			colorText[] = { 1 , 1 , 1 , 1 };
			shadow=true;
			text="";
		};
		
		class alcooltext
		{
			type=0;
			idc=23520;
			style=0;
			x=-1;
			y=-1;
			w=0.3;
			h=0.04;
			sizeEx=0.03;
			size=1;
			font="PuristaSemibold";
			colorBackground[] = COLOR_HALF_BLACK;
			colorText[] = { 1 , 1 , 1 , 1 };
			shadow=true;
			text="";
		};
	};
};
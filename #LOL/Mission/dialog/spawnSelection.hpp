class life_spawn_selection
{
	idd = 38500;
	movingEnabled = false;
	enableSimulation = true;
	
	class controlsBackground {
		class Logo: Life_RscPicture
		{
			idc = 1200;
			text = "icons\logo_talents.paa";
			x = 0.725;
			y = -0.12;
			w = 0.3;
			h = 0.4;
		};
		class Title: Life_RscText
		{
			idc = 1000;
			text = "Choisissez où vous réveiller";
			x = 0.00883839;
			y = 0.033468;
			w = 0.6875;
			h = 0.12;
			sizeEx = 0.07;
		};
		class MapView : Life_RscMapControl 
		{
			idc = 38502;
			x = 0.255; 
			y = 0.16;
			w = 0.749;
			h = 0.84;
			maxSatelliteAlpha = 0.75;
			alphaFadeStartScale = 1.15;
			alphaFadeEndScale = 1.29;
		};
		class listBackground: Life_RscText
		{
			idc = 100000;
			x = 0.025;
			y = 0.158;
			w = 0.230;
			h = 0.84;
			colorBackground[] = {0.08,0.08,0.08,1};
			text = "   ";
		};		
		class buttonBackground: Life_RscText
		{
			idc = 100000;
			x = 0.7035;
			y = 1;
			w = 0.3;
			h = 0.1;
			colorBackground[] = {0.17,0.17,0.17,1};
			text = "   ";
		};
	};
	
	class controls
	{	
		class SpawnPointList: Life_RscListNBox
		{
			idc = 38510;
			coloumns[] = {0,0,0.9};
			drawSideArrows = false;
			idcLeft = -1;
			idcRight = -1;
			rowHeight = 0.1;
			sizeEx = 0.05;
			colorSelectBackground[] = {0.17,0.17,0.17,1};
			colorSelectBackground2[] = {0.17,0.17,0.17,1};
			colorSelect[] = {1,1,1,1};
			colorSelect2[] = {1,1,1,1};
			x = 0.025;
			y = 0.16;
			w = 0.230;
			h = 0.84;
			onLBSelChanged = "_this call life_fnc_spawnPointSelected;";
		};
		
		class spawnButton : Life_RscButtonMenu
		{
			idc = -1;
			text = "Se Réveiller";
			x = 0.7035;
			y = 1;
			w = 0.3;
			h = 0.1;
			colorBackground[] = {0.08,0.08,0.08,1};
			colorBackground2[] = {0.08,0.08,0.08,1};
			colorBackgroundFocused[] = {0.17,0.17,0.17,1};
			color[] = {1,1,1,1};
			colorFocused[] = {1,1,1,1};
			color2[] = {1,1,1,1};
			colorText[] = {1,1,1,1};
			onButtonClick = "[] call life_fnc_spawnConfirm";
			animTextureNormal = "#(argb,8,8,3)color(0.08,0.08,0.08,1)";
			animTextureDisabled = "";
			animTextureOver = "";
			animTextureFocused = "";
			animTexturePressed = "";
			animTextureDefault = "";
			size = 0.06;
			class TextPos
			{
				left = "0.25 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
				top = 0.020;
				right = 0.005;
				bottom = 0.0;
			};
			class Attributes
			{
				align = "center";
				shadow = "false";
			};
		};
	};
};
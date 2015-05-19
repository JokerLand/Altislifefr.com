class life_forcerules_menu {
	idd = 3900;
	name= "life_forcerules_menu";
	movingEnable = false;
	enableSimulation = true;
	onLoad = "[] spawn life_fnc_forceRuleMenu;";
	class controlsBackground {
		
		class textBackground2: life_RscText
		{
			idc = 1000;
			x = 0;
			y = 0;
			w = 1;
			h = 0.96;
			colorBackground[] = {0.33,0.33,0.33,1};
		};

		class header : life_RscText
		{
			idc = 1001;
			text = "  REGLES";
			x = 0;
			y = -0.12;
			w = 1;
			h = 0.12;
			colorBackground[] = {0.112,0.112,0.112,1};
			sizeEx = 0.08;
		};
		class textBackground : life_RscText
		{
			idc = 1002;
			x = 4.65 * GUI_GRID_W + GUI_GRID_X;
			y = -1.64 * GUI_GRID_H + GUI_GRID_Y;
			w = 4 * GUI_GRID_W;
			h = 2.5 * GUI_GRID_H;
		};
	};
	
	class controls {
		class logo : life_RscPicture
		{
			idc = 1200;
			text = "icons\logo_talents.paa";
			x = 0.4;
			y = -0.2;
			w = 0.2125;
			h = 0.28;
		};
		class acceptButton : life_RscButtonMenu
		{
			idc = 2400;
			text = "Accepter";
			onButtonClick = "life_acceptedRules = 1;(findDisplay 3900) displayRemoveEventHandler [""KeyDown"", noesckey];closeDialog 0;";
			x = 0.68;
			y = 0.96;
			w = 0.16;
			h = 0.04;
		};
		class refuseButton : life_RscButtonMenu
		{
			idc = 2401;
			text = "Refuser";
			onButtonClick = "closeDialog 0;";
			x = 0.84;
			y = 0.96;
			w = 0.16;
			h = 0.04;
		};
		class rulesList : Life_RscListBox
		{
			idc = 3702;		
			sizeEx = 0.035;
			onLBSelChanged = "[_this] call life_fnc_forceRuleInfo;";
			x = 0; y = 0;
			w = 0.30; h = 0.96;
		};
		
		class rulesContent : Life_RscStructuredText
		{
			idc = 3703;
			text = "";
			x = 0.3;
			y = 0;
			w = 0.7;
			h = 0.74;
			colorBackground[] = {0.33,0.33,0.33,1};
		};
	};
};
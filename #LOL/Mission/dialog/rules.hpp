class life_rules_menu {
	idd = 4100;
	name= "life_rules_menu";
	movingEnable = false;
	enableSimulation = true;
	onLoad = "[] spawn life_fnc_ruleMenu;";
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
		class closeButton : life_RscButtonMenu
		{
			idc = 2400;
			text = "Fermer";
			onButtonClick = "closeDialog 0;";
			x = 0.9;
			y = 0.96;
			w = 0.1;
			h = 0.04;
		};
		class rulesList : Life_RscListBox 
		{
			idc = 3702;		
			sizeEx = 0.035;
			onLBSelChanged = "[_this] call life_fnc_ruleInfo;";
			x = 0; y = 0;
			w = 0.30; h = 0.96;
		};
		class rulesCtrl : Life_RscControlsGroup
		{
			idc = -1;
			x = 0.3;
			y = 0;
			w = 0.7;
			h = 0.74;
			class Controls
			{
				class rulesContent : Life_RscStructuredText
				{
					idc = 3703;
					text = "Les règles d'Altis Life: Evolution";
					x = 0;
					y = 0;
					w = 0.69;
					h = 0.85;
					colorBackground[] = {0.33,0.33,0.33,1};
				};
			};
		};
	};
};
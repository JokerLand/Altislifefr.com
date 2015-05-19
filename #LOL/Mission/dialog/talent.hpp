class life_talent_menu {
	idd = 3700;
	name= "life_talent_menu";
	movingEnable = false;
	enableSimulation = true;
	onLoad = "[] spawn life_fnc_talentMenu;";
	
	class controlsBackground {
		
		class RscText_1000: life_RscText
		{
			idc = 1000;
			x = 0;
			y = 0;
			w = 1;
			h = 0.96;
			colorBackground[] = {0.33,0.33,0.33,1};
		};

		class RscText_1001: life_RscText
		{
			idc = 1001;
			text = "  TALENTS"; //--- ToDo: Localize;
			x = 0;
			y = -0.12;
			w = 1;
			h = 0.12;
			colorBackground[] = {0.112,0.112,0.112,1};
			sizeEx = 0.08;
		};
		class RscText_1002: life_RscText
		{
			idc = 1002;
			x = 4.65 * GUI_GRID_W + GUI_GRID_X;
			y = -1.64 * GUI_GRID_H + GUI_GRID_Y;
			w = 4 * GUI_GRID_W;
			h = 2.5 * GUI_GRID_H;
		};
	};
	
	class controls {
		class RscPicture_1200: life_RscPicture
		{
			idc = 1200;
			text = "icons\logo_talents.paa";
			x = 0.4;
			y = -0.2;
			w = 0.2125;
			h = 0.28;
		};
		class RscButtonMenu_2400: life_RscButtonMenu
		{
			idc = 2400;
			text = "Fermer"; //--- ToDo: Localize;
			onButtonClick = "closeDialog 0;";
			x = 0.9;
			y = 0.96;
			w = 0.1;
			h = 0.04;
		};
		class TalentList : Life_RscListBox 
		{
			idc = 3702;		
			sizeEx = 0.035;
			//colorBackground[] = {0,0,0,0};
			onLBSelChanged = "[_this] call life_fnc_talentInfo";
			
			x = 0; y = 0;
			w = 0.30; h = 0.96;
		};
		
		class TalentInfo : Life_RscStructuredText
		{
			idc = 3703;
			text = "Bienvenue dans l'arbre des talents d'Altis Life: Evolution !";
			x = 0.3;
			y = 0;
			w = 0.7;
			h = 0.74;
			colorBackground[] = {0.33,0.33,0.33,1};
		};
	};
};
class Life_note_apply
{
	idd = 144572;
	name = "Life_note_apply";
	movingEnabled = false;
	enableSimulation = true;

	class controlsBackground {
		class Life_RscTitleBackground: Life_RscText
		{
			idc = -1;
			text = "Ajouter une Note";
			x = 0.1625;
			y = 0;
			w = 0.675;
			h = 0.04;
			colorBackground[] = {-1,-1,-1,1};
		};
		
		class MainBackground: Life_RscText
		{
			idc = -1;
			x = 0.1625;
			y = 0.04;
			w = 0.675;
			h = 0.18;
			colorBackground[] = {-1,-1,-1,0.7};
		};
	};
	class controls {
		class RscText_1002: Life_RscText
		{
			idc = 1002;
			text = "Joueur :";
			x = 0.1875;
			y = 0.06;
			w = 0.625;
			h = 0.04;
		};
		
		class RscText_1003: Life_RscText
		{
			idc = -1;
			text = "Note :";
			x = 0.1875;
			y = 0.14;
			w = 0.075;
			h = 0.04;
		};
		
		class RscEdit_1400: Life_RscEdit
		{
			idc = 1400;
			text="";
			x = 0.2625;
			y = 0.14;
			w = 0.55;
			h = 0.04;
		};
		
		class RscButtonMenu_2400: Life_RscButtonMenu
		{
			idc = 2400;
			text = "CONFIRMER";
			onButtonClick = "[] spawn life_fnc_applyNote";
			x = 0.7;
			y = 0.22;
			w = 0.1375;
			h = 0.04;
		};
	};
};

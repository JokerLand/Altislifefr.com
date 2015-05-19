class jail_time
{
	idd = 26500;
	name = "jail_time";
	movingEnabled = false;
	enableSimulation = true;
	
	class controlsBackground {
		class Life_RscTitleBackground:Life_RscText {
			idc = -1;
			text = "Mettre en Prison";
			x = 0.2;
			y = 0;
			w = 0.575;
			h = 0.04;
			colorBackground[] = {-1,-1,-1,1};
		};
		
		class MainBackground:Life_RscText {
			idc = -1;
			colorBackground[] = {0, 0, 0, 0.7};
			x = 0.2;
			y = 0.04;
			w = 0.575;
			h = 0.26;
		};
	};
	
	class controls 
	{
		class InfoMsg : Life_RscText
		{
			idc = 2601;
			text = "Durée :";
			x = 0.2125;
			y = 0.06;
			w = 0.0875;
			h = 0.04;
		};
		
		class textEdit : Life_RscEdit {
			idc = 1400;
			text = "15";
			x = 0.3125;
			y = 0.06;
			w = 0.05;
			h = 0.04;
		};
		
		class payTicket: Life_RscButtonMenu {
			idc = 2402;
			text = "CONFIRMER";
			colorBackground[] = {0,0,0,1};
			onButtonClick="[] spawn life_fnc_arrestDialog_Arrest;";
			x = 0.6125;
			y = 0.3;
			w = 0.1625;
			h = 0.04;
		};
		
		class RscText_1003: RscText
		{
			idc = 1003;
			text = "Note :";
			x = 0.2125;
			y = 0.14;
			w = 0.1;
			h = 0.04;
		};

		class RscEdit_1401: RscEdit
		{
			idc = 1401;
			text = "Aucune";
			x = 0.3125;
			y = 0.14;
			w = 0.4375;
			h = 0.04;
		};
		
		class RscText_1004: RscText
		{
			idc = 1004;
			text = "Raison :";
			x = 0.2125;
			y = 0.22;
			w = 0.1;
			h = 0.04;
		};
		
		class RscEdit_1402: RscEdit
		{
			idc = 1402;
			text = "A remplir obligatoirement";
			x = 0.3125;
			y = 0.22;
			w = 0.4375;
			h = 0.04;
		};
	};
};
class life_wanted_menu {
	idd = 2400;
	name= "life_wanted_menu";
	movingEnable = false;
	enableSimulation = true;

	
	class controlsBackground {
		class Life_RscTitleBackground:Life_RscText {
			idc = -1;
			text = "Système de Traitement des Infractions Constatées (STIC)"; //--- ToDo: Localize;
			x = 0;
			y = -0.06;
			w = 1;
			h = 0.06;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,1};
		};
		
		class MainBackground:Life_RscText {
			idc = -1;
			x = 0;
			y = 0;
			w = 1;
			h = 1;
			colorBackground[] = {0,0,0,0.7};
		};
	};
	
	class controls {
		class PlayerList: Life_RscListbox
		{
			idc = 1500;
			text = "";
			onLBSelChanged = "[] spawn life_fnc_wantedInfo";
			x = 0;
			y = 0;
			w = 0.275;
			h = 1;
		};
		
		class PlayerName: Life_RscText
		{
			idc = 1002;
			text = "Nom : ";
			x = 0.275;
			y = 0;
			w = 0.725;
			h = 0.04;
		};
		
		class PreviousArrestText: Life_RscText
		{
			idc = 1003;
			text = "Précédentes Condamnations :";
			x = 0.275;
			y = 0.52;
			w = 0.3125;
			h = 0.04;
		};
		
		class Wanted: Life_RscText
		{
			idc = 1004;
			text = "Avis de Recherche : ";
			x = 0.275;
			y = 0.06;
			w = 0.725;
			h = 0.04;
		};

		class Additional: Life_RscText
		{
			idc = 1005;
			text = "Notes / Informations : ";
			x = 0.275;
			y = 0.14;
			w = 0.2375;
			h = 0.04;
		};

		class Connection: Life_RscText
		{
			idc = 1006;
			text = "    Connexion Etablie";
			x = 0.7625;
			y = -0.06;
			w = 0.2375;
			h = 0.06;
		};
		
		class AdditionalList: Life_RscListbox
		{
			idc = 1501;
			x = 0.275;
			y = 0.2;
			w = 0.725;
			h = 0.3;
		};
		
		class PreviousArrest: Life_RscListbox
		{
			idc = 1502;
			x = 0.275;
			y = 0.58;
			w = 0.725;
			h = 0.42;
		};
		
		class RscButtonMenu_2400: Life_RscButtonMenu
		{
			idc = 2400;
			text = "Ajouter une Note";
			onButtonClick = "[] spawn life_fnc_addPlayerNote";
			x = 0.7625;
			y = 1;
			w = 0.2375;
			h = 0.04;
		};
		
		class RscButtonMenu_2401: Life_RscButtonMenu
		{
			idc = 2401;
			text = "Avis de Recherche";
			onButtonClick = "[] spawn life_fnc_addPlayerWanted";
			x = 0.525;
			y = 1;
			w = 0.2375;
			h = 0.04;
		};
		
		class RscButtonMenu_2402: Life_RscButtonMenu
		{
			idc = 2402;
			text = "Vider Casier Jud.";
			onButtonClick = "[] spawn life_fnc_deleteOldInfos";
			x = 0.275;
			y = 1;
			w = 0.25;
			h = 0.04;
		};

		class RscButtonMenu_2403: Life_RscButtonMenu
		{
			idc = 2403;
			text = "Vider Notes";
			onButtonClick = "[] spawn life_fnc_deleteNotes";
			x = 0.125;
			y = 1;
			w = 0.15;
			h = 0.04;
		};
	};
};
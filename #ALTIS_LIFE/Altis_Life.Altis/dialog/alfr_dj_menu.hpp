class alfr_dj_menu {	
	idd = 2052;
	name = "alfr_dj_menu";
	movingEnable = true;
	enableSimulation = true;
	//onLoad="";
	class controlsBackground {
			class Background: life_RscText
			{
				idc = -1;
				x = 0;
				y = 0;
				w = 1;
				h = 1;
				colorBackground[] = {0.204,0.271,0.204,0.7};
			};
			class Top_Background_Bar: life_RscText
			{
				idc = -1;
				x = 0;
				y = 0;
				w = 1;
				h = 0.08;
				colorBackground[] = {0.216,0.216,0.216,0.9};
			};
			class MenuDJ_Title: life_RscText
			{
				idc = -1;
				text = "Menu DJ"; 
				x = 0.0125;
				y = 0;
				w = 0.3875;
				h = 0.08;
				sizeEx = 2 * GUI_GRID_H;
			};
			class AltisLifeFR_Logo: life_RscPicture
			{
				idc = -1;
				text = "icons\alfr_watermark.paa";
				x = 0.8375;
				y = -0.06;
				w = 0.1625;
				h = 0.2;
			};
			class FaitPar_Sam: life_RscText
			{
				idc = -1;
				text = "Fait par: Sam pour";
				x = 0.7;
				y = 0.02;
				w = 0.1375;
				h = 0.04;
				sizeEx = 0.6 * GUI_GRID_H;
			};
			class SnoopDogg_Music: life_RscText
			{
				idc = -1;
				text = "Snoop Dogg - California Roll fr. Stevie Wonder, Pharrell Williams"; 
				x = 0.0125;
				y = 0.14;
				w = 0.6625;
				h = 0.04;
			};
			class UmmetOzcan_Music: life_RscText
			{
				idc = -1;
				text = "Ummet Ozcan - Lose Control"; 
				x = 0.0125;
				y = 0.2;
				w = 0.3;
				h = 0.04;
			};
			class PatrickSebastien_Music: life_RscText
			{
				idc = -1;
				text = "Les Sardines - Patrick Sebastien"; 
				x = 0.0125;
				y = 0.26;
				w = 0.35;
				h = 0.04;
			};
			class KendjiGirac_Music: life_RscText
			{
				idc = -1;
				text = "Kendji Girac - Conmigo"; 
				x = 0.0125;
				y = 0.32;
				w = 0.2375;
				h = 0.04;
			};
			class Disclosure_Music: life_RscText
			{
				idc = -1;
				text = "Disclosure - Bang That"; 
				onButtonClick = "enceintes_disco say3D 'disclosure'";
				x = 0.0125;
				y = 0.38;
				w = 0.25;
				h = 0.04;
			};
			class JoeStone_Music: life_RscText
			{
				idc = -1;
				text = "Joe Stone - The Party ft. Montell Jordan"; 
				onButtonClick = "enceintes_disco say3D 'joestone'";
				x = 0.0125;
				y = 0.44;
				w = 0.425;
				h = 0.04;
			};
			class DavidGuetta_Music: life_RscText
			{
				idc = -1;
				text = "David Guetta - Dangerous ft. Sam Martin"; 
				x = 0.0125;
				y = 0.5;
				w = 0.425;
				h = 0.04;
			};
			class Bontan_Music: life_RscText
			{
				idc = -1;
				text = "Bontan - Firefly (Mark Knight's Killer Cut)"; 
				x = 0.0125;
				y = 0.56;
				w = 0.4375;
				h = 0.04;
			};
			class CapitaineFlam_Music: life_RscText
			{
				idc = -1;
				text = "Capitaine Flam - Musique du Generique"; 
				x = 0.0125;
				y = 0.62;
				w = 0.4;
				h = 0.04;
			};
			class Avicii_Music: life_RscText
			{
				idc = -1;
				text = "Avicii feat. Simon Aldred - Waiting For Love"; 
				x = 0.0125;
				y = 0.68;
				w = 0.4625;
				h = 0.04;
			};
			class Alesso_Music: life_RscText
			{
				idc = -1;
				text = "Alesso - Sweet Escape ft. Sirena"; 
				x = 0.0125;
				y = 0.74;
				w = 0.35;
				h = 0.04;
			};
			class Queleuleu_Music: life_RscText
			{
				idc = -1;
				text = "A la queue leu-leu"; 
				x = 0.0125;
				y = 0.8;
				w = 0.2;
				h = 0.04;
			};
			class MartinSolveig_Music: life_RscText
			{
				idc = -1;
				text = "Martin Solveig - +1";
				x = 0.0125;
				y = 0.86;
				w = 0.2;
				h = 0.04;
			};
			class Fermer_Text: life_RscText
			{
				idc = -1;
				text = " Fermer";
				x = 0.8625;
				y = 0.92;
				w = 0.1;
				h = 0.04;
			};
	};
	
	class controls {
		class SnoopDogg_Button: life_RscButtonMenu
		{
			idc=8010;
			text = "";
			onButtonClick = "enceintes_disco say3D 'snoopdogg'";
			colorText[] = {-1,-1,-1,0};
			colorDisabled[] = {-1,-1,-1,0};
			colorBackground[] = {-1,-1,-1,0};
			colorBackgroundDisabled[] = {-1,-1,-1,0};
			colorBackgroundActive[] = {-1,-1,-1,0};
			colorFocused[] = {-1,-1,-1,0};
			colorShadow[] = {-1,-1,-1,0};
			colorBorder[] = {-1,-1,-1,0};
			colorBackground2[] = {-1,-1,-1,0};
			x = 0.0125;
			y = 0.14;
			w = 0.6625;
			h = 0.04;
		};
		class UmmetOzcan_Button: life_RscButtonMenu
		{
			idc = 8055;
			text = "";
			onButtonClick = "enceintes_disco say3D 'losecontrol'";
			colorText[] = {-1,-1,-1,0};
			colorDisabled[] = {-1,-1,-1,0};
			colorBackground[] = {-1,-1,-1,0};
			colorBackgroundDisabled[] = {-1,-1,-1,0};
			colorBackgroundActive[] = {-1,-1,-1,0};
			colorFocused[] = {-1,-1,-1,0};
			colorShadow[] = {-1,-1,-1,0};
			colorBorder[] = {-1,-1,-1,0};
			colorBackground2[] = {-1,-1,-1,0};
			x = 0.0125;
			y = 0.2;
			w = 0.3;
			h = 0.04;
		};
		class PatrickSebastien_Button: life_RscButtonMenu
		{
			idc = 8105;
			text = "";
			onButtonClick = "enceintes_disco say3D 'lessardines'";
			colorText[] = {-1,-1,-1,0};
			colorDisabled[] = {-1,-1,-1,0};
			colorBackground[] = {-1,-1,-1,0};
			colorBackgroundDisabled[] = {-1,-1,-1,0};
			colorBackgroundActive[] = {-1,-1,-1,0};
			colorFocused[] = {-1,-1,-1,0};
			colorShadow[] = {-1,-1,-1,0};
			colorBorder[] = {-1,-1,-1,0};
			colorBackground2[] = {-1,-1,-1,0};
			x = 0.0125;
			y = 0.26;
			w = 0.35;
			h = 0.04;
		};
		class KendjiGirac_Button: life_RscButtonMenu
		{
			idc = 8155;
			text = ""; 
			onButtonClick = "enceintes_disco say3D 'kendji'";
			colorText[] = {-1,-1,-1,0};
			colorDisabled[] = {-1,-1,-1,0};
			colorBackground[] = {-1,-1,-1,0};
			colorBackgroundDisabled[] = {-1,-1,-1,0};
			colorBackgroundActive[] = {-1,-1,-1,0};
			colorFocused[] = {-1,-1,-1,0};
			colorShadow[] = {-1,-1,-1,0};
			colorBorder[] = {-1,-1,-1,0};
			colorBackground2[] = {-1,-1,-1,0};
			x = 0.0125;
			y = 0.32;
			w = 0.2375;
			h = 0.04;
		};
		class Disclosure_Button: life_RscButtonMenu
		{
			idc = 8205;
			text = ""; 
			onButtonClick = "enceintes_disco say3D 'disclosure'";
			colorText[] = {-1,-1,-1,0};
			colorDisabled[] = {-1,-1,-1,0};
			colorBackground[] = {-1,-1,-1,0};
			colorBackgroundDisabled[] = {-1,-1,-1,0};
			colorBackgroundActive[] = {-1,-1,-1,0};
			colorFocused[] = {-1,-1,-1,0};
			colorShadow[] = {-1,-1,-1,0};
			colorBorder[] = {-1,-1,-1,0};
			colorBackground2[] = {-1,-1,-1,0};
			x = 0.0125;
			y = 0.38;
			w = 0.25;
			h = 0.04;
		};
		class JoeStone_Button: life_RscButtonMenu
		{
			idc = 8255;
			text = ""; 
			onButtonClick = "enceintes_disco say3D 'joestone'";
			colorText[] = {-1,-1,-1,0};
			colorDisabled[] = {-1,-1,-1,0};
			colorBackground[] = {-1,-1,-1,0};
			colorBackgroundDisabled[] = {-1,-1,-1,0};
			colorBackgroundActive[] = {-1,-1,-1,0};
			colorFocused[] = {-1,-1,-1,0};
			colorShadow[] = {-1,-1,-1,0};
			colorBorder[] = {-1,-1,-1,0};
			colorBackground2[] = {-1,-1,-1,0};
			x = 0.0125;
			y = 0.44;
			w = 0.425;
			h = 0.04;
		};
		class DavidGuetta_Button: life_RscButtonMenu
		{
			idc = 8305;
			text = ""; 
			onButtonClick = "enceintes_disco say3D 'davidguetta'";
			colorText[] = {-1,-1,-1,0};
			colorDisabled[] = {-1,-1,-1,0};
			colorBackground[] = {-1,-1,-1,0};
			colorBackgroundDisabled[] = {-1,-1,-1,0};
			colorBackgroundActive[] = {-1,-1,-1,0};
			colorFocused[] = {-1,-1,-1,0};
			colorShadow[] = {-1,-1,-1,0};
			colorBorder[] = {-1,-1,-1,0};
			colorBackground2[] = {-1,-1,-1,0};
			x = 0.0125;
			y = 0.5;
			w = 0.425;
			h = 0.04;
		};
		class Bontan_Button: life_RscButtonMenu
		{
			idc = 8355;
			text = ""; 
			onButtonClick = "enceintes_disco say3D 'firefly'";
			colorText[] = {-1,-1,-1,0};
			colorDisabled[] = {-1,-1,-1,0};
			colorBackground[] = {-1,-1,-1,0};
			colorBackgroundDisabled[] = {-1,-1,-1,0};
			colorBackgroundActive[] = {-1,-1,-1,0};
			colorFocused[] = {-1,-1,-1,0};
			colorShadow[] = {-1,-1,-1,0};
			colorBorder[] = {-1,-1,-1,0};
			colorBackground2[] = {-1,-1,-1,0};
			x = 0.0125;
			y = 0.56;
			w = 0.4375;
			h = 0.04;
		};
		class CapitaineFlam_Button: life_RscButtonMenu
		{
			idc = 8405;
			text = ""; 
			onButtonClick = "enceintes_disco say3D 'capitaineflam'";
			colorText[] = {-1,-1,-1,0};
			colorDisabled[] = {-1,-1,-1,0};
			colorBackground[] = {-1,-1,-1,0};
			colorBackgroundDisabled[] = {-1,-1,-1,0};
			colorBackgroundActive[] = {-1,-1,-1,0};
			colorFocused[] = {-1,-1,-1,0};
			colorShadow[] = {-1,-1,-1,0};
			colorBorder[] = {-1,-1,-1,0};
			colorBackground2[] = {-1,-1,-1,0};
			x = 0.0125;
			y = 0.62;
			w = 0.4;
			h = 0.04;
		};
		class Avicii_Button: life_RscButtonMenu
		{
			idc = 8455;
			text = ""; 
			onButtonClick = "enceintes_disco say3D 'avicii'";
			colorText[] = {-1,-1,-1,0};
			colorDisabled[] = {-1,-1,-1,0};
			colorBackground[] = {-1,-1,-1,0};
			colorBackgroundDisabled[] = {-1,-1,-1,0};
			colorBackgroundActive[] = {-1,-1,-1,0};
			colorFocused[] = {-1,-1,-1,0};
			colorShadow[] = {-1,-1,-1,0};
			colorBorder[] = {-1,-1,-1,0};
			colorBackground2[] = {-1,-1,-1,0};
			x = 0.0125;
			y = 0.68;
			w = 0.4625;
			h = 0.04;
		};
		class Alesso_Button: life_RscButtonMenu
		{
			idc = 8505;
			text = ""; 
			onButtonClick = "enceintes_disco say3D 'alesso'";
			colorText[] = {-1,-1,-1,0};
			colorDisabled[] = {-1,-1,-1,0};
			colorBackground[] = {-1,-1,-1,0};
			colorBackgroundDisabled[] = {-1,-1,-1,0};
			colorBackgroundActive[] = {-1,-1,-1,0};
			colorFocused[] = {-1,-1,-1,0};
			colorShadow[] = {-1,-1,-1,0};
			colorBorder[] = {-1,-1,-1,0};
			colorBackground2[] = {-1,-1,-1,0};
			x = 0.0125;
			y = 0.74;
			w = 0.35;
			h = 0.04;
		};
		class Queleuleu_Button: life_RscButtonMenu
		{
			idc = 8555;
			text = ""; 
			onButtonClick = "enceintes_disco say3D 'queuleuleu'";
			colorText[] = {-1,-1,-1,0};
			colorDisabled[] = {-1,-1,-1,0};
			colorBackground[] = {-1,-1,-1,0};
			colorBackgroundDisabled[] = {-1,-1,-1,0};
			colorBackgroundActive[] = {-1,-1,-1,0};
			colorFocused[] = {-1,-1,-1,0};
			colorShadow[] = {-1,-1,-1,0};
			colorBorder[] = {-1,-1,-1,0};
			colorBackground2[] = {-1,-1,-1,0};
			x = 0.0125;
			y = 0.8;
			w = 0.2;
			h = 0.04;
		};
		class MartinSolveig_Button: life_RscButtonMenu
		{
			idc = 8605;
			text = "";
			onButtonClick = "enceintes_disco say3D 'martinsolveig'";
			colorText[] = {-1,-1,-1,0};
			colorDisabled[] = {-1,-1,-1,0};
			colorBackground[] = {-1,-1,-1,0};
			colorBackgroundDisabled[] = {-1,-1,-1,0};
			colorBackgroundActive[] = {-1,-1,-1,0};
			colorFocused[] = {-1,-1,-1,0};
			colorShadow[] = {-1,-1,-1,0};
			colorBorder[] = {-1,-1,-1,0};
			colorBackground2[] = {-1,-1,-1,0};
			x = 0.0125;
			y = 0.86;
			w = 0.2;
			h = 0.04;
		};
		class Boutton_Fermer: life_RscButtonMenu
		{
			idc = 8655;
			text = "";
			onButtonClick = "closeDialog 0;";
			colorBackground[] = {-1,-1,-1,0.4};
			colorText[] = {1,1,1,1};
			colorFocused[] = {0.4,0.4,0.4,0.4};
			x = 0.8625;
			y = 0.92;
			w = 0.1;
			h = 0.04;
		};
	};
};
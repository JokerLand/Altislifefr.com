class Life_my_smartphone {
	idd = 88888;
	name = "life_my_telephone_menu";
	movingEnable = false;
	enableSimulation = true;
	onLoad = "[] spawn life_fnc_smartphone;";
	
	class controlsBackground {
		class background: life_RscPicture
		{
			idc = 1000;
			text = "textures\phone.paa";
			x = 0;
			y = -0.12;
			w = 1;
			h = 1.28;
		};
	};
	
	class controls {
		class SendMessageButton: life_RscButtonMenu
		{
			idc = 887892;
			x = 0.13702;
			y = 0.786128;
			w = 0.2125;
			h = 0.0282155;
			tooltip = "Envoyer un message au joueur séléctionné";
			onButtonClick = "[4] call life_fnc_smartphone;";
			colorText[] = {-1,-1,-1,0};
			colorDisabled[] = {-1,-1,-1,0};
			colorBackground[] = {-1,-1,-1,0};
			colorBackgroundDisabled[] = {-1,-1,-1,0};
			colorBackgroundActive[] = {-1,-1,-1,0};
			colorFocused[] = {-1,-1,-1,0};
			colorShadow[] = {-1,-1,-1,0};
			colorBorder[] = {-1,-1,-1,0};
			colorBackground2[] = {-1,-1,-1,0};
			tooltipColorText[] = {1,1,1,1};
			tooltipColorBox[] = {1,1,1,1};
			tooltipColorShade[] = {0,0,0,0.65};
			animTextureNormal = "";
			animTextureDisabled = "";
			animTextureOver = "";
			animTextureFocused = "";
			animTexturePressed = "";
			animTextureDefault = "";
		};
		class EmergencyMessageButton: life_RscButtonMenu
		{
			idc = 1601;
			x = 0.569823;
			y = 0.769899;
			w = 0.141288;
			h = 0.0349495;
			tooltip = "Envoyer un message aux urgences";
			onButtonClick = "createDialog ""Life_smartphone_notruf"";";
			colorText[] = {-1,-1,-1,0};
			colorDisabled[] = {-1,-1,-1,0};
			colorBackground[] = {-1,-1,-1,0};
			colorBackgroundDisabled[] = {-1,-1,-1,0};
			colorBackgroundActive[] = {-1,-1,-1,0};
			colorFocused[] = {-1,-1,-1,0};
			colorShadow[] = {-1,-1,-1,0};
			colorBorder[] = {-1,-1,-1,0};
			colorBackground2[] = {-1,-1,-1,0};
			tooltipColorText[] = {1,1,1,1};
			tooltipColorBox[] = {1,1,1,1};
			tooltipColorShade[] = {0,0,0,0.65};
			animTextureNormal = "";
			animTextureDisabled = "";
			animTextureOver = "";
			animTextureFocused = "";
			animTexturePressed = "";
			animTextureDefault = "";
		};
		class EnterpriseMessageButton: life_RscButtonMenu
		{
			idc = 1602;
			x = 0.725126;
			y = 0.771784;
			w = 0.140404;
			h = 0.0393939;
			tooltip = "Message aux entreprises";
			onButtonClick = "createDialog ""Life_smartphone_comp"";";
			colorText[] = {-1,-1,-1,0};
			colorDisabled[] = {-1,-1,-1,0};
			colorBackground[] = {-1,-1,-1,0};
			colorBackgroundDisabled[] = {-1,-1,-1,0};
			colorBackgroundActive[] = {-1,-1,-1,0};
			colorFocused[] = {-1,-1,-1,0};
			colorShadow[] = {-1,-1,-1,0};
			colorBorder[] = {-1,-1,-1,0};
			colorBackground2[] = {-1,-1,-1,0};
			tooltipColorText[] = {1,1,1,1};
			tooltipColorBox[] = {1,1,1,1};
			tooltipColorShade[] = {0,0,0,0.65};
			animTextureNormal = "";
			animTextureDisabled = "";
			animTextureOver = "";
			animTextureFocused = "";
			animTexturePressed = "";
			animTextureDefault = "";
		};
		class ExitButton: life_RscButtonMenu
		{
			idc = 1603;
			x = 0.883712;
			y = 0.454949;
			w = 0.05;
			h = 0.14;
			tooltip = "Quitter";
			onButtonClick = "closeDialog 0;"; // Message
			colorText[] = {-1,-1,-1,0};
			colorDisabled[] = {-1,-1,-1,0};
			colorBackground[] = {-1,-1,-1,0};
			colorBackgroundDisabled[] = {-1,-1,-1,0};
			colorBackgroundActive[] = {-1,-1,-1,0};
			colorFocused[] = {-1,-1,-1,0};
			colorShadow[] = {-1,-1,-1,0};
			colorBorder[] = {-1,-1,-1,0};
			colorBackground2[] = {-1,-1,-1,0};
			tooltipColorText[] = {1,1,1,1};
			tooltipColorBox[] = {1,1,1,1};
			tooltipColorShade[] = {0,0,0,0.65};
			animTextureNormal = "";
			animTextureDisabled = "";
			animTextureOver = "";
			animTextureFocused = "";
			animTexturePressed = "";
			animTextureDefault = "";
		};
		class PlayerList: life_RscListbox
		{
			idc = 88881;
			x = 0.1377;
			y = 0.3;
			w = 0.211111;
			h = 0.488883;
			onLBSelChanged = "[2] spawn life_fnc_smartphone;";
		};
		class MessageList : Life_RscListNBox
		{
			idc = 88882;
			onLBSelChanged = "[(lbCurSel 88882)] call life_fnc_showMsg;";
			sizeEx = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
			colorBackground[] = {0, 0, 0, 0.0};
			columns[] = {0,0.3};
			x = 0.354167;
			y = 0.3;
			w = 0.511237;
			h = 0.194949;
		};
		class RandomTitle : Life_RscTitle {
			colorBackground[] = {0, 0, 0, 0};
			idc = 88890;
			text = "SELECTIONNEZ UN MESSAGE";
			sizeEx = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.9)";
			x = 0.356061;
			y = 0.5164;
			w = 0.510354;
			h = 0.0360269;
		};
		class TextShow : Life_RscControlsGroup {
			x = 0.35606;
			y = 0.550505;
			w = 0.510353;
			h = 0.211111;
			class HScrollbar : HScrollbar {
				height = 0;
			};
			class controls {
				class showText : Life_RscStructuredText {
					idc = 88887;
					text = "";
					colorBackground[] = {0,0,0,0};
					size = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
					shadow = 0;
					x = 0;
					y = 0;
					w = 0.510353;
					h = 0.211111;
				};
			};
		};
	};
};

class Life_smartphone_schreiben
{
	idd = 88883;
	name = "life_my_smartphone_schreiben";
	movingEnable = false;
	enableSimulation = true;
	onLoad = "";
	

	class controlsBackground {
		class Life_RscTitleBackground:Life_RscText {
			colorBackground[] = {0,0.27,0.23,1};
			idc = -1;
			x = 0.1;
			y = 0.2;
			w = 0.6;
			h = (1 / 25);
		};
		
		class MainBackground:Life_RscText {
			colorBackground[] = {0, 0, 0, 0.7};
			idc = -1;
			x = 0.1;
			y = 0.2 + (11 / 250);
			w = 0.6;
			h = 0.1;
		};
		
	};
	class controls {
		class Title : Life_RscTitle {
			colorBackground[] = {0, 0, 0, 0};
			idc = 88886;
			text = "$STR_SMARTPHONE_NACHRICHTTITLE";
			x = 0.1;
			y = 0.2;
			w = 0.95;
			h = (1 / 25);
		};
		
		class Absenden : Life_RscButtonMenu {
			idc = 88885;
			text = "$STR_SMARTPHONE_ABSENDEN";
			onButtonClick = "[1,-1,(ctrlText 88884)] call life_fnc_newMsg;";
			colorBackground[] = {0,0.27,0.23,1};
			x = 0.6 - (6.25 / 40) + 0.088;
			y = 0.3 + (1 / 25)  - 0.048;
			w = (6.25 / 40);
			h = (1 / 25);
		};
		
		class AdminMsg : life_RscButtonMenu 
		{
			idc = 888897;
			text = "$STR_CELL_AdminMsg";
			colorBackground[] = {0,0.27,0.23,1};
			onButtonClick = "[5,-1,(ctrlText 88884)] call life_fnc_newMsg;";
			
			x = 0.6 - (6.25 / 40) - 0.121;
			y = 0.3 + (1 / 25)  - 0.048;
			w = 0.2;
			h = (1 / 25);
		};
		
		class Close : Life_RscButtonMenu {
			idc = -1;
			text = "$STR_Global_Close";
			onButtonClick = "closeDialog 0;";
			colorBackground[] = {0.584, 0.086, 0.086,1.0};
			x = 0.11;
			y = 0.3 + (1 / 25)  - 0.048;
			w = (6.25 / 40);
			h = (1 / 25);
		};
		
		class textEdit : Life_RscEdit {
			idc = 88884;
			text = "";
			sizeEx = 0.030;
			x = 0.11; y = 0.3 - 0.048;
			w = 0.58; h = 0.03;
		};
	
	};
	
};

class Life_smartphone_notruf {
	idd = 887890;
	name= "life_my_smartphone_notruf";
	movingEnable = false;
	enableSimulation = true;
	onLoad = "[6] spawn life_fnc_newMsg;";
	
	class controlsBackground {
		class Life_RscTitleBackground:Life_RscText {
			colorBackground[] = {0.584, 0.086, 0.086,1.0};
			idc = -1;
			x = 0.1;
			y = 0.2;
			w = 0.64;
			h = (1 / 25);
		};
		
		class MainBackground:Life_RscText {
			colorBackground[] = {0, 0, 0, 0.7};
			idc = -1;
			x = 0.1;
			y = 0.2 + (11 / 250);
			w = 0.64;
			h = 0.15 - (5 / 250);
		};
	};
	
	class controls {

		
		class Title : Life_RscTitle {
			colorBackground[] = {0, 0, 0, 0};
			idc = 888892;
			text = "$STR_SMARTPHONE_Notruftitle";
			x = 0.1;
			y = 0.2;
			w = 0.6;
			h = (1 / 25);
		};
		
		class textEdit : Life_RscEdit {
		
		idc = 888894;
		
		text = "";
		sizeEx = 0.030;
		x = 0.11; y = 0.25;
		w = 0.62; h = 0.03;
		
		};
		
		class TxtCopButton : life_RscButtonMenu 
		{
			idc = 888895;
			text = "$STR_CELL_TextPolice";
			colorBackground[] = {0.584, 0.086, 0.086,1.0};
			onButtonClick = "[2,-1,(ctrlText 888894)] call life_fnc_newMsg;";
			
			x = 0.32;
			y = 0.30;
			w = 0.2;
			h = (1 / 25);
		};
		
		class TxtAdminButton : life_RscButtonMenu 
		{
			idc = 888896;
			text = "$STR_CELL_TextAdmins";
			colorBackground[] = {0.584, 0.086, 0.086,1.0};
			onButtonClick = "[3,-1,(ctrlText 888894)] call life_fnc_newMsg;";
			
			x = 0.53;
			y = 0.30;
			w = 0.2;
			h = (1 / 25);
		};
		
		
		class AdminMsgAll : life_RscButtonMenu 
		{
			idc = 888898;
			text = "$STR_CELL_AdminMSGAll";
			colorBackground[] = {0.584, 0.086, 0.086,1.0};
			onButtonClick = "[7,-1,(ctrlText 888894)] call life_fnc_newMsg;";
			
			x = 0.53;
			y = 0.30;
			w = 0.2;
			h = (1 / 25);
		};
		
		class EMSReq : life_RscButtonMenu
		{
			idc = 888899;
			text = "$STR_CELL_EMSRequest";
			colorBackground[] = {0.584, 0.086, 0.086,1.0};
			onButtonClick = "[4,-1,(ctrlText 888894)] call life_fnc_newMsg;";
			
			x = 0.11;
			y = 0.30;
			w = 0.2;
			h = (1 / 25);
		};
		
		class CloseButton : Life_RscButtonMenu {
			idc = -1;
			text = "$STR_Global_Close";
			onButtonClick = "closeDialog 0;";
			x = -0.06 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.36 + (1 / 50);
			w = (6.25 / 40);
			h = (1 / 25);
		};
	};
};

class Life_smartphone_comp {
	idd = 156441;
	name= "life_my_smartphone_comp";
	movingEnable = false;
	enableSimulation = true;
	onLoad = "";
	
	class controlsBackground {
		class Life_RscTitleBackground:Life_RscText {
			colorBackground[] = {0.584, 0.086, 0.086,1.0};
			idc = -1;
			x = 0.1;
			y = 0.2;
			w = 0.64;
			h = (1 / 25);
		};
		
		class MainBackground:Life_RscText {
			colorBackground[] = {0, 0, 0, 0.7};
			idc = -1;
			x = 0.1;
			y = 0.2 + (11 / 250);
			w = 0.64;
			h = 0.15 - (5 / 250);
		};
	};
	
	class controls {

		
		class Title : Life_RscTitle {
			colorBackground[] = {0, 0, 0, 0};
			idc = -1;
			text = "Entreprises";
			x = 0.1;
			y = 0.2;
			w = 0.6;
			h = (1 / 25);
		};
		
		class textEdit : Life_RscEdit {
			idc = 156442;
			text = "";
			sizeEx = 0.030;
			x = 0.11; y = 0.25;
			w = 0.62; h = 0.03;
		};
		
		class TxtRsButton : life_RscButtonMenu 
		{
			idc = 156443;
			text = "RS Depanage";
			colorBackground[] = {0.584, 0.086, 0.086,1.0};
			onButtonClick = "[8,-1,(ctrlText 156442)] call life_fnc_newMsg;";
			
			x = 0.32;
			y = 0.30;
			w = 0.2;
			h = (1 / 25);
		};
		
		class TxtConaButton : life_RscButtonMenu 
		{
			idc = 156444;
			text = "G.I.S";
			colorBackground[] = {0.584, 0.086, 0.086,1.0};
			onButtonClick = "[9,-1,(ctrlText 156442)] call life_fnc_newMsg;";
			
			x = 0.11;
			y = 0.30;
			w = 0.2;
			h = (1 / 25);
		};
		
		
		class Reserved : life_RscButtonMenu 
		{
			idc = 156445;
			text = "Reservé";
			colorBackground[] = {0.584, 0.086, 0.086,1.0};
			onButtonClick = "";
			
			x = 0.53;
			y = 0.30;
			w = 0.2;
			h = (1 / 25);
		};
		
		class CloseButton : Life_RscButtonMenu {
			idc = -1;
			text = "$STR_Global_Close";
			onButtonClick = "closeDialog 0;";
			x = -0.06 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.36 + (1 / 50);
			w = (6.25 / 40);
			h = (1 / 25);
		};
	};
};
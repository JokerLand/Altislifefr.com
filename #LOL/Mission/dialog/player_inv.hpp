class life_player_menu {
	idd = 2001;
	name= "life_player_menu";
	movingEnable = false;
	enableSimulation = true;
	onLoad="[] spawn life_fnc_p_updateMenu;";
	class controlsBackground {
		class background: life_RscPicture
		{
			idc = 1000;
			text = "textures\tablette.paa";
			x = 0;
			y = -0.12;
			w = 1;
			h = 1.28;
		};
	};
	class controls {
		class Bank_Text: life_RscText
		{
			idc = 1100;
			text = "";
			x = 0.1125;
			y = 0.212;
			w = 0.1875;
			h = 0.04;
		};
		class Cash_Text: life_RscText
		{
			idc = 1101;
			text = "";
			x = 0.1125;
			y = 0.27;
			w = 0.1875;
			h = 0.04;
		};
		class Weight: life_RscText
		{
			idc = 1102;
			text="";
			SizeEx = 0.025;
			x = 0.7435;
			y = 0.2036;
			w = 0.079;
			h = 0.01;
		};
		class Licenses_Menu : Life_RscControlsGroup
		{
			idc = -1;
			x = 0.37875;
			y = 0.2052;
			w = 0.25;
			h = 0.44;
			class Controls
			{
				class Licenses_Text: life_RscStructuredText
				{
					idc = 1200;
					text="Chargement...";
					x = 0;
					y = 0;
					w = 0.24;
					h = 0.65;
				};
			};
		};
		class ItemsList: life_RscListbox
		{
			idc = 1300;
			x = 0.702;
			y = 0.224;
			w = 0.236836;
			h = 0.3861;
		};
		class NearList: life_RscCombo
		{
			idc = 1400;
			x = 0.70175;
			y = 0.6584;
			w = 0.135227;
			h = 0.0250505;
		};
		class MoneyNearList: life_RscCombo
		{
			idc = 1401;
			x = 0.07325;
			y = 0.3872;
			w = 0.230177;
			h = 0.0349496;
		};
		class MoneyEdit: life_RscEdit
		{
			idc = 1500;
			text = "0";
			x = 0.07375;
			y = 0.3466;
			w = 0.138763;
			h = 0.029;
		};
		class GiveMoneyButton: life_RscButtonMenu
		{
			idc = 1600;
			x = 0.22125;
			y = 0.347;
			w = 0.0834;
			h = 0.0285;
			tooltip = "Donner de l'Argent au joueur séléctionné";
			onButtonClick = "[] call life_fnc_giveMoney";
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
		class UseItemButton: life_RscButtonMenu
		{
			idc = 1601;
			x = 0.70375;
			y = 0.6135;
			w = 0.113889;
			h = 0.029;
			tooltip = "Utiliser l'objet séléctionné";
			onButtonClick = "[] call life_fnc_useItem;";
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
		class DeleteItemButton: life_RscButtonMenu
		{
			idc = 1602;
			x = 0.8425;
			y = 0.6135;
			w = 0.099;
			h = 0.03;
			tooltip = "Supprimer l'objet séléctionné";
			onButtonClick = "[] call life_fnc_removeItem;";
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
		class GiveItemButton: life_RscButtonMenu
		{
			idc = 1603;
			x = 0.84425;
			y = 0.65;
			w = 0.0962123;
			h = 0.0385185;
			tooltip = "Donner l'objet séléctionné au joueur séléctionné";
			onButtonClick = "[] call life_fnc_giveItem;";
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
		class SettingsButton: life_RscButtonMenu
		{
			idc = 1604;
			x = 0.240;
			y = 0.7344;
			w = 0.052;
			h = 0.068;
			tooltip = "Paramètres du Joueur";
			onButtonClick = "[] call life_fnc_settingsMenu;";
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
		class GangWantedButton: life_RscButtonMenu
		{
			idc = 1605;
			x = 0.394;
			y = 0.7344;
			w = 0.052;
			h = 0.068;
			tooltip = "Gestion/Création de Gangs";
			onButtonClick = "if(isNil ""life_action_gangInUse"") then {if(isNil {(group player) getVariable ""gang_owner""}) then {createDialog ""Life_Create_Gang_Diag"";} else {[] spawn life_fnc_gangMenu;};};";
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
		class WantedButton: life_RscButtonMenu
		{
			idc = 1613;
			x = 0.394;
			y = 0.7344;
			w = 0.052;
			h = 0.068;
			tooltip = "Interpol/Wanted List";
			onButtonClick = "[] call life_fnc_wantedMenu";
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
		class SyncButton: life_RscButtonMenu
		{
			idc = 1606;
			x = 0.1028;
			y = 0.7347;
			w = 0.049;
			h = 0.06;
			tooltip = "Synchronisation des données du joueur avec le serveur";
			onButtonClick = "[] call SOCK_fnc_syncData;";
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
		class PhoneButton: life_RscButtonMenu
		{
			idc = 1607;
			x = 0.54625;
			y = 0.7344;
			w = 0.056;
			h = 0.068;
			tooltip = "Accéder au Téléphone (Necessite l'objet : ""Radio"")";
			onButtonClick = "[] call life_fnc_cellphone2;";
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
		class KeyButton: life_RscButtonMenu
		{
			idc = 1608;
			x = 0.7;
			y = 0.7334;
			w = 0.056;
			h = 0.068;
			tooltip = "Gérer votre porte-clés";
			onButtonClick = "createDialog ""Life_key_management"";";
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
		class TalentButton: life_RscButtonMenu
		{
			idc = 1609;
			x = 0.85;
			y = 0.7334;
			w = 0.045;
			h = 0.068;
			tooltip = "Arbre des Talents";
			onButtonClick = "createDialog ""life_talent_menu"";";
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
		class MarketButton: life_RscButtonMenu
		{
			idc = 1610;
			x = 0.0625;
			y = 0.627;
			w = 0.0431818;
			h = 0.052862;
			tooltip = "Prix du Marché / Bourses des produits";
			onButtonClick = "[] spawn life_fnc_openMarketView;";
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
		class RulesButton: life_RscButtonMenu
		{
			idc = 1611;
			x = 0.0837121;
			y = 0.875;
			w = 0.0397727;
			h = 0.0563;
			tooltip = "Règles du Serveur";
			onButtonClick = "createDialog ""life_rules_menu"";";
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
		class AdminButton: life_RscButtonMenu
		{
			idc = 1612;
			x = 0.13;
			y = 0.875;
			w = (6.25 / 40);
			h = (1 / 25);
			text = "Menu Admin";
			tooltip = "Menu d'Administration du Serveur";
			onButtonClick = "createDialog ""life_admin_menu"";";
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
	};
};
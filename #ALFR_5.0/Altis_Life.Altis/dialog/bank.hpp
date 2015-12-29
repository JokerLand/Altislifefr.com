class Life_atm_management {
	idd = 2700;
	name= "life_atm_menu";
	movingEnable = false;
	enableSimulation = true;
	
	class controlsBackground {
		class Life_RscTitleBackground: Life_RscText
		{
			idc = -1;

			x = 0.35504 * safezoneW + safezoneX;
			y = 0.289953 * safezoneH + safezoneY;
			w = 0.263564 * safezoneW;
			h = 0.0280062 * safezoneH;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])","(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
		};
		class MainBackground: Life_RscText
		{
			idc = -1;

			x = 0.35504 * safezoneW + safezoneX;
			y = 0.317959 * safezoneH + safezoneY;
			w = 0.263564 * safezoneW;
			h = 0.406091 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
		};
	};
	
	class controls {

		class CashTitle: Life_RscStructuredText
		{
			idc = 2701;

			x = 0.414342 * safezoneW + safezoneX;
			y = 0.331963 * safezoneH + safezoneY;
			w = 0.158139 * safezoneW;
			h = 0.0980219 * safezoneH;
		};
		class Title: Life_RscTitle
		{
			idc = -1;

			text = "$STR_ATM_Title";
			x = 0.35504 * safezoneW + safezoneX;
			y = 0.289953 * safezoneH + safezoneY;
			w = 0.316277 * safezoneW;
			h = 0.0280062 * safezoneH;
			colorText[] = {0.95,0.95,0.95,1};
		};
		class WithdrawButton: Life_RscButtonMenu
		{
			onButtonClick = "[] call life_fnc_bankWithdraw";

			idc = 1004;
			text = "$STR_ATM_Withdraw";
			x = 0.440698 * safezoneW + safezoneX;
			y = 0.471994 * safezoneH + safezoneY;
			w = 0.0922475 * safezoneW;
			h = 0.0280062 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",0.5};
		};
		class DepositButton: Life_RscButtonMenu
		{
			onButtonClick = "[] call life_fnc_bankDeposit";

			idc = 1005;
			text = "$STR_ATM_Deposit";
			x = 0.440698 * safezoneW + safezoneX;
			y = 0.514003 * safezoneH + safezoneY;
			w = 0.0922475 * safezoneW;
			h = 0.0280062 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",0.5};
		};
		class moneyEdit: Life_RscEdit
		{
			idc = 2702;

			text = "100";
			x = 0.420931 * safezoneW + safezoneX;
			y = 0.429984 * safezoneH + safezoneY;
			w = 0.131782 * safezoneW;
			h = 0.0280062 * safezoneH;
		};
		class PlayerList: Life_RscCombo
		{
			idc = 2703;

			x = 0.381396 * safezoneW + safezoneX;
			y = 0.570016 * safezoneH + safezoneY;
			w = 0.210851 * safezoneW;
			h = 0.0280062 * safezoneH;
		};
		class TransferButton: Life_RscButtonMenu
		{
			onButtonClick = "[] call life_fnc_bankTransfer";

			idc = 1008;
			text = "$STR_ATM_Transfer";
			x = 0.407753 * safezoneW + safezoneX;
			y = 0.612025 * safezoneH + safezoneY;
			w = 0.158139 * safezoneW;
			h = 0.0280062 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",0.5};
		};
		class GangDeposit: TransferButton
		{
			idc = 2705;
			onButtonClick = "[] call life_fnc_gangDeposit";
			lineSpacing = 2;
			text = "$STR_pInAct_DepositToGang";
			x = 0.381396 * safezoneW + safezoneX;
			y = 0.668037 * safezoneH + safezoneY;
			w = 0.210851 * safezoneW;
			h = 0.0280062 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",0.5};
		};
		class CloseButtonKey: Life_RscButtonMenu
		{
			onButtonClick = "closeDialog 0;";
			idc = 1010;

			text = "$STR_Global_Close";
			x = 0.35504 * safezoneW + safezoneX;
			y = 0.729371 * safezoneH + safezoneY;
			w = 0.0823638 * safezoneW;
			h = 0.0280062 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.8};
			
			class Attributes {
				align = "center";
			};
		};

	};
};
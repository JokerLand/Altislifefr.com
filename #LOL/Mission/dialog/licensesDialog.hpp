class LicenseShop {
idd = 5546;
name= "life_license_shop";
movingEnable = false;
enableSimulation = true;
onLoad = "uiNamespace setVariable [""LicenseShop"", _this select 0];";
objects[] = { };
	class controls {

 
		class RscTitleBackground : Life_RscText
		{
			colorBackground[] = {0,0.27,0.23,1};
			idc = -1;
			text = "Préfecture"; //--- ToDo: Localize;
			x = 0.1;
			y = 0.2;
			w = 0.775;
			h = 0.04;
		};
 
		class Mainbackground : Life_RscText
		{
			colorBackground[] = {0,0,0,0.7};
			idc = -1;
			x = 0.1;
			y = 0.244;
			w = 0.775;
			h = 0.52;
		};
		
		class listbox: Life_RscListBox
		{
			idc = 55126;
			sizeEx = 0.035;
			x = 0.1125;
			y = 0.3;
			w = 0.3125;
			h = 0.4;
		};
		
		class ShowLicenseslistbox: Life_RscListBox
		{
			idc = 55131;
			x = 0.55;
			y = 0.3;
			w = 0.3125;
			h = 0.4;
		};
		
		class MyLicenses : Life_RscText
		{
			idc = 55130;
			text = "Disponibles"; //--- ToDo: Localize;
			x = 0.1875;
			y = 0.24;
			w = 0.1375;
			h = 0.04;
		};
		
		class ShowLicenses : Life_RscText
		{
			idc = 55129;
			text = "Mes Licenses"; //--- ToDo: Localize;
			x = 0.65;
			y = 0.24;
			w = 0.1375;
			h = 0.04;
		};
		
		class buybutton: Life_RscButtonMenu
		{
			idc = 55127;
			text = "$STR_Global_Buy";
			x = 0.4125;
			y = 0.72;
			w = 0.15;
			h = 0.04;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.8};
			action = "if( (lbData[55126,lbCurSel (55126)] != """") ) then { [false, false, false, lbData[55126,lbCurSel (55126)]] call life_fnc_buyLicense; closeDialog 0; };";
		};
	};
};
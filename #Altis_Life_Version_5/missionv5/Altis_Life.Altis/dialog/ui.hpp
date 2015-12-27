#define INFINITE 1e+1000
#define IDC_LIFE_BAR_FOOD 2200
#define IDC_LIFE_BAR_WATER 2201
#define IDC_LIFE_PICTURE_FOOD 1200
#define IDC_LIFE_PICTURE_WATER 1201
#define IDC_LIFE_FOOD_TEXT 1000
#define IDC_LIFE_WATER_TEXT 1001



/*
	Name: Dillon "Itsyuka" Modine-Thuen
	File: ui.hpp
*/

class playerHUD {
	idd = -1;
	duration = INFINITE;
	movingEnable = 0;
	fadein = 0;
	fadeout = 0;
	name = "playerHUD";
	onLoad = "uiNamespace setVariable ['playerHUD',_this select 0]";
	objects[] = {};
	controls[] = {
		LIFE_UI_BACK,
		LIFE_BAR_FOOD,
		LIFE_BAR_WATER,
		LIFE_PICTURE_FOOD,
		LIFE_PICTURE_WATER,
		LIFE_FOOD_TEXT,
		LIFE_WATER_TEXT,
	};
	/* Background */
	class LIFE_UI_BACK: Life_RscBackground
	{
		colorBackground[] = {0,0,0,0.5};
		x = 0.907056 * safezoneW + safezoneX;
		y = 0.802 * safezoneH + safezoneY;
		w = 0.0855 * safezoneW; //0825
		h = 0.07 * safezoneH;
	};

	/* Progress Bars */
	class LIFE_BAR_FOOD: Life_RscProgress
	{
		idc = IDC_LIFE_BAR_FOOD;
		x = 0.929081 * safezoneW + safezoneX; // x = déplacement gauche - droite
		y = 0.81 * safezoneH + safezoneY; // y = déplacement haut - bas Soustraire pour monter , additionner pour descendre
		w = 0.061975 * safezoneW; // w = taille gauche-droite
		h = 0.022 * safezoneH; // h = taille haut - bas
	};
	class LIFE_BAR_WATER: Life_RscProgress
	{
		idc = IDC_LIFE_BAR_WATER;
		x = 0.929081 * safezoneW + safezoneX;
		y = 0.843 * safezoneH + safezoneY;
		w = 0.061975 * safezoneW;
		h = 0.022 * safezoneH;
	};

	/* Text */

	class LIFE_FOOD_TEXT: Life_RscText
	{
		idc = IDC_LIFE_FOOD_TEXT;
		text = "";
		x = 0.949706 * safezoneW + safezoneX;
		y = 0.8144 * safezoneH + safezoneY;
		w = 0.020725 * safezoneW;
		h = 0.011 * safezoneH;
	};
	class LIFE_WATER_TEXT: Life_RscText
	{
		idc = IDC_LIFE_WATER_TEXT;
		text = "";
		x = 0.949705 * safezoneW + safezoneX;
		y = 0.8474 * safezoneH + safezoneY;
		w = 0.020725 * safezoneW;
		h = 0.011 * safezoneH;
	};

	/* Icons */
	class LIFE_PICTURE_FOOD: life_RscPicture
	{
		idc = IDC_LIFE_PICTURE_FOOD;
		text = "icons\food.paa";
		x = 0.913613 * safezoneW + safezoneX;
		y = 0.81 * safezoneH + safezoneY;
		w = 0.0301; h = 0.04;
	};
	class LIFE_PICTURE_WATER: life_RscPicture
	{
		idc = IDC_LIFE_PICTURE_WATER;
		text = "icons\water.paa";
		x = 0.913613 * safezoneW + safezoneX;
		y = 0.843 * safezoneH + safezoneY;
		w = 0.0301; h = 0.04;
	};
};
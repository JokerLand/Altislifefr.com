#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Intendance de la Police"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret pushBack ["U_Rangemaster","Tenue Police",25];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["ALFR_FR_police_tenu","Tenue Police",2000];
			_ret pushBack ["U_B_Wetsuit",nil,2000];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret pushBack ["U_PMC_CombatUniformRS_SSBPBB","Tenue BAC",1500];
			_ret pushBack ["U_PMC_BluPolo_GrnPants","Tenue BAC",1500];
			_ret pushBack ["U_PMC_WhtPolo_BluPants","Tenue BAC",1500];
			_ret pushBack ["U_PMC_GTShirt_SJeans","Tenue BAC",1500];
			_ret pushBack ["U_PMC_BlkTShirt_DJeans","Tenue BAC",1500];
			_ret pushBack ["U_PMC_BlackPoloShirt_BeigeCords","Tenue BAC",1500];
			_ret pushBack ["U_PMC_CombatUniformLS_SSGPBB","Tenue BAC",1500];
			_ret pushBack ["U_PMC_CombatUniformLS_ChckDBS_GPSB","Tenue BAC",1500];
			_ret pushBack ["U_PMC_CombatUniformLS_ChckP_BPBB","Tenue BAC",1500];
			_ret pushBack ["U_PMC_CombatUniformRS_BSGPSB","Tenue BAC",1500];
			_ret pushBack ["U_PMC_CombatUniformRS_GSSPBB","Tenue BAC",1500];
		};
	};

	//Hats
	case 1:
	{
		_ret pushBack ["H_MilCap_blue",nil,75];
		_ret pushBack ["H_ALFR_Gasmask",nil,75];

		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["H_Beret_blk",nil,100];
			_ret pushBack ["H_Beret_C",nil,100];
		};

		if(__GETC__(life_coplevel) > 3) then
		{
			_ret pushBack ["H_Beret_02",nil,150];
		};

		if(__GETC__(life_coplevel) > 6) then
		{
			_ret pushBack ["H_Beret_Colonel",nil,200];
		};
	};

	//Glasses
	case 2:
	{
		_ret =
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Aviator",nil,100],
			["G_Diving",nil,500]
		];
	};

	//Vest
	case 3:
	{
		_ret =
		[
			["V_TacVest_blk_POLICE",nil,500],
			["V_Police_light","Gilet Police",1000],
			["V_RebreatherB",nil,5000]
		];
	};

	//Backpacks
	case 4:
	{
		_ret pushBack ["ALFR_Police_Backpack","Sac Police Invisible",1000];
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret pushBack ["B_UAV_01_backpack_F",nil,200];
		};
	};
};

_ret;
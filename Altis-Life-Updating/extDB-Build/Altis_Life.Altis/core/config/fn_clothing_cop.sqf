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
ctrlSetText[3103,"Altis Police Department Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret set[count _ret,["U_Rangemaster","Cop Uniform",25]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["U_B_Wetsuit",nil,2000]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["U_PMC_CombatUniformRS_SSBPBB","Tenue BAC",1500]];
			_ret set[count _ret,["U_PMC_BluPolo_GrnPants","Tenue BAC",1500]];
			_ret set[count _ret,["U_PMC_WhtPolo_BluPants","Tenue BAC",1500]];
			_ret set[count _ret,["U_PMC_GTShirt_SJeans","Tenue BAC",1500]];
			_ret set[count _ret,["U_PMC_BlkTShirt_DJeans","Tenue BAC",1500]];
			_ret set[count _ret,["U_PMC_BlackPoloShirt_BeigeCords","Tenue BAC",1500]];
			_ret set[count _ret,["U_PMC_CombatUniformLS_SSGPBB","Tenue BAC",1500]];
			_ret set[count _ret,["U_PMC_CombatUniformLS_ChckDBS_GPSB","Tenue BAC",1500]];
			_ret set[count _ret,["U_PMC_CombatUniformLS_ChckP_BPBB","Tenue BAC",1500]];
			_ret set[count _ret,["U_PMC_CombatUniformRS_BSGPSB","Tenue BAC",1500]];
			_ret set[count _ret,["U_PMC_CombatUniformRS_GSSPBB","Tenue BAC",1500]];
		};
	};
	
	//Hats
	case 1:
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["H_Beret_blk",nil,100]];
		};

		if(__GETC__(life_coplevel) > 3) then
		{
			_ret set[count _ret,["H_Beret_02",nil,150]];
		};

		if(__GETC__(life_coplevel) > 6) then
		{
			_ret set[count _ret,["H_Beret_Colonel",nil,200]];
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
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
			["G_Diving",nil,500]
		];
	};
	
	//Vest
	case 3:
	{
		_ret =
		[
			["V_TacVest_blk_POLICE",nil,5000],
			["V_TacVestIR_blk",nil,15000],
			["V_PlateCarrier1_blk",nil,20000],
			["V_PlateCarrierInd_PMC_blk",nil,19000],
			["V_RebreatherB",nil,5000]
		];
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_Kitbag_cbr",nil,800],
			["B_FieldPack_cbr",nil,500],
			["B_AssaultPack_cbr",nil,700],
			["B_Kitbag_blk",nil,1700],
			["B_Bergen_sgg",nil,2500],
			["B_Carryall_cbr",nil,3500],
            ["ALFR_Police_Bags",nil,1100]
		];
	};
};

_ret;
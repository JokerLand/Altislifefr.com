/*
	File: fn_clothing_reb.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Vêtements BL"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_I_CombatUniform_tshirt",nil,5000],
			["U_IG_Guerilla1_1",nil,5000],
			["U_I_G_Story_Protagonist_F",nil,7500]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Bandanna_gry",nil,650],
			["H_Cap_blk",nil,700],
			["H_Cap_blk_ION",nil,700],
			["H_Cap_blk_CMMG",nil,700],
			["H_Beret_blk",nil,700],
			["H_Booniehat_indp",nil,700],
			["H_ShemagOpen_khk",nil,800],
			["H_Watchcap_blk",nil,900],
			["H_MilCap_gry",nil,1200]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Tactical_Black",nil,125],
			["G_Bandanna_beast",nil,125],
			["G_Bandanna_blk",nil,125],
			["G_Bandanna_khk",nil,125],
			["G_Bandanna_shades",nil,125],
			["G_Bandanna_sport",nil,125],
			["G_Aviator",nil,125],
			["G_Combat",nil,150]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_BandollierB_blk",nil,4500],
			["V_TacVest_blk",nil,12500],
			["V_TacVest_camo",nil,12500],
			["V_PlateCarrier1_blk",nil,13250]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_Kitbag_rgr",nil,4500]
		];
	};
};
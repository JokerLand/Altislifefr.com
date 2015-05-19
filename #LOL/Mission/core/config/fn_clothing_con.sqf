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
ctrlSetText[3103,"Vêtements Conatus"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_B_CTRG_1",nil,5000],
			["U_B_CTRG_2",nil,5000],
			["U_B_CTRG_3",nil,5000]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_MilCap_gry",nil,600],
			["H_Cap_oli_hs",nil,500],
			["H_Watchcap_camo",nil,300],
			["H_HelmetB_black",nil,1000]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Balaclava_blk",nil,125],
			["G_Bandanna_blk",nil,125],
			["G_Bandanna_khk",nil,125],
			["G_Tactical_Clear",nil,125],
			["G_Shades_Black",nil,125]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_Chestrig_rgr",nil,4000],
			["V_PlateCarrier1_blk",nil,10000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_TacticalPack_blk",nil,4500]
		];
	};
};
/*
	File: fn_clothing_bl.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for BL shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Armée - Uniformes"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_OG_Guerilla3_2","Hunter Green",500],
            ["ALFR_FR_Armee_Base", "Uniforme Armee",500]

		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Booniehat_grn",nil,50],
			["H_Booniehat_tan",nil,50],
			["H_Booniehat_dirty",nil,50],
			["H_Bandanna_khk",nil,50],
			["H_Bandanna_cbr",nil,50],
			["H_Bandanna_sgg",nil,50],
			["H_Bandanna_gry",nil,50],
			["H_Watchcap_blk",nil,50],
			["H_Watchcap_khk",nil,50],
			["H_Watchcap_sgg",nil,50],
			["H_Watchcap_camo",nil,50],
			["H_ShemagOpen_tan",nil,850],
			["H_Shemag_olive",nil,850],
			["H_ShemagOpen_khk",nil,800],
			["H_Shemag_tan",nil,800],
			["H_Shemag_olive_hs",nil,750],
			["H_HelmetO_ocamo",nil,2500],
			["H_MilCap_oucamo",nil,1200],
			["H_HelmetCrew_I",nil,500],
			["H_Bandanna_camo",nil,650]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Aviator",nil,100],
			["G_Lady_Mirror",nil,150],
			["G_Lady_Dark",nil,150],
			["G_Lady_Blue",nil,150],
			["G_Lowprofile",nil,30],
			["G_Balaclava_blk",nil,1000],
			["G_Balaclava_lowprofile",nil,1000],
			["G_Balaclava_combat",nil,1000],
			["G_Balaclava_oli",nil,1000],
			["G_Bandanna_aviator",nil,1500],
			["G_Bandanna_beast",nil,1500],
			["G_Bandanna_tan",nil,1500],
			["G_Bandanna_sport",nil,1500],
			["G_Bandanna_blk",nil,1500],
			["G_Bandanna_oli",nil,1500],
			["G_Bandanna_shades",nil,1500],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_PlateCarrier1_blk",nil,17500],
			["V_Chestrig_blk",nil,15000],
			["V_TacVest_blk",nil,12500],
			["V_TacVestIR_blk",nil,12500],
			["V_BandollierB_blk",nil,4500],
            ["ALFR_armee_gilet",nil,4500]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_blk",nil,600],
			["B_AssaultPack_cbr",nil,600],
			["B_AssaultPack_khk",nil,600],
			["B_AssaultPack_sgg",nil,600],
			["B_AssaultPack_rgr",nil,600],
			["B_FieldPack_cbr",nil,1000],
			["B_FieldPack_blk",nil,1000],
			["B_FieldPack_ocamo",nil,1000],
			["B_FieldPack_oucamo",nil,1000],
			["B_FieldPack_cbr",nil,1000],
			["B_Kitbag_mcamo",nil,1500],
			["B_Kitbag_sgg",nil,1500],
			["B_Kitbag_cbr",nil,1500],
			["B_Bergen_sgg",nil,1500],
			["B_Bergen_blk",nil,1500],
			["B_Bergen_mcamo",nil,1500],
			["B_Carryall_ocamo",nil,2500],
			["B_Carryall_oucamo",nil,2500],
			["B_Carryall_mcamo",nil,2500],
			["B_Carryall_oli",nil,2500],
			["B_Carryall_khk",nil,2500],
			["B_Carryall_cbr",nil,2500],
			["B_Parachute",nil,2500],
            ["ALFR_armee_Bags",nil,2500]
		];
	};
};
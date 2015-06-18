/*
	File: fn_clothing_mask.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Vendeur de masques"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		];
	};

	//Hats
	case 1:
	{
		[
			["H_ALFR_Headset",nil,1200],
            ["H_ALFR_PaintballMsk",nil,2000],
            ["H_ALFR_Metal_Gasmask_RU_blk",nil,3000],
            ["H_ALFR_Metal_Gasmask_RU_oli",nil,3000],
            ["H_ALFR_Metal_Gasmask_RU_grey",nil,3000],
            ["H_ALFR_Metal_Gasmask_RU_khk",nil,3000],
            ["H_ALFR_Metal_Gasmask_RU_fuckyou",nil,3000],
            ["H_ALFR_Gasmask",nil,3500],
            ["H_ALFR_Metal_Facemask_blk",nil,4000],
            ["H_ALFR_Metal_Facemask_oli",nil,4000],
            ["H_ALFR_Metal_Facemask_sand",nil,4000],
            ["H_ALFR_Metal_Facemask_gry",nil,4000],
            ["H_ALFR_Heist_Mask_1",nil,5000],
            ["H_ALFR_Heist_Mask_2",nil,5000],
            ["H_ALFR_Heist_Mask_3",nil,5000],
            ["H_ALFR_Heist_Mask_4",nil,5000],
            ["H_ALFR_Heist_Mask_5",nil,5000],
            ["H_ALFR_Heist_Mask_6",nil,5000],
            ["H_ALFR_Heist_Mask_7",nil,5000],
            ["H_ALFR_Samurai_Mask",nil,7000],
            ["H_ALFR_Sheep_Mask",nil,7000],
            ["H_ALFR_Dallas_Mask",nil,9000],
            ["H_ALFR_DinoMask",nil,10000],
			["H_ALFR_HorseMask",nil,10500],
			["H_ALFR_HorseMask_2",nil,10500],
			["H_ALFR_HorseMask_blk",nil,10500],
			["H_ALFR_HorseMask_pnk",nil,10500],
            ["H_ALFR_OVERKILL_I",nil,5000],
            ["H_ALFR_OVERKILL_II",nil,7500],
            ["H_ALFR_OVERKILL_III",nil,10500],
            ["H_ALFR_OVERKILL_IV",nil,20000]
		];
	};

	//Glasses
	case 2:
	{
		[
			["H_ALFR_SkiMask_1",nil,9000],
            ["H_ALFR_SkiMask_2",nil,9000],
            ["H_ALFR_SkiMask_3",nil,9000],
            ["H_ALFR_SkiMask_4",nil,9000],
            ["H_ALFR_SkiMask_5",nil,9000],
            ["H_ALFR_SkiMask_6",nil,9000],
            ["H_ALFR_SkiMask_7",nil,9000],
            ["H_ALFR_SkiMask_8",nil,9000],
            ["H_ALFR_SkiMask_9",nil,9000],
            ["H_ALFR_SkiMask_10",nil,9000],
            ["H_ALFR_SkiMask_Glasses_1",nil,10000],
            ["H_ALFR_SkiMask_Glasses_2",nil,10000],
            ["H_ALFR_SkiMask_Glasses_3",nil,10000],
            ["H_ALFR_SkiMask_Glasses_4",nil,10000],
            ["H_ALFR_SkiMask_Glasses_5",nil,10000],
            ["H_ALFR_SkiMask_Glasses_6",nil,10000],
            ["H_ALFR_SkiMask_Glasses_7",nil,10000],
            ["H_ALFR_SkiMask_Glasses_8",nil,10000]
		];
	};

	//Vest
	case 3:
	{
		[
		];
	};

	//Backpacks
	case 4:
	{
		[
		];
	};
};
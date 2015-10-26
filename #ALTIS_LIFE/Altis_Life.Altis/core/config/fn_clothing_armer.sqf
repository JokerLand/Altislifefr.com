/*
	File: fn_clothing_armer.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration file for Bobby's Kart Racing Outfits
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Vetements Militaire"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		["R3F_uniform_f1",nil,10],
		["U_B_Wetsuit",nil,10],
        ["R3F_uniform_Ghillie",nil,10],
        ["U_O_Wetsuit",nil,10]
		];
	};

	//Hats
	case 1:
	{
		[
			["R3F_casque_spectra",nil,10],
			["R3F_casquette_off",nil,10],
			["R3F_beret_para",nil,10],
			["H_PilotHelmetHeli_B",nil,10],
			["H_PilotHelmetHeli_O",nil,10],
			["H_ALFR_Gasmask",nil,10]
		];
	};

	//Glasses
	case 2:
	{
		[
			["R3F_cagoule_olive",nil,10],
			["R3F_cagoule_punisher",nil,10],
			["G_Aviator",nil,10],
			["G_Balaclava_blk",nil,10],
			["R3F_lunettes_X800",nil,10],
			["H_ALFR_SkiMask_1",nil,10],
			["H_ALFR_SkiMask_9",nil,10],
			["H_ALFR_SkiMask_10",nil,10],
			["H_ALFR_SkiMask_Glasses_1",nil,10],
			["G_Diving",nil,10]
		];
	};

	//Vest
	case 3:
	{
		[
			["R3F_veste_ce600",nil,10],
			["V_RebreatherB",nil,10],
            ["V_RebreatherIA",nil,10]
		];
	};

	//Backpacks
	case 4:
	{
		[
			["ALFR_Police_Backpack","Sac Invisible",10],
			["B_UAV_01_backpack_F",nil,10]
		];
	};
};

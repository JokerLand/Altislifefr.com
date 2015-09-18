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
		["R3F_uniform_f1",nil,1500],
		["U_B_Wetsuit",nil,2000],
        ["R3F_uniform_Ghillie",5000],
        ["U_O_Wetsuit",5000]
		];
	};

	//Hats
	case 1:
	{
		[
			["R3F_casque_spectra",nil,1000],
			["R3F_casquette_off",nil,1000],
			["R3F_beret_para",nil,1000],
			["H_PilotHelmetHeli_B",nil,1000],
			["H_PilotHelmetHeli_O",nil,1000],
			["H_ALFR_Gasmask",nil,1000]
		];
	};

	//Glasses
	case 2:
	{
		[
			["R3F_cagoule_olive",nil,1000],
			["R3F_cagoule_punisher",nil,1500],
			["G_Aviator",nil,100],
			["G_Balaclava_blk",nil,100],
			["R3F_lunettes_X800",nil,100],
			["H_ALFR_SkiMask_1",nil,100],
			["H_ALFR_SkiMask_9",nil,100],
			["H_ALFR_SkiMask_10",nil,100],
			["H_ALFR_SkiMask_Glasses_1",nil,100],
			["G_Diving",nil,500]
		];
	};

	//Vest
	case 3:
	{
		[
			["R3F_veste_ce600",nil,500],
			["V_RebreatherB",nil,5000],
            ["V_RebreatherIA",nil,2500]
		];
	};

	//Backpacks
	case 4:
	{
		[
			["ALFR_Police_Backpack","Sac Invisible",1000]
		];
	};
};
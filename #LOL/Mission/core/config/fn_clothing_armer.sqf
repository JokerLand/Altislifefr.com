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
		["U_B_Wetsuit",nil,2000]
		];
	};

	//Hats
	case 1:
	{
		[
			["R3F_casque_spectra",nil,1000],
			["R3F_casquette_off",nil,1000],
			["R3F_beret_para",nil,1000]
		];
	};

	//Glasses
	case 2:
	{
		[
			["R3F_cagoule_olive",nil,1000],
			["G_Diving",nil,500]
		];
	};

	//Vest
	case 3:
	{
		[
			["R3F_veste_ce600",nil,500],
			["V_RebreatherB",nil,5000]
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
/*
	File: fn_clothing_air_altis.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration file for FLA shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Air altis tenue"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["ALE_RsDep","Tenue de dépanneur 1",0]
		];
	};

	//Hats
	case 1:
	{
		[
			["H_Cap_headphones",nil,0],
			["H_Cap_marshal",nil,0],
			["H_PilotHelmetHeli_B",nil,0]
		];
	};

	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,0],
			["G_Shades_Blue",nil,0],
			["G_Sport_Blackred",nil,0],
			["G_Sport_Checkered",nil,0],
			["G_Sport_Blackyellow",nil,0],
			["G_Sport_BlackWhite",nil,0],
			["G_Squares",nil,0],
			["G_Aviator",nil,0],
			["G_Lady_Mirror",nil,0],
			["G_Lady_Dark",nil,0],
			["G_Lady_Blue",nil,0],
			["G_Lowprofile",nil,0]
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
			["ALFR_Civ_Bags_Nitrado",nil, 0]
		];
	};
};

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
			["U_CivilianPilot_A","Tenue de vieux pilote",100],
			["U_B_PilotBAUniform","Blue Angels",500]
		];
	};

	//Hats
	case 1:
	{
		[
			["H_Cap_headphones",nil,25],
			["H_Cap_marshal",nil,50],
			["H_PilotHelmetHeli_B",nil,500],
			["H_PilotHelmetBA",nil,1000]
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
			["G_Lowprofile",nil,30]
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
			["B_Parachute",nil,500],
			["ALFR_Civ_Bags_Nitrado",nil, 2500]
		];
	};
};
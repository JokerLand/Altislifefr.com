/*
	File: fn_clothing_brinks.sqf
	Author: Sam
	
	Description:
	Configuration file for Brinks Clothing Shop
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;

ctrlSetText[3103,"Uniformes Brinks"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_Marshal",nil,1000]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Cap_blu",nil,150]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Sport_Blackred",nil,20],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Squares",nil,10],
			["G_Aviator",nil,100]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_TacVestIR_blk",nil,500],
			["cl3_gangcut_regular",nil,500]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["cl3_police_tacticalbelt",nil,2500]
		];
	};
};
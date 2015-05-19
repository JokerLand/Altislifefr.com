/*
	File: fn_clothing_rsdep.sqf
	Author: Sam
	
	Description:
	Configuration file for R.S Depannage Clothing Shop
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;

ctrlSetText[3103,"Uniformes R.S"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["ALE_RsDep","Uniforme R.S Dépannage",1500]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Cap_blu",nil,150],
			["H_Cap_grn",nil,150],
			["H_Cap_red",nil,150],
			["H_Cap_blk",nil,150]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Sport_Blackred",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Squares",nil,10],
			["G_Aviator",nil,100]
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
			["B_Bergen_rgr",nil,4500]
		];
	};
};
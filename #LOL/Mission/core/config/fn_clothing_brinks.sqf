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
		];
	};
	
	//Hats
	case 1:
	{
		[
		];
	};
	
	//Glasses
	case 2:
	{
		[
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
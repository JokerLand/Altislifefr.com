/*
	File: fn_clothing_ac.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for AC shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Equipement Assassin's Corp"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["rds_uniform_Functionary1",nil,1300],
			["rds_uniform_Functionary2",nil,1300],
			["U_I_G_resistanceLeader_F",nil,850]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Watchcap_blk",nil,900]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["Shemagh_FaceGry",nil,20]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_PlateCarrier1_blk",nil,4500]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_blk",nil,1500]
		];
	};
};
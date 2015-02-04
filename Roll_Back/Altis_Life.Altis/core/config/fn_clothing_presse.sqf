/*
	File: fn_clothing_presse.sqf
	Author: Bryan "Tonic" Boardwine
	Edit : Thibaud "Thibzor"
	
	Description:
	Master configuration file for press shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Boutique de journaliste"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_NikosAgedBody","Costard cravate",5000],
			["U_C_Journalist","Tenue de journaliste",10000]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Cap_blk",nil,50],
			["H_Cap_press","Casquette de journaliste",3000]
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
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
			
		];
	};
	
	//Vest
	case 3:
	{
		[	
			["V_Press_F","Gilet de journaliste",50000]
			
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_blk",nil,600],
			["B_AssaultPack_cbr",nil,600],
			["B_AssaultPack_khk",nil,600],
			["B_AssaultPack_sgg",nil,600],
			["B_AssaultPack_rgr",nil,600],
			["B_FieldPack_cbr",nil,1000],
			["B_FieldPack_blk",nil,1000],
			["B_FieldPack_ocamo",nil,1000],
			["B_FieldPack_oucamo",nil,1000],
			["B_FieldPack_cbr",nil,1000],
			["B_Kitbag_mcamo",nil,1500],
			["B_Kitbag_sgg",nil,1500],
			["B_Kitbag_cbr",nil,1500],
			["B_Bergen_sgg",nil,1500],
			["B_Bergen_blk",nil,1500],
			["B_Bergen_mcamo",nil,1500],
			["B_Carryall_ocamo",nil,2500],
			["B_Carryall_oucamo",nil,2500],
			["B_Carryall_mcamo",nil,2500],
			["B_Carryall_oli",nil,2500],
			["B_Carryall_khk",nil,2500],
			["B_Carryall_cbr",nil,2500],
			["B_Parachute",nil,2500]
		];
	};
};
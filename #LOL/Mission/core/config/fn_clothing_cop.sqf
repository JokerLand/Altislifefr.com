#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

if(__GETC__(life_coplevel) < 2) exitWith {hint "Vous n'avez pas le grade nécessaire";closeDialog 0;};

//Shop Title Name
ctrlSetText[3103,"Intendance de la Gendarmerie Nationale"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret pushBack ["ALE_GendUniform","Uniforme de Gendarme",0];
		if(__GETC__(life_coplevel) > 5) then
		{
			_ret pushBack ["gign_uniform","Uniforme GIGN",0];
		};
	};
	
	//Hats
	case 1:
	{
		_ret pushBack ["H_Cap_blu",nil,0];
		_ret pushBack ["ALE_H_Calot",nil,0];
		if(__GETC__(life_coplevel) > 5) then
		{
			_ret pushBack ["gign_helmet","Casque GIGN",0];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_ret pushBack ["H_Beret_Colonel",nil,0];
		};
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,0],
			["G_Shades_Blue",nil,0],
			["G_Sport_Blackred",nil,0],
			["G_Sport_Checkered",nil,0],
			["G_Sport_Blackyellow",nil,0],
			["G_Sport_BlackWhite",nil,0],
			["G_Aviator",nil,0],
			["G_Squares",nil,0],
			["G_Lowprofile",nil,0],
			["G_Combat",nil,0]
		];
		if(__GETC__(life_coplevel) > 5) then
		{
			_ret pushBack ["G_Balaclava_blk","Cagoule du GIGN",0];
		};
	};
	
	//Vest
	case 3:
	{
		_ret pushBack ["bulletproof_gend_vest",nil,0];
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret pushBack ["bulletproof_pj_vest",nil,0];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_ret pushBack ["gign_tacVest","Gilet Pare-Balle GIGN",0];
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["cl3_police_tacticalbelt",nil,0]
		];
		if(__GETC__(life_coplevel) > 5) then
		{
			_ret pushBack ["ALE_GIGNBackpack","Sac à Dos GIGN",0];
		};
	};
};

_ret;
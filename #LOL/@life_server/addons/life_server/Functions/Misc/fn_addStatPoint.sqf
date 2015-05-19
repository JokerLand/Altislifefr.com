/*
@Version : 0.1
@Author : Mash6

Description:
Add stat points.
*/


private["_type","_amount"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
_amount = [_this,1,0,[0]] call BIS_fnc_param;


if(_amount == 0) exitWith {};
if(_type == "") exitWith {};


switch(_type) do 
{
	case "chem":
	{
		stat_chem = stat_chem + _amount;
	};
	
	case "hack":
	{
		stat_hack = stat_hack + _amount;
	};
	
	case "hunt":
	{
		stat_hunt = stat_hunt + _amount;
	};
	
	case "drive":
	{
		stat_drive = stat_drive + _amount;
	};
	
	case "endu":
	{
		stat_endu = stat_endu + _amount;
	};
	
	case "meca":
	{
		stat_meca = stat_meca + _amount;
	};
	
	case "medic":
	{
		stat_medic = stat_medic + _amount;
	};
	
	case "lockpick":
	{
		stat_lockpick = stat_lockpick + _amount;
	};
	
	case "boom":
	{
		stat_boom = stat_boom + _amount;
	};
	
	case "holdup":
	{
		stat_holdup = stat_holdup + _amount;
	};
	
	case "surv":
	{
		stat_surv = stat_surv + _amount;
	};
	
	case "civpoints":
	{
		stat_civpoints = stat_civpoints + _amount;
	};
	
	case "coppoints":
	{
		stat_coppoints = stat_coppoints + _amount;
	};
	
	case "mine":
	{
		stat_mine = stat_mine + _amount;
	};
};
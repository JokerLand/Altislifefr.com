#include <macro.h>
/*
	File: fn_coups2.sqf
	Author: Bryan "Tonic" Boardwine & Artkyom - AltisLifeFR.com
	
	Description:
	Starts and monitors the knocked out state.
*/
private["_target","_who","_obj"];
_target = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_who = [_this,1,"",[""]] call BIS_fnc_param;
if(isNull _target) exitWith {};
if(_target != player) exitWith {};
if(EQUAL(_who,"")) exitWith {};

titleText[format["%1 t'a donné un coup !",_who],"PLAIN"];
_dice = random(90);
	if(_dice < 10) then 
	{
		[[player,"CL3_anim_Receive1a"],"life_fnc_animSync",nil,false] spawn life_fnc_MP;
	};
	if(_dice > 10) then 
	{
		[[player,"CL3_anim_Receive1b"],"life_fnc_animSync",nil,false] spawn life_fnc_MP;	
	};	
	if(_dice > 20) then 
	{
		[[player,"CL3_anim_Receive2a"],"life_fnc_animSync",nil,false] spawn life_fnc_MP;
	};	
	if(_dice > 30) then 
	{
		[[player,"CL3_anim_Receive2b"],"life_fnc_animSync",nil,false] spawn life_fnc_MP;
	};	
	if(_dice > 40) then 
	{
		[[player,"CL3_anim_Receive3a"],"life_fnc_animSync",nil,false] spawn life_fnc_MP;
	};	
	if(_dice > 50) then 
	{
		[[player,"CL3_anim_Receive3b"],"life_fnc_animSync",nil,false] spawn life_fnc_MP;
	};	
	if(_dice > 60) then 
	{
		[[player,"CL3_anim_Receive3c"],"life_fnc_animSync",nil,false] spawn life_fnc_MP;
	};	
	if(_dice > 70) then 
	{
		[[player,"CL3_anim_Receive4"],"life_fnc_animSync",nil,false] spawn life_fnc_MP;
	};	
	if(_dice > 80) then 
	{
		[[player,"CL3_anim_Knockout2In"],"life_fnc_animSync",nil,false] spawn life_fnc_MP;
	};	
	
_obj = "Land_ClutterCutter_small_F" createVehicle ASLTOATL(visiblePositionASL player); //WHY THE HELL WAS THIS BEING CREATED GLOBALLY?!?!?!!?!~?!?!?!?$@Q?G%@?$TGWGSXBG, BECAUSE IT WORK
_obj setPosATL ASLTOATL(visiblePositionASL player);
player attachTo [_obj,[0,0,0]];
sleep 3;
detach player;
deleteVehicle _obj;
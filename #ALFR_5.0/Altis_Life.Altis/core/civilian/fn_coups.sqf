/*
	File: fn_coups.sqf
	Author: Artkyom - AltisLifeFR.com
	
	Description:
	Donne un coups de poing/ Coups de crosse
*/
private["_target"];
_target = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

//Error checks
if(isNull _target) exitWith {};
if(!isPlayer _target) exitWith {};
if(player distance _target > 4) exitWith {};

// NEW ANIMATION MOD cl3_anim.pbo
if(currentWeapon player == primaryWeapon player && primaryWeapon player != "") then {
	[[player,"CL3_anim_WeaponHit"],"life_fnc_animSync",nil,false] spawn life_fnc_MP; 
	sleep 1.1;
	[[_target,profileName],"life_fnc_coups2",_target,false] spawn life_fnc_MP;
	[[player, "Punch1",20],"life_fnc_playSound",true,false] spawn life_fnc_MP;
} else {
	[[player,"CL3_anim_PunchRandom"],"life_fnc_animSync",nil,false] spawn life_fnc_MP;
	sleep 1.1;
	[[_target,profileName],"life_fnc_coups1",_target,false] spawn life_fnc_MP;
	[[player, "Punch2",20],"life_fnc_playSound",true,false] spawn life_fnc_MP;
};
#include <macro.h>
/*
	File: fn_knockedOut.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Starts and monitors the knocked out state.
*/
private["_target","_who","_obj"];
_target = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_who = [_this,1,"",[""]] call BIS_fnc_param;
if(isNull _target) exitWith {};
if(_target != player) exitWith {};
if(EQUAL(_who,"")) exitWith {};
if(dialog) then {closeDialog 0;};

// play appropriate anim
private "_fnc_playAnim";
_fnc_playAnim = {
	if (getNumber (configFile >> "CfgMovesMaleSdr" >> "States" >> animationState _this >> "ACE_isLadder") == 1) then {
		_this action ["LadderOff", nearestObject [position _this, "House"]];
	};
	waitUntil {isTouchingGround _this OR underwater _this};
	waitUntil {!([_this] call ACE_Common_fnc_inTransitionAnim) or !(alive _this)};
	if !(alive _this) exitWith {};
	// [_this, "Incapacitated", 1, True] call ACE_Common_fnc_doAnimation;
	// sleep 2;
	if(player != vehicle player) exitWith {};
	if (animationState _this != "Incapacitated") then {
		[_this, "Incapacitated", 2, True] call ACE_Common_fnc_doAnimation;
	};
};

player setVariable ["tf_unable_to_use_radio", true];
titleText[format[localize "STR_Civ_KnockedOut",_who],"PLAIN"];
// player switchMove "Incapacitated";
// player playMoveNow "Incapacitated";
player spawn _fnc_playAnim;
_obj = "Land_ClutterCutter_small_F" createVehicle (getPosATL player);
_obj setPosATL (getPosATL player);
player attachTo [_obj,[0,0,0]];
sleep 15;
player setVariable ["tf_unable_to_use_radio", false];
if(animationState player == "Incapacitated") then {
	player playMoveNow "amovppnemstpsraswrfldnon";
};
detach player;
deleteVehicle _obj;
player SVAR ["robbed",FALSE,TRUE];

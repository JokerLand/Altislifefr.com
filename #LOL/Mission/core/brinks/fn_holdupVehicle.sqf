/*
	File: fn_holdupVehicle.sqf
	Author: Mash6 <Altis Life: Evolution> -- http://www.altislife-evolution.fr/ --
	
	Description:
	HoldUp Brinks Vehicle
*/

private["_vehic","_money"];

// Get vehic and money left in vehicle
_vehic = cursorTarget;
_money = _vehic getVariable ["money",0];

// 4 Checks, brinks employee, brinks vehicle, money left and distance
if(license_civ_brinks) exitWith {titleText["\n\n\n\n\n\n\n\n\n\n\n\nVous êtes un employé de la Brinks, vous ne pouvez pas braquer vos propres véhicules !","PLAIN"];};
if(!(_vehic getVariable["brinksvehic",false])) exitWith {titleText["\n\n\n\n\n\n\n\n\n\n\n\nCe n'est pas un véhicule de la Brinks !","PLAIN"];};
if(_money == 0) then {titleText["\n\n\n\n\n\n\n\n\n\n\n\nCe camion est vide !","PLAIN"];};
if((player distance _vehic) > 4) exitWith {titleText["\n\n\n\n\n\n\n\n\n\n\n\nLe véhicule est trop loin !","PLAIN"];};

// Start loop
titleText["\n\n\n\n\n\n\n\n\n\n\n\nPatientez...","PLAIN"];
_timeToAdd = (random 120) + 90;
_time = time + _timeToAdd;
while{_time > time} do
{
	if(animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
		[[player,"AinvPknlMstpSnonWnonDnon_medic_1"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
		player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
	};
	sleep 0.5;
	if((player distance _vehic) > 4) then {life_interrupted = true};
	if(!alive player) exitWith {};
	if(player != vehicle player) exitWith {};
	if(life_interrupted) exitWith {};
};
if(life_interrupted) exitWith {life_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; life_action_inUse = false;};
life_action_inUse = false;


// Give money to player
life_cash = life_cash + _money;


// Set brinks money left to 0
_vehic setVariable ["money",0,true];
_vehic setVariable ["holdup",true,true];

titleText[format["\n\n\n\n\n\n\n\n\n\n\n\nVous avez volé %1 € !",_money],"PLAIN"];
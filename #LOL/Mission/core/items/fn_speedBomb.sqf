/*
	File: fn_speedBomb.sqf
	Author: Fuzz
	
	Description:
	Attaches a speed bomb to a vehicle.
*/

private["_unit"];
#define SAFETY_ZONES    [["Safe_Kav", 850], ["Safe_Peches", 135]]
_unit = cursorTarget;
if((!(_unit isKindOf "LandVehicle"))&&(!(_unit getVariable ["restrained",false]))) exitWith {hint "Vous ne pouvez pas poser la bombe sur cette objet."};
if(player distance _unit > 4) exitWith {hint "Vous devez à moins de 4 mètres du véhicule !"};
if(boom_state < 2) exitWith {hint "Vous n'avez pas les capacités necessaires !"};
if ({player distance getMarkerPos (_x select 0) < _x select 1} count SAFETY_ZONES > 0) exitWith {
	titleText["Pas de bombe de vitesse en SafeZone","PLAIN"];
};

if(speedbomb_timer > time) exitWith {
	_timeUntil = round(speedbomb_timer - time); 
	_timeUntil = round(_timeUntil / 60);
	hint format["Vous ne pouvez poser qu'une bombe par heure. Vous devez attendre encore %1 minutes.",_timeUntil];
};
if(!([false,"speedbomb",1] call life_fnc_handleInv)) exitWith {};
closeDialog 0;
speedbomb_timer = time + (60*60);
life_action_inUse = true;
 
player playMove "AinvPknlMstpSnonWnonDnon_medic_1";
sleep 1.5;
waitUntil {animationState player != "ainvpknlmstpsnonwnondnon_medic_1"};
 
life_action_inUse = false;
if(player distance _unit > 4) exitWith {titleText["Vous devez à moins de 4 mètres du véhicule !","PLAIN"];};
 
titleText["Vous avez posé la bombe à variation de vitesse.","PLAIN"];
[2,format["Joueur %1 a posé une bombe",profileName]] spawn life_fnc_logToServer;
 
[_unit] spawn
{
	_veh = _this select 0;
	waitUntil {(speed _veh) > 70};
	[[_veh, "bombarm",20],"life_fnc_playSound",true,false] spawn BIS_fnc_MP;
	hint "La bombe que vous avez posée sur un véhicule vient d'etre activée !";
	{ [[2,"Une bombe à variation de vitesse vient de s'activer sur votre véhicule ! Si vous descendez sous les 50 km/h, votre véhicule explose !"],"life_fnc_broadcast",_x,false] spawn BIS_fnc_MP; } foreach (crew _veh);
	waitUntil {(speed _veh) < 50};
	serv_killed = [player,"1090"];
	publicVariableServer "serv_killed";
	_test = "Bo_Mk82" createVehicle [0,0,9999];
	_test setPos (getPos _veh);
	_test setVelocity [100,0,0];
	hint "La bombe que vous avez posée sur un véhicule a exploser!";
};
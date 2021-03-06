﻿/*
file: fn_robShops.sqf
Author: MrKraken, Edited by AltisLifeFR
Made from MrKrakens
Description:
Executes the rob shob action!
*/
private["_robber","_shop","_cash","_ui","_progress","_pgText","_cP","_rip","_pos"];
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param; //The object that has the action attached to it is _this. ,0, is the index of object, ObjNull is the default should there be nothing in the parameter or it's broken
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param; //Can you guess? Alright, it's the player, or the "caller". The object is 0, the person activating the object is 1


if(side _robber != civilian) exitWith { hint "Vous ne pouvez pas braquer cette station!" };
_cops = (west countSide playableUnits);
if(_cops < 0) exitWith{hint "Il n'y a pas assez de policiers pour braquer la station! (3)";};
if(_robber distance _shop > 3) exitWith { hint "Vous devez rester a moins de 3m du caissier!" };
if (vehicle player != _robber) exitWith { hint "Impossible de braquer depuis le vehicule" };
if !(alive _robber) exitWith {};
if (currentWeapon _robber == "") exitWith { hint "Haha tu crois que tu me fais peur sans arme ? Va jouer ailleurs!!" };
if(_shop getVariable ["robbed", false]) exitWith {hint "Cette pompe a déja ete braquée récemment, il n'y a plus rien";};

_shop setVariable["robbed",true,true];
[[_shop],"TON_fnc_robShop",false,false] spawn life_fnc_MP;

_cash = 5000 + round(random 10000);
_shop switchMove "AmovPercMstpSsurWnonDnon";
hint "Le caissier a activé l'alarme, la police ne va pas tarder à arriver!";
[[1,format["ALERTE! - La station: %1 est en train d'etre braquee!", _shop], false],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
[[player, "alarme_magasin",10],"life_fnc_playSound",true,false] spawn life_fnc_MP;

disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Braquage en cours, n'allez pas trop loin! (3m) (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.01;


while{true} do
{
	sleep 1.2;
	_cP = _cP + 0.01;
	_progress progressSetPosition _cP;
	_pgText ctrlSetText format["Braquage en cours, n'allez pas trop loin! (3m) (%1%2)...",round(_cP * 100),"%"];
	_Pos = position player; // by ehno: get player pos
									_marker = createMarker ["Marker200", _Pos]; //by ehno: Place a Maker on the map
									"Marker200" setMarkerColor "ColorRed";
									"Marker200" setMarkerText "!ATTENTION! BRAQUAGE EN COURS !ATTENTION!";
									"Marker200" setMarkerType "mil_warning";
	if(_cP >= 1) exitWith {};
	if(_robber distance _shop > 10.5) exitWith {};
	if!(alive _robber) exitWith {};
};
_shop switchMove "";
5 cutText ["","PLAIN"];
deleteMarker "Marker200";
if(_robber distance _shop > 10.5) exitWith
{
	hint "Vous devez rester à moins de 3m pour braquer la station! - Une caméra de surveillance vous a filmée, vous êtes maintenant recherché";
  	_shop setVariable["robbed",false,false];
	[[getPlayerUID player,player getVariable["realname",name player],"187"],"life_fnc_wantedAdd",false,false] call life_fnc_MP;
};
if(!alive _robber) exitWith
{
	hint "Vous êtes mort pendant le braquage! - La station est maintenant verrouillée.";
};
titleText[format["Vous venez de voler %1€, Une caméra de surveillance vous a filmée, vous êtes maintenant recherché",[_cash] call life_fnc_numberText],"PLAIN"];
[[getPlayerUID player,player getVariable["realname",name player],"669"],"life_fnc_wantedAdd",false,false] call life_fnc_MP;
life_cash = life_cash + _cash;
sleep 1200;
_shop setVariable["robbed",false,false];

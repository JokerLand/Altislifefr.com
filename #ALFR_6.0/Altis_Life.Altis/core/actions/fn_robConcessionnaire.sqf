/*
file: fn_robConcessionnaire.sqf
Author: Edited by AltisLifeFR
Made from MrKrakens
Description:
Executes the rob concessionnaire action!
*/
private["_robber","_shop","_cash","_ui","_progress","_pgText","_cP","_rip","_pos"];
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param; //The object that has the action attached to it is _this. ,0, is the index of object, ObjNull is the default should there be nothing in the parameter or it's broken
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param; //Can you guess? Alright, it's the player, or the "caller". The object is 0, the person activating the object is 1


if(side _robber != civilian) exitWith { hint "Vous ne pouvez pas braquer ce concessionnaire de véhicule de luxe !" };
_cops = (west countSide playableUnits);
if(_cops < 0) exitWith{hint "Il n'y a pas assez de policiers pour braquer le concessionnaire de luxe ! (6)";};
if(_robber distance _shop > 10) exitWith { hint "Vous devez rester a moins de 10m du patron !" };
if (vehicle player != _robber) exitWith { hint "Impossible de braquer depuis le vehicule" };
if !(alive _robber) exitWith {};
if (currentWeapon _robber == "") exitWith { hint "Haha tu crois que tu me fais peur sans arme ? Va jouer ailleurs !" };
if(_shop getVariable ["robbed", false]) exitWith {hint "Ce concessionnaire a déja été braqué récemment, il n'y a plus rien dans le coffre";};

_shop setVariable["robbed",true,true];
[[_shop],"TON_fnc_robShop",false,false] spawn life_fnc_MP;

_cash = 150000 + round(random 50000);
_shop switchMove "AmovPercMstpSsurWnonDnon";
hint "Le patron a activé l'alarme, la police arrive !";
[[1,format["ALERTE GENERALE! - Le patron du concessionnaire de luxe: %1 est en train de se faire braquer!", _shop], false],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
[[player, "alarme_magasin",25],"life_fnc_playSound",true,false] spawn life_fnc_MP;

disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Braquage du coffre en cours, n'allez pas trop loin! (10m) (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.01;


while{true} do
{
	sleep 1.2;
	_cP = _cP + 0.01;
	_progress progressSetPosition _cP;
	_pgText ctrlSetText format["Braquage en cours, n'allez pas trop loin! (10m) (%1%2)...",round(_cP * 100),"%"];
	_Pos = position player; // by ehno: get player pos
									_marker = createMarker ["Marker200", _Pos]; //by ehno: Place a Maker on the map
									"Marker200" setMarkerColor "ColorRed";
									"Marker200" setMarkerText "!ATTENTION! BRAQUAGE DU CONCESSIONNAIRE !ATTENTION!";
									"Marker200" setMarkerType "mil_warning";
	if(_cP >= 1) exitWith {};
	if(_robber distance _shop > 14) exitWith {};
	if!(alive _robber) exitWith {};
};
_shop switchMove "";
5 cutText ["","PLAIN"];
deleteMarker "Marker200";
if(_robber distance _shop > 14) exitWith
{
	hint "Vous devez rester à moins de 10m pour braquer le coffre ! - Une caméra de surveillance vous a filmée, vous êtes maintenant recherché";
  	_shop setVariable["robbed",false,false];
	[[getPlayerUID player,player getVariable["realname",name player],"187"],"life_fnc_wantedAdd",false,false] call life_fnc_MP;
};
if(!alive _robber) exitWith
{
	hint "Vous êtes mort pendant le braquage! - Le coffre est maintenant sécurisé.";
};
titleText[format["Vous venez de voler %1€, Une caméra de surveillance vous a filmée, vous êtes maintenant recherché",[_cash] call life_fnc_numberText],"PLAIN"];
[[getPlayerUID player,player getVariable["realname",name player],"669"],"life_fnc_wantedAdd",false,false] call life_fnc_MP;
life_cash = life_cash + _cash;
sleep 3600;
_shop setVariable["robbed",false,false];

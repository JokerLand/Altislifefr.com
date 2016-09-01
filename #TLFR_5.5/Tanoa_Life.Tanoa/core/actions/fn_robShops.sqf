/*
	Fichier: fn_robShops.sqf
	By www.impulsionlife.com
	Sign: altisdev.com & TanoaLifeFR
*/
private["_robber","_shop","_kassa","_ui","_progress","_pgText","_cP","_rip","_pos"];
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;

_action = [_this,2] call BIS_fnc_param;

if(side _robber != civilian) exitWith { hint "Vous ne pouvez pas braquer cette station !" };
if(_robber distance _shop > 3) exitWith { hint "Vous devez rester a moins de 3m du caissier!" };

if !(_kassa) then { _kassa = 1000; };
if (_rip) exitWith { hint "Braquage en cours..." };
if (vehicle player != _robber) exitWith { hint "Impossible de braquer depuis le vehicule" };

if !(alive _robber) exitWith {};
if (currentWeapon _robber == "") exitWith { hint "Tu t'es pris pour qui toi, procure toi une arme avant que je te botte le cul" };
if (_kassa == 0) exitWith { hint "Mo.. Moonns... Monsiieurrr, je n'ai plus aucun argent dans ma caisse !" };

_rip = true;
_kassa = 25000 + round(random 30000);
_shop removeAction _action;
_shop switchMove "AmovPercMstpSsurWnonDnon";
_chance = random(100);
if(_chance < 100) then { hint "Le caissier a activé l'alarme, la police ne va pas tarder à arriver !"; [[1,format["BRAQUAGE - La station service : %1 * est actuellement braquée", _shop]],"life_fnc_broadcast",west,false] spawn life_fnc_MP; };
playSound "alarme_magasin";

_cops = (west countSide playableUnits);
if(_cops < 3) exitWith{[[_vault,-1],"disableSerialization;",false,false] spawn life_fnc_MP; hint "Un minimum de trois policier est requis.";};
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Progression Braquage (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.01;

if(_rip) then
{
while{true} do
{
sleep 0.8;
_cP = _cP + 0.01;
_progress progressSetPosition _cP;
_pgText ctrlSetText format["Progression Braquage (%1%2)...",round(_cP * 100),"%"];
_Pos = position player;
				                _marker = createMarker ["Marker200", _Pos];
				                "Marker200" setMarkerColor "ColorRed";
				                "Marker200" setMarkerText "!ATTENTION! BRAQUAGE EN COURS !ATTENTION!";
				                "Marker200" setMarkerType "mil_warning";
if(_cP >= 1) exitWith {};
if(_robber distance _shop > 10.5) exitWith { };
if!(alive _robber) exitWith {};
};
if!(alive _robber) exitWith { _rip = false; };
if(_robber distance _shop > 3.5) exitWith { deleteMarker "Marker200"; _shop switchMove ""; hint "Tu as besoin de rester à - de 3m pour que le braquage continue !"; 5 cutText ["","PLAIN"]; _rip = false; };
5 cutText ["","PLAIN"];

titleText[format["Vous avez volé %1€, les gendarmes arrivent !",[_kassa] call life_fnc_numberText],"PLAIN"];
deleteMarker "Marker200";
life_cash = life_cash + _kassa;

_rip = false;
life_use_atm = false;
sleep (60 + random(180));
life_use_atm = true;
if!(alive _robber) exitWith {};
[[getPlayerUID _robber,name _robber,"211"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
};
sleep 300;
_action = _shop addAction["Rob Station",life_fnc_robShops];
_shop switchMove "";
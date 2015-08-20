/*
file: fn_robBijouterie.sqf
Author: Sakzy - www.altislifefr.com
Braquage de bijouterie
*/
private["_robber","_shop","_cash","_ui","_progress","_pgText","_cP","_rip","_pos","_timer","_toFar"];
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param; //The object that has the action attached to it is _this. ,0, is the index of object, ObjNull is the default should there be nothing in the parameter or it's broken
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param; //Can you guess? Alright, it's the player, or the "caller". The object is 0, the person activating the object is 1
_toFar = false;

if(side _robber != civilian) exitWith { hint "Vous ne pouvez pas braquer la Bijouterie !" };
_cops = (west countSide playableUnits);
if(_cops < 10) exitWith{hint "Il n'y a pas assez de policier pour braquer la Bijouterie!(10)";};
if(_robber distance _shop > 15) exitWith { hint "Vous devez rester a moins de 15m du coffre!" };
if (vehicle player != _robber) exitWith { hint "Impossible de braquer depuis le vehicule" };
if !(alive _robber) exitWith {};
if (currentWeapon _robber == "") exitWith { hint "Haha tu crois que tu me fais peur sans armes? Va jouer ailleurs!!" };
if(_shop getVariable ["robbed", false]) exitWith {hint "La Bijouterie a deja était braqué toute a l'heure!";};

_shop setVariable["robbed",true,true];
[[_shop],"TON_fnc_robBank",false,false] spawn life_fnc_MP;

_cash = 2000000 + round(random 2000000);
_timer = time + (15 * 60); //Default timer is 15 minutes to rob.
titleText["Braquage commencé","PLAIN"];
[[2,"LA BIJOUTERIE D'ALTIS SE FAIT BRAQUER !!!"],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
[[player, "alarme_bijouterie",10],"life_fnc_playSound",true,false] spawn life_fnc_MP;


while{true} do
{
	//Timer display (TO BE REPLACED WITH A NICE GUI LAYER)
	_countDown = if(round(_timer - time) > 60) then {format["%1 minute(s)",round(round(_timer - time) / 60)]} else {format["%1 second(s)",round(_timer - time)]};
	hintSilent format["Vous devez resté a 15 mètres\n\nTime Remaining:\n %1\n\nDistance: %2m",_countDown,round(player distance _shop)];

	if(player distance _shop > 15) exitWith {_toFar = true;};
	if((round(_timer - time)) < 1) exitWith {};
	if(!alive player) exitWith {};
	if(life_istazed) exitWith {};
};

switch(true) do
{
	case (_toFar):
	{
		hint "le braquage a échoué!!!";
		[[_shop,0],"STS_fnc_robberyState",false,false] spawn life_fnc_MP;
	};
	
	case (!alive player):
	{
		hint "tu es mort, le braquage a échoué!!!";
		[[_shop,0],"STS_fnc_robberyState",false,false] spawn life_fnc_MP;
	};
	
	case (life_istazed):
	{
		hint "le braquage a échoué!!!";
		[[_shop,0],"STS_fnc_robberyState",false,false] spawn life_fnc_MP;
	};
	
	case ((round(_timer - time)) < 1):
	{
		hint format["Vous venez de voler $%1, partez vite avant que la police n'arrive!!",[_cash] call life_fnc_numberText];
		[] spawn
		{
			life_use_atm = false;
			sleep 480;
			life_use_atm = true;
		};
		life_cash = life_cash + _cash;
		[[_shop,1,_cash],"STS_fnc_robberyState",false,false] spawn life_fnc_MP;
	};
};

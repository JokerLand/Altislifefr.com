/*
	File: fn_wantedAdd.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Adds or appends a unit to the wanted list.

private["_uid","_type","_index","_data","_crimes","_val","_customBounty","_name"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_name = [_this,1,"",[""]] call BIS_fnc_param;
_type = [_this,2,"",[""]] call BIS_fnc_param;
_customBounty = [_this,3,-1,[0]] call BIS_fnc_param;
if(_uid == "" OR _type == "" OR _name == "") exitWith {}; //Bad data passed.

//What is the crime?
switch(_type) do
{
	case "187V": {_type = ["Car Kill",6500]};
	case "187": {_type = ["Meurtre",8500]};
	case "901": {_type = ["Evasion",4500]};
	case "261": {_type = ["Viol",5000]}; //What type of sick bastard would add this?
	case "261A": {_type = ["Tentative de Viol",3000]};
	case "215": {_type = ["Tentative de vol de véhicule",2000]};
	case "213": {_type = ["Utilisation d'Explosifs Illégaux",10000]};
	case "211": {_type = ["Vol",1000]};
	case "207": {_type = ["Kidnapping",3500]};
	case "207A": {_type = ["Tentative de Kidnapping",2000]};
	case "487": {_type = ["Vol de véhicule",1500]};
	case "488": {_type = ["Larcin",700]};
	case "480": {_type = ["Délit de Fuite",1300]};
	case "481": {_type = ["Possession de Drogue",1000]};
	case "482": {_type = ["Intention de Trafiquer de la Drogue",5000]};
	case "483": {_type = ["Trafic de Drogue",9500]};
	case "459": {_type = ["Cambriolage",6500]};
	case "920": {_type = ["Braconnage",5000]};
	case "9024": {_type = ["Conduite sans permis",5000]};
	case "9023": {_type = ["Excès de Vitesse",3000]};
	default {_type = [];};
};

if(count _type == 0) exitWith {}; //Not our information being passed...
//Is there a custom bounty being sent? Set that as the pricing.
if(_customBounty != -1) then {_type set[1,_customBounty];};
//Search the wanted list to make sure they are not on it.
_index = [_uid,life_wanted_list] call fnc_index;

if(_index != -1) then
{
	_data = life_wanted_list select _index;
	_crimes = _data select 2;
	_crimes pushBack (_type select 0);
	_val = _data select 3;
	life_wanted_list set[_index,[_name,_uid,_crimes,(_type select 1) + _val]];
	[[_name,_uid,_crimes,(_type select 1) + _val],_uid] spawn TON_fnc_saveBounties;
}
	else
{
	life_wanted_list pushBack [_name,_uid,[(_type select 0)],(_type select 1)];
	[[_name,_uid,[(_type select 0)],(_type select 1)],_uid] spawn TON_fnc_saveBounties;
};
*/
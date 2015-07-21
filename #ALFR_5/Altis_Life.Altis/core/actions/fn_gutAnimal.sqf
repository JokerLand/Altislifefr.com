/*
	Author: GeK

	Description:
	Guts the deads animals
*/
private["_animal","_type"];
_animal = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(!(_animal isKindOf "Animal")) exitWith {}; //Not a fishy!
if(player distance _animal > 3.5) exitWith {};
switch(true) do
{
	case ((typeOf _animal) == "Hen_random_F"): {_type = "hen_raw"};
	case ((typeOf _animal) == "Cock_random_F") : {_type = "rooster_raw"};
	case ((typeOf _animal) == "Goat_random_F") : {_type = "goat_raw"};
	case ((typeOf _animal) == "Sheep_random_F") : {_type = "sheep_raw"};
	case ((typeOf _animal) == "Rabbit_F") : {_type = "rabbit_raw"};
	default {_type = ""};
};

if(_type == "") exitWith {}; //no type

if(([true,_type,1] call life_fnc_handleInv)) then
{
	deleteVehicle _animal;
};
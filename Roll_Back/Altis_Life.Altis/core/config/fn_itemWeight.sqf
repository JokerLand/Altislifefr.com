/*
	File: fn_itemWeight.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Gets the items weight and returns it.
*/
private["_item"];
_item = [_this,0,"",[""]] call BIS_fnc_param;
if(_item == "") exitWith {};

switch (_item) do
{
	case "oilu": {5};
	case "oilp": {4};
	case "heroinu": {6};
	case "heroinp": {4};
	case "cannabis": {5};
	case "marijuana": {3};
	case "apple": {1};
	case "water": {1};
	case "rabbit": {1};
	case "salema": {2};
	case "ornate": {2};
	case "mackerel": {4};
	case "tuna": {6};
	case "mullet": {4};
	case "catshark": {6};
	case "turtle": {4};
	case "fishing": {2};
	case "turtlesoup": {2};
	case "donuts": {1};
	case "coffee": {1};
	case "fuelE": {2};
	case "fuelF": {5};
	case "money": {0};
	case "pickaxe": {2};
	case "copperore": {4};
	case "ironore": {4};
	case "copper_r": {3};
	case "iron_r": {3};
	case "sand": {4};
	case "salt": {5};
	case "salt_r": {4};
	case "glass": {3};
	case "diamond": {6};
	case "diamondc": {5};
	case "cocaine": {6};
	case "cocainep": {4};
	case "spikeStrip": {10};
	case "barriere": {1};
	case "cone": {1};
	case "rock": {5};
	case "cement": {4};
	case "goldbar": {12};
	case "blastingcharge": {15};
	case "boltcutter": {5};
	case "defusekit": {2};
	case "storagesmall": {5};
	case "storagebig": {10};
	case "ephedrine": {3};
	case "phosphore ": {3};
	case "methu": {5};
	case "methp": {4};
	case "vodka": {4};
	case "moonshine": {4};
	case "grapes": {5};
	case "artefact": {56};
    case "burger": {1};
    case "cola": {1};
    case "frite": {1};
    case "biere": {1};
	default {1};
};

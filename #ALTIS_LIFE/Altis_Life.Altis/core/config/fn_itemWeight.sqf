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
	//Non Traité
	case "copperore": {8};
	case "grapes": {8};
	case "ironore": {8};
	case "artefact": {8};
	case "salt": {8};
	case "rock": {8};
	case "sand": {8};
	case "oilu": {8};
	case "diamond": {8};
	case "cannabis": {8};
	case "heroinu": {8};
	case "cocaine": {8};
	case "ephedrine": {8};
	//Traité
	case "vodka": {6};
	case "copper_r": {6};
	case "iron_r": {6};
	case "salt_r": {6};
	case "cement": {6};
	case "glass": {6};
	case "oilp": {6};
	case "diamondc": {6};
	case "marijuana": {6};
	case "moonshine": {6};
	case "heroinp": {6};
	case "cocainep": {6};
	case "methu": {6};
	case "methp": {6};
	//Uranium
	case "puranium": {6};
    case "ipuranium": {3};
    case "uranium1": {2};
    case "uranium2": {1};
    case "uranium3": {4};
    case "uranium4": {4};
    case "uranium": {4};
    //Reste
    case "phosphore ": {1};
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
	case "spikeStrip": {10};
	case "barriere": {1};
	case "cone": {1};
	case "goldbar": {12};
	case "blastingcharge": {15};
	case "boltcutter": {5};
	case "defusekit": {2};
	case "storagesmall": {5};
	case "storagebig": {10};
    case "burger": {1};
    case "cola": {1};
    case "frite": {1};
    case "biere": {1};
	case "menotte": {10};
    default {1};
};

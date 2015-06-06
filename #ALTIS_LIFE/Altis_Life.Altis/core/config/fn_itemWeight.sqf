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
	case "copperore": {10};
	case "grapes": {10};
	case "ironore": {10};
	case "artefact": {10};
	case "salt": {10};
	case "rock": {10};
	case "sand": {10};
	case "oilu": {10};
	case "diamond": {10};
	case "cannabis": {10};
	case "heroinu": {10};
	case "cocaine": {10};
	case "ephedrine": {10};
	//Traité
	case "vodka": {8};
	case "copper_r": {8};
	case "iron_r": {8};
	case "salt_r": {8};
	case "cement": {8};
	case "glass": {8};
	case "oilp": {8};
	case "diamondc": {8};
	case "marijuana": {8};
	case "moonshine": {8};
	case "heroinp": {8};
	case "cocainep": {8};
	case "methu": {8};
	case "methp": {8};
	//Uranium
	case "puranium": {12};
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
	case "beer": {1};
	case "whiskey": {1};
	case "rhum": {1};
	case "menotte": {10};
    default {1};
};

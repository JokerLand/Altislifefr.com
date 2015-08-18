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
	case "copperore": {6};
	case "grapes": {6};
	case "ironore": {6};
	case "artefact": {6};
	case "salt": {6};
	case "rock": {6};
	case "sand": {6};
	case "oilu": {6};
	case "diamond": {6};
	case "cannabis": {6};
	case "heroinu": {6};
	case "cocaine": {6};
	case "ephedrine": {6};
	//Traité
	case "vodka": {4};
	case "copper_r": {4};
	case "iron_r": {4};
	case "salt_r": {4};
	case "cement": {4};
	case "glass": {4};
	case "oilp": {4};
	case "diamondc": {4};
	case "marijuana": {4};
	case "moonshine": {4};
	case "heroinp": {4};
	case "cocainep": {4};
	case "methu": {4};
	case "methp": {4};
	//Uranium
	case "puranium": {4};
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
	case "crowbar": {1};
    default {1};
};

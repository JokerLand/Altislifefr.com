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
	case "oilu": {7};
	case "oilp": {6};
	case "heroinu": {6};
	case "heroinp": {4};
	case "cannabis": {4};
	case "marijuana": {3};
	case "apple": {1};
	case "water": {1};
	case "rabbit": {1};
	case "salema": {4};
	case "ornate": {2};
	case "mackerel": {4};
	case "tuna": {6};
	case "mullet": {4};
	case "catshark": {6};
	case "turtle": {6};
	case "fishing": {2};
	case "turtlesoup": {2};
	case "donuts": {1};
	case "coffee": {1};
	case "kidney": {15};
	case "fuelE": {2};
	case "fuelF": {5};
	case "money": {0};
	case "pickaxe": {2};
	case "copperore": {4};
	case "ironore": {5};
	case "copper_r": {3};
	case "iron_r": {3};
	case "sand": {3};
	case "salt": {3};
	case "salt_r": {1};
	case "glass": {1};
	case "diamond": {4};
	case "diamondc": {2};
	case "cocaine": {6};
	case "cocainep": {4};
	case "spikeStrip": {7};
	case "rock": {6};
	case "cement": {5};
	case "goldbar": {12};
	case "blastingcharge": {15};
	case "boltcutter": {5};
	case "defusekit": {2};
	case "storagesmall": {5};
	case "storagebig": {10};
	case "debitcard": {0};
	case "speedbomb": {10};
	case "puranium": {5}; // Add this
    case "ipuranium": {3}; // Add this
    case "uranium1": {2}; // Add this
    case "uranium2": {1}; // Add this
    case "uranium3": {4}; // Add this
	case "uranium3b": {4};
    case "uranium4": {4}; // Add this
	case "uranium4b": {4}; 
    case "uranium": {4}; // Add this
	case "uraniumb": {4}; // Add this
	case "wine": {2};
	case "adre": {1};
	case "moonshine": {2};
	case "grapes": {3};
	case "ether": {2};
	case "ephed": {2};
	case "butane": {2};
	case "phosph": {2};
	case "roadCone": {1};
	case "roadBarrier": {1};
	case "triangleSignal": {1};
	case "meth55": {3};
	case "meth60": {3};
	case "meth75": {3};
	case "meth85": {3};
	case "meth97": {3};
	case "houblon": {3};
	case "malt": {3};
	case "beer": {2};
	case "whiskey": {2};
	case "artefact": {7};
	case "tabac": {3};
	case "cigar": {2};
	case "explo_i": {20};
	case "tracker": {2};
	case "cigarettes": {2};
	case "huntingKnife": {2};
	case "rabbitMeat": {2};
	case "cuff": {1};
	case "flour": {3};
	case "wheat": {4};
	case "olive": {4};
	case "oliveoil": {3};
	case "burger": {1};
    case "cola": {1};
    case "frite": {1};
    case "biere": {1};
	default {1};
};
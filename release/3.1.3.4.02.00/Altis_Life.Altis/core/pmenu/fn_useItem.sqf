/*
	File: fn_useItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main function for item effects and functionality through the player menu.
*/
private["_item"];
disableSerialization;
if((lbCurSel 2005) == -1) exitWith {hint "You need to select an item first!";};
_item = lbData[2005,(lbCurSel 2005)];

switch (true) do
{
	case (_item == "water" or _item == "coffee"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			player setFatigue 0;
		};
	};
        
        case (_item == "cola" or _item == "biere"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst =100;
		};
	};
	
	case (_item == "boltcutter"): {
		[cursorTarget] spawn life_fnc_boltcutter;
		closeDialog 0;
	};
	
	case (_item == "blastingcharge"): {
		player reveal fed_bank;
		(group player) reveal fed_bank;
		[cursorTarget] spawn life_fnc_blastingCharge;
	};
	
	case (_item == "defusekit"): {
		[cursorTarget] spawn life_fnc_defuseKit;
	};
	
	case (_item in ["storagesmall","storagebig"]): {
		[_item] call life_fnc_storageBox;
	};
	
	case (_item == "redgull"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			player setFatigue 0;
			[] spawn
			{
				life_redgull_effect = time;
				titleText["You can now run farther for 3 minutes","PLAIN"];
				player enableFatigue false;
				waitUntil {!alive player OR ((time - life_redgull_effect) > (3 * 60))};
				player enableFatigue true;
			};
		};
	};
	
	case (_item == "spikeStrip"):
	{
		if(!isNull life_spikestrip) exitWith {hint "You already have a Spike Strip active in deployment"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_spikeStrip;
		};
	};
	
	case (_item == "barriere"):
	{
		if(!isNull life_barriere) exitWith {hint "Vous deployez déjà une barrière"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_barriere;
		};
	};
	
	case (_item == "cone"):
	{
		if(!isNull life_cone) exitWith {hint "Vous deployez déjà un cône."};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_cone;
		};
	};
	
	case (_item == "marijuana"):
	{
		 if(([false,_item,1] call life_fnc_handleInv)) then
		 {
        	[] spawn life_fnc_weed;
		 };
	};

	case (_item == "heroinp"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_heroine;
		};
	};

	case (_item == "cocainep"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_cocaine;
		};
	};

	case (_item == "methp"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_meth;
		};
	};

	case (_item == "moonshine"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_alcool;
		};
	};

	case (_item == "vodka"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_alcool;
		};
	};
	
	case (_item == "fuelF"):
	{
		if(vehicle player != player) exitWith {hint "You can't refuel the vehicle while in it!"};
		[] spawn life_fnc_jerryRefuel;
	};
	
	case (_item == "lockpick"):
	{
		[] spawn life_fnc_lockpick;
	};
	
	case (_item in ["apple","rabbit","salema","ornate","mackerel","tuna","mullet","catshark","turtle","turtlesoup","donuts","tbacon","peach","burger","frite"]):
	{
		[_item] call life_fnc_eatFood;
	};

	case (_item == "pickaxe"):
	{
		[] spawn life_fnc_pickAxeUse;
	};
	
	default
	{
		hint "This item isn't usable.";
	};
};
	
[] call life_fnc_p_updateMenu;
[] call life_fnc_hudUpdate;
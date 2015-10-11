/*
	File: fn_useItem.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Main function for item effects and functionality through the player menu.
*/
private["_item"];
disableSerialization;
if((lbCurSel 2005) == -1) exitWith {hint localize "STR_ISTR_SelectItemFirst";};
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
				titleText[localize "STR_ISTR_RedGullEffect","PLAIN"];
				player enableFatigue false;
				waitUntil {!alive player OR ((time - life_redgull_effect) > (3 * 60))};
				player enableFatigue true;
			};
		};
	};

	case (_item == "spikeStrip"):
	{
		if(!isNull life_spikestrip) exitWith {hint localize "STR_ISTR_SpikesDeployment"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_spikeStrip;
		};
	};

	case (_item == "fuelF"):
	{
		if(vehicle player != player) exitWith {hint localize "STR_ISTR_RefuelInVehicle"};
		[] spawn life_fnc_jerryRefuel;
	};

	case (_item == "lockpick"):
	{
		[] spawn life_fnc_lockpick;
	};
	
	case (_item == "crowbar"):
	{
		[] spawn life_fnc_crowbar;
	};

	case (_item in ["apple","rabbit","salema","ornate","mackerel","tuna","mullet","catshark","turtle","turtlesoup","donuts","tbacon","peach"]):
	{
		[_item] call life_fnc_eatFood;
	};

	case (_item == "pickaxe"):
	{
		[] spawn life_fnc_pickAxeUse;
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
    
    case (_item == "glissiere"):
	{
		if(!isNull life_glissiere) exitWith {hint "Vous deployez déjà une glissière."};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_glissiere;
		};
	};
    
    case (_item == "barstop"):
	{
		if(!isNull life_barstop) exitWith {hint "Vous deployez déjà une barstop."};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_barstop;
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

	case (_item =="vodka"):
	{
		if(playerSide in [west,independent]) exitWith {hint "Pas d'alcool durant le service !";};
		if((player getVariable ["inDrink",FALSE])) exitWith {hint "Vous êtes déja en train de boire !";};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			if(isNil "life_drink") then {life_drink = 0;};
			life_drink = life_drink + 0.04;
			if (life_drink < 0.07) exitWith {};
			[] spawn life_fnc_drinkwhiskey;
		};
	};
	
	case (_item =="rhum"):
	{
		if(playerSide in [west,independent]) exitWith {hint "Pas d'alcool durant le service !";};
		if((player getVariable ["inDrink",FALSE])) exitWith {hint "Vous êtes déja en train de boire !";};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			if(isNil "life_drink") then {life_drink = 0;};
			life_drink = life_drink + 0.04;
			if (life_drink < 0.07) exitWith {};
			[] spawn life_fnc_drinkrhum;
		};
	};
	
	case (_item =="whiskey"):
	{
		if(playerSide in [west,independent]) exitWith {hint "Pas d'alcool durant le service !";};
		if((player getVariable ["inDrink",FALSE])) exitWith {hint "Vous êtes déja en train de boire !";};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			if(isNil "life_drink") then {life_drink = 0;};
			life_drink = life_drink + 0.06;
			if (life_drink < 0.07) exitWith {};
			[] spawn life_fnc_drinkwhiskey;
		};
	};
	
	case (_item =="beer"):
	{
		
		if(playerSide in [west,independent]) exitWith {hint localize "Pas d'alcool durant le service !";};
		if((player getVariable ["inDrink",FALSE])) exitWith {hint localize "Vous êtes déja en train de boire !";};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			if(isNil "life_drink") then {life_drink = 0;};
			life_drink = life_drink + 0.02;
			if (life_drink < 0.06) exitWith {};
			[] spawn life_fnc_drinkbeer;
		};
	};

	default
	{
		hint localize "STR_ISTR_NotUsable";
	};
};

[] call life_fnc_p_updateMenu;
[] call life_fnc_hudUpdate;
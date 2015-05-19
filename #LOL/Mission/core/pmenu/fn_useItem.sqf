/*
	File: fn_useItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main function for item effects and functionality through the player menu.
*/
private["_item"];
disableSerialization;
if((lbCurSel 1300) == -1) exitWith {hint localize "STR_ISTR_SelectItemFirst";};
_item = lbData[1300,(lbCurSel 1300)];

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
	
	case (_item == "boltcutter"): {
		[cursorTarget] spawn life_fnc_boltcutter;
		closeDialog 0;
	};
	
	case (_item == "blastingcharge"): {
		player reveal fed_bank;
		(group player) reveal fed_bank;
		[cursorTarget] spawn life_fnc_blastingCharge;
	};
	case (_item == "kidney"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			player setVariable["missingOrgan",false,true];
			life_thirst = 100;
			life_hunger = 100;
			player setFatigue .5;
		};
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
	
	case (_item == "roadCone"):
	{
		if(!isNull life_roadcone) exitWith {hint "Vous déployez déjà un cone"};
		if(!isNull life_spikestrip) exitWith {hint localize "STR_ISTR_SpikesDeployment"};
		if(!isNull life_roadbarrier) exitWith {hint "Vous déployez déjà une barrière"};
		if(!isNull life_trianglesignal) exitWith {hint "Vous déployez déja un triangle de signalisation"};
		if(playerSide != west) exitWith {hint "Vous n'êtes pas Gendarme"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_roadCone;
		};
	};
	
	case (_item == "triangleSignal"):
	{
		if(!isNull life_roadcone) exitWith {hint "Vous déployez déjà un cone"};
		if(!isNull life_spikestrip) exitWith {hint localize "STR_ISTR_SpikesDeployment"};
		if(!isNull life_roadbarrier) exitWith {hint "Vous déployez déjà une barrière"};
		if(!isNull life_trianglesignal) exitWith {hint "Vous déployez déja un triangle de signalisation"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_triangleSignal;
		};
	};
	case (_item == "spikeStrip"):
	{
		if(!isNull life_spikestrip) exitWith {hint localize "STR_ISTR_SpikesDeployment"};
		if(!isNull life_roadcone) exitWith {hint "Vous déployez déjà un cone"};
		if(!isNull life_roadbarrier) exitWith {hint "Vous déployez déjà une barrière"};
		if(!isNull life_trianglesignal) exitWith {hint "Vous déployez déja un triangle de signalisation"};
		if(playerSide != west) exitWith {hint "Vous n'êtes pas Gendarme"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_spikeStrip;
		};
	};
	case (_item == "roadBarrier"):
	{
		if(!isNull life_spikestrip) exitWith {hint localize "STR_ISTR_SpikesDeployment"};
		if(!isNull life_roadcone) exitWith {hint "Vous déployez déjà un cone"};
		if(!isNull life_roadbarrier) exitWith {hint "Vous déployez déjà une barrière"};
		if(!isNull life_trianglesignal) exitWith {hint "Vous déployez déja un triangle de signalisation"};
		if(playerSide != west) exitWith {hint "Vous n'êtes pas Gendarme"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_roadBarrier;
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
	
	case (_item in ["apple","rabbit","salema","ornate","mackerel","tuna","mullet","catshark","turtle","turtlesoup","donuts","tbacon","peach"]):
	{
		[_item] call life_fnc_eatFood;
	};

	/*case (_item == "pickaxe"):
	{
		[] spawn life_fnc_pickAxeUse;
	};*/
	
	case (_item == "speedbomb"):
	{
		[] spawn life_fnc_speedBomb;
	};
	
	case (_item == "adre"):
	{
		[] spawn life_fnc_adrenaline;
	};
	
	case (_item =="whiskey"):
	{
		if((player getVariable ["inDrink",FALSE])) exitWith {hint localize "STR_MISC_AlreadyDrinking";};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			if(isNil "life_drink") then {life_drink = 0;};
			life_drink = life_drink + 0.06;
			if (life_drink < 0.07) exitWith {};
			[] spawn life_fnc_drinkWhiskey;
		};
	};
	
	case (_item =="moonshine"):
	{
		if((player getVariable ["inDrink",FALSE])) exitWith {hint localize "STR_MISC_AlreadyDrinking";};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			if(isNil "life_drink") then {life_drink = 0;};
			life_drink = life_drink + 0.08;
			if (life_drink < 0.09) exitWith {};
			[] spawn life_fnc_drinkMoonshine;
		};
	};
	
	case (_item == "marijuana"):
{
    if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_weed;
		};
	};
	
	case (_item == "cocainep"):
{
    if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_cocaine;
		};
	};
	
	case (_item =="beer"):
	{
		
		if((player getVariable ["inDrink",FALSE])) exitWith {hint localize "STR_MISC_AlreadyDrinking";};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			if(isNil "life_drink") then {life_drink = 0;};
			life_drink = life_drink + 0.02;
			if (life_drink < 0.06) exitWith {};
			[] spawn life_fnc_drinkBeer;
		};
	};
	
	case (_item =="wine"):
	{
		if((player getVariable ["inDrink",FALSE])) exitWith {hint localize "STR_MISC_AlreadyDrinking";};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			if(isNil "life_drink") then {life_drink = 0;};
			life_drink = life_drink + 0.02;
			if (life_drink < 0.06) exitWith {};
			[] spawn life_fnc_drinkWine;
		};
	};
	
	default
	{
		hint localize "STR_ISTR_NotUsable";
	};
};
	
[] call life_fnc_p_updateMenu;
[] call life_fnc_hudUpdate;
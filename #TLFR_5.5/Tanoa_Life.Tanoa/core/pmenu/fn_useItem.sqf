#include <macro.h>
/*
	File: fn_useItem.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Main function for item effects and functionality through the player menu.
*/
private "_item";
disableSerialization;
if(EQUAL(lbCurSel 2005,-1)) exitWith {hint localize "STR_ISTR_SelectItemFirst";};
_item = CONTROL_DATA(2005);

switch (true) do {
	case (_item in ["waterBottle","coffee","redgull"]): {
		if(([false,_item,1] call life_fnc_handleInv)) then {
            playSound "boire";
			life_thirst = 100;
			if(EQUAL(LIFE_SETTINGS(getNumber,"enable_fatigue"),1)) then {player setFatigue 0;};
			if(EQUAL(_item,"redgull") && {EQUAL(LIFE_SETTINGS(getNumber,"enable_fatigue"),1)}) then {
				[] spawn {
					life_redgull_effect = time;
					titleText[localize "STR_ISTR_RedGullEffect","PLAIN"];
                    playSound "boire";
					player enableFatigue false;
					waitUntil {!alive player OR ((time - life_redgull_effect) > (3 * 60))};
					player enableFatigue true;
				};
			};
		};
	};

	case (EQUAL(_item,"boltcutter")): {
		[cursorTarget] spawn life_fnc_boltcutter;
		closeDialog 0;
	};

	case (EQUAL(_item,"blastingcharge")): {
		player reveal fed_bank;
		(group player) reveal fed_bank;
		[cursorTarget] spawn life_fnc_blastingCharge;
	};

	case (EQUAL(_item,"defusekit")): {
		[cursorTarget] spawn life_fnc_defuseKit;
	};

	case (_item in ["storagesmall","storagebig"]): {
		[_item] call life_fnc_storageBox;
	};

	case (EQUAL(_item,"spikeStrip")): {
		if(!isNull life_spikestrip) exitWith {hint localize "STR_ISTR_SpikesDeployment"};
		if(([false,_item,1] call life_fnc_handleInv)) then {
			[] spawn life_fnc_spikeStrip;
		};
	};
    
    case (EQUAL(_item,"barrierl")): {
		if(!isNull life_barrierl) exitWith {hint localize "STR_ISTR_BarrierlDeployment"};
		if(([false,_item,1] call life_fnc_handleInv)) then {
			[] spawn life_fnc_barrierl;
		};
	};
    
    case (_item == "barrier"):
	{
		if(!isNull life_barrier) exitWith {hint "Vous déployez déjà une barrière"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_barrier;
		};
	}; 
    
    case (_item == "ladder"):
	{
		if(!isNull life_ladder) exitWith {hint "Vous déployez déjà une échelle"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_ladder;
		};
	};

	case (_item == "cone"):
	{
		if(!isNull life_cone) exitWith {hint "Vous déployez déjà un cône."};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_cone;
		};
	};
    
    case (_item == "conel"):
	{
		if(!isNull life_conel) exitWith {hint "Vous déployez déjà un cône lumineux."};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_conel;
		};
	};
    
    case (_item == "glissiere"):
	{
		if(!isNull life_glissiere) exitWith {hint "Vous déployez déjà une glissière."};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_glissiere;
		};
	};
    
    case (_item == "barstop"):
	{
		if(!isNull life_barstop) exitWith {hint "Vous déployez déjà une barstop."};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_barstop;
		};
	};
    
    case (_item == "lightd"):
	{
		if(!isNull life_lightd) exitWith {hint "Vous déployez déjà une lightd."};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_lightd;
		};
	};

	case (EQUAL(_item,"fuelFull")): {
		if(vehicle player != player) exitWith {hint localize "STR_ISTR_RefuelInVehicle"};
		[] spawn life_fnc_jerryRefuel;
	};

	case (EQUAL(_item,"lockpick")): {
		[] spawn life_fnc_lockpick;
	};
	
	case (_item == "crowbar"):
		{
		[] spawn life_fnc_crowbar;
		};
	
    case (_item == "gpsTracker"): {
		[cursorTarget] spawn life_fnc_gpsTracker;
		closeDialog 0;
	};    
    
	case (_item == "passeport"):
		{
			[] spawn life_fnc_usepasseport;
		};
	
	case (_item == "johnpasseport"):
		{
			[] spawn life_fnc_usepasseportjohn;
		};
		
	case (_item == "michealpasseport"):
		{
			[] spawn life_fnc_usepasseportmicheal;
		};

	case (_item == "tompasseport"):
		{
			[] spawn life_fnc_usepasseporttom;
		};

	case (_item == "marcelpasseport"):
		{
			[] spawn life_fnc_usepasseportmarcel;
		};

	case (_item == "marcpasseport"):
		{
			[] spawn life_fnc_usepasseportmarc;
		};

	case (_item == "nathanpasseport"):
		{
			[] spawn life_fnc_usepasseportnathan;
		};

	case (_item == "francispasseport"):
		{
			[] spawn life_fnc_usepasseportfrancis;
		};

	case (_item == "deweypasseport"):
		{
			[] spawn life_fnc_usepasseportdewey;
		};

	case (_item == "halpasseport"):
		{
			[] spawn life_fnc_usepasseporthal;
		};	

	case (_item == "craigpasseport"):
		{
			[] spawn life_fnc_usepasseportcraig;
		};	

	case (_item == "ericpasseport"):
		{
			[] spawn life_fnc_usepasseporteric;
		};	

	case (_item == "joshuapasseport"):
		{
			[] spawn life_fnc_usepasseportjoshua;
		};	

	case (_item == "dougpasseport"):
		{
			[] spawn life_fnc_usepasseportdoug;
		};

	case (_item == "richardpasseport"):
		{
			[] spawn life_fnc_usepasseportrichard;
		};	

	case (_item == "anthonypasseport"):
		{
			[] spawn life_fnc_usepasseportanthony;
		};	

	case (_item == "leonpasseport"):
		{
			[] spawn life_fnc_usepasseportleon;
		};	

	case (_item == "tracypasseport"):
		{
			[] spawn life_fnc_usepasseporttracy;
		};

	case (_item == "nikkipasseport"):
		{
			[] spawn life_fnc_usepasseportnikki;
		};	

	case (_item == "monicapasseport"):
		{
			[] spawn life_fnc_usepasseportmonica;
		};

	case (_item == "mariepasseport"):
		{
			[] spawn life_fnc_usepasseportmarie;
		};	

	case (_item == "mirandapasseport"):
		{
			[] spawn life_fnc_usepasseportmiranda;
		};	

	case (_item == "christinapasseport"):
		{
			[] spawn life_fnc_usepasseportchristina;
		};	

	case (_item == "ericapasseport"):
		{
			[] spawn life_fnc_usepasseporterica;
		};				

	case (_item == "jingmeipasseport"):
		{
			[] spawn life_fnc_usepasseportjingmei;
		};
		
	case (_item in ["apple","rabbit","salema","ornate","mackerel","tuna","mullet","catshark","turtle","turtlesoup","donuts","tbacon","banane","noixcoco","peach"]): {
		if(!(EQUAL(M_CONFIG(getNumber,"VirtualItems",_item,"edible"),-1))) then {
			if([false,_item,1] call life_fnc_handleInv) then {
				_val = M_CONFIG(getNumber,"VirtualItems",_item,"edible");
				_sum = life_hunger + _val;
                playSound "mange";
				switch (true) do {
					case (_val < 0 && _sum < 1): {life_hunger = 5;}; //This adds the ability to set the entry edible to a negative value and decrease the hunger without death
					case (_sum > 100): {life_hunger = 100;};
					default {life_hunger = _sum;};
				};
			};
		};
	};
    /*
	case (EQUAL(_item,"pickaxe")): {
		[] spawn life_fnc_pickAxeUse;
        playSound "mining";
	};
	*/
	default {
		hint localize "STR_ISTR_NotUsable";
	};
    
    case (_item =="vodka"):
	{
		if(playerSide in [west,independent]) exitWith {hint "Pas d'alcool durant le service, ou c'est le Rapport aux Officiers !";};
		if((player getVariable ["inDrink",FALSE])) exitWith {hint "Vous êtes déja en train de boire !";};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			if(isNil "life_drink") then {life_drink = 0;};
			life_drink = life_drink + 0.04;
			if (life_drink < 0.07) exitWith {};
			[] spawn life_fnc_drinkwhiskey;
		};
	};
    
    case (_item =="meth"):
	{
		if(playerSide in [west,independent]) exitWith {hint "Vous souhaitez être viré pour consommation de Stup' ?  Proposez-en aux CapiChef's, voire ce qu'ils en pensent...";};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_meth;
		};
	};
	};
	
	case (_item =="rhum"):
	{
		if(playerSide in [west,independent]) exitWith {hint "Pas d'alcool durant le service, ou c'est le Rapport aux Officiers !";};
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
		if(playerSide in [west,independent]) exitWith {hint "Pas d'alcool durant le service, ou c'est le Rapport aux Officiers !";};
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
		
		if(playerSide in [west,independent]) exitWith {hint localize "Pas d'alcool durant le service, ou c'est le Rapport aux Officiers !";};
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

#include "..\script_macros.hpp"
/*
    File: fn_survival.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    All survival? things merged into one thread.
*/
private["_fnc_food","_fnc_water","_foodTime","_waterTime","_bp","_walkDis","_lastPos","_curPos"];
_fnc_food =  {
    if (life_hunger < 2) then {player setDamage 1; hint localize "STR_NOTF_EatMSG_Death";}
    else
    {
        life_hunger = life_hunger - 10;
        [] call life_fnc_hudUpdate;
        if (life_hunger < 2) then {player setDamage 1; hint localize "STR_NOTF_EatMSG_Death";};
        switch (life_hunger) do {
			case 30: 
			{
                {hint localize "STR_NOTF_EatMSG_1";};
                [player, "faim",5] call CBA_fnc_globalSay3d;
            };
			case 20: 
			{
                {hint localize "STR_NOTF_EatMSG_2";};
                [player, "faim",5] call CBA_fnc_globalSay3d;
            };
            case 10: {
                hint localize "STR_NOTF_EatMSG_3";
				 [player, "faim",5] call CBA_fnc_globalSay3d;
                if (LIFE_SETTINGS(getNumber,"enable_fatigue") isEqualTo 1) then {player setFatigue 1;};
            };
        };
    };
};

_fnc_water = {
    if (life_thirst < 2) then {player setDamage 1; hint localize "STR_NOTF_DrinkMSG_Death";}
    else
    {
        life_thirst = life_thirst - 10;
        [] call life_fnc_hudUpdate;
        if (life_thirst < 2) then {player setDamage 1; hint localize "STR_NOTF_DrinkMSG_Death";};
        switch (life_thirst) do  {
			case 30: 
			{
                {hint localize "STR_NOTF_DrinkMSG_1";};
                [player, "soif",5] call CBA_fnc_globalSay3d;
			};
            case 20: 
			{
                hint localize "STR_NOTF_DrinkMSG_2";
				[player, "soif",5] call CBA_fnc_globalSay3d;
                if (LIFE_SETTINGS(getNumber,"enable_fatigue") isEqualTo 1) then {player setFatigue 1;};
            };
            case 10: {
                hint localize "STR_NOTF_DrinkMSG_3";
				[player, "soif",5] call CBA_fnc_globalSay3d;
                if (LIFE_SETTINGS(getNumber,"enable_fatigue") isEqualTo 1) then {player setFatigue 1;};
            };
        };
    };
};


//Setup the time-based variables.
_foodTime = time;
_waterTime = time;
_walkDis = 0;
_bp = "";
_lastPos = visiblePosition player;
_lastPos = (_lastPos select 0) + (_lastPos select 1);
_lastState = vehicle player;


for "_i" from 0 to 1 step 0 do {
    /* Thirst / Hunger adjustment that is time based */
    if ((time - _waterTime) > 600) then {[] call _fnc_water; _waterTime = time;};
    if ((time - _foodTime) > 850) then {[] call _fnc_food; _foodTime = time;};

    /* Adjustment of carrying capacity based on backpack changes */
    if (backpack player isEqualTo "") then {
        life_maxWeight = LIFE_SETTINGS(getNumber,"total_maxWeight");
        _bp = backpack player;
    } else {
        if (!(backpack player isEqualTo "") && {!(backpack player isEqualTo _bp)}) then {
            _bp = backpack player;
            life_maxWeight = LIFE_SETTINGS(getNumber,"total_maxWeight") + round(FETCH_CONFIG2(getNumber,"CfgVehicles",_bp,"maximumload") / 4);
			if (backpack player == "B_Parachute") then { _load = 24; };
			if (backpack player == "B_FieldPack_cbr") then { _load = 52; };
			if (backpack player == "B_FieldPack_khk") then { _load = 52; };
			if (backpack player == "B_FieldPack_blk") then { _load = 52; };
			if (backpack player == "B_FieldPack_oucamo") then { _load = 52; };
			if (backpack player == "TRYK_B_FieldPack_Wood") then { _load = 52; };
			if (backpack player == "ALFR_Civ_Bags_backpack_DC") then { _load = 78; };
			if (backpack player == "ALFR_Civ_Bags_backpack_terminator") then { _load = 78; };
			if (backpack player == "ALFR_Civ_Bags_backpack_monster") then { _load = 78; };
			if (backpack player == "ALFR_Civ_Bags_backpack_superman") then { _load = 78; };
			if (backpack player == "ALFR_Civ_Bags_Nitrado") then { _load = 78; };
			if (backpack player == "B_Carryall_oli") then { _load = 78; };
			if (backpack player == "B_Carryall_cbr") then { _load = 78; };
			if (backpack player == "B_Carryall_khk") then { _load = 78; };
			if (backpack player == "TRYK_B_Carryall_blk") then { _load = 78; };
			if (backpack player == "B_Carryall_ocamo") then { _load = 78; };
			if (backpack player == "B_Carryall_mcamo") then { _load = 78; };
			if (backpack player == "TRYK_B_Carryall_JSDF") then { _load = 78; };
			if (backpack player == "TRYK_B_Carryall_wood") then { _load = 78; };
			if (backpack player == "ALFR_Police_Bags") then { _load = 78; };
			if (backpack player == "TRYK_B_Kitbag_blk") then { _load = 78; };
			if (backpack player == "TRYK_B_Medbag") then { _load = 78; };
			if (backpack player == "ALFR_Police_Backpack") then { _load = 78; };
			life_maxWeight = _load;			
        };
    };

    /* Check if the player's state changed? */
    if (vehicle player != _lastState || {!alive player}) then {
        [] call life_fnc_updateViewDistance;
        _lastState = vehicle player;
    };

    /* Check if the weight has changed and the player is carrying to much */
    if (life_carryWeight > life_maxWeight && {!isForcedWalk player}) then {
        player forceWalk true;
        if (LIFE_SETTINGS(getNumber,"enable_fatigue") isEqualTo 1) then {player setFatigue 1;};
        hint localize "STR_NOTF_MaxWeight";
    } else {
        if (isForcedWalk player) then {
            player forceWalk false;
        };
    };

    /* Travelling distance to decrease thirst/hunger which is captured every second so the distance is actually greater then 650 */
    if (!alive player) then {_walkDis = 0;} else {
        _curPos = visiblePosition player;
        _curPos = (_curPos select 0) + (_curPos select 1);
        if (!(_curPos isEqualTo _lastPos) && {(isNull objectParent player)}) then {
            _walkDis = _walkDis + 1;
            if (_walkDis isEqualTo 650) then {
                _walkDis = 0;
                life_thirst = life_thirst - 5;
                life_hunger = life_hunger - 5;
                [] call life_fnc_hudUpdate;
            };
        };
        _lastPos = visiblePosition player;
        _lastPos = (_lastPos select 0) + (_lastPos select 1);
    };
    uiSleep 1;
};

[] spawn
{
	while {true} do
	{
		waitUntil {(life_drink > 0)};
		while{(life_drink > 0)} do {
		
			if(life_drink > 0.08) then {
			"radialBlur" ppEffectEnable true;
			"radialBlur" ppEffectAdjust[0.08, 0,0.35,0.37];
			"radialBlur" ppEffectCommit 3;
			sleep 240;
			life_drink = life_drink - 0.02;
			} else {
			"radialBlur" ppEffectEnable true;
			"radialBlur" ppEffectAdjust[0.05, 0,0.36,0.38];
			"radialBlur" ppEffectCommit 1;
			sleep 180;
			life_drink = life_drink - 0.02;
			};
		};
		
		"radialBlur" ppEffectAdjust  [0,0,0,0];
		"radialBlur" ppEffectCommit 5;
		"radialBlur" ppEffectEnable false;
		life_drink = 0;
		
	};
};

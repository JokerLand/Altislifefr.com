/*
    File: fn_dropFishingNet.sqf
    Author: Bryan "Tonic" Boardwine
    
    Description:
    Drops a virtual fishing net from the boat.
*/
private["_fish","_type","_typen"];
if(!(vehicle player isKindOf "Ship")) exitWith {};
_fish = (nearestObjects[getPos vehicle player,["Fish_Base_F"],50]);
life_net_dropped = true;
titleText[localize "STR_NOTF_NetDrop","PLAIN"];
sleep 5;
if(count _fish == 0) exitWith {titleText[localize "STR_NOTF_NetDropFail","PLAIN"]; life_net_dropped = false;};
{
    if(_x isKindOf "Fish_Base_F") then
    {
        switch(true) do
        {
            case ((typeOf _x) == "Salema_F"): {_type = "salema"};
            case ((typeOf _x) == "Ornate_random_F") : {_type = "ornate"};
            case ((typeOf _x) == "Mackerel_F") : {_type = "mackerel"};
            case ((typeOf _x) == "Tuna_F") : {_type = "tuna"};
            case ((typeOf _x) == "Mullet_F") : {_type = "mullet"};
            case ((typeOf _x) == "CatShark_F") : {_type = "catshark"};
            default {_type = ""};
        };
        
        sleep 3;
        
        if(([true,_type,1] call life_fnc_handleInv)) then
        {
            switch(_type) do
            {
                case "salema" : {_typen = localize "STR_ANIM_Salema"};
                case "ornate" : {_typen = localize "STR_ANIM_Ornate"};
                case "mackerel" : {_typen = localize "STR_ANIM_Mackerel"};
                case "tuna" : {_typen = localize "STR_ANIM_Tuna"};
                case "mullet" : {_typen = localize "STR_ANIM_Mullet"};
                case "catshark" : {_typen = localize "STR_ANIM_Catshark"};
                default {_typen = ""};
            };
            deleteVehicle _x;
            titleText[format["Vous avez pêcher %1",_typen],"PLAIN"];
        };
    };
} foreach (_fish);

sleep 1.5;
titleText[localize "STR_NOTF_NetUp","PLAIN"];
life_net_dropped = false;
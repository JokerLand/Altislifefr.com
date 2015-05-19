/*
    File: fn_processActionDual.sqf
    Author: Bryan "Tonic" Boardwine
    Script by Tonic Edit by Nark0t1k
    Description:
    Master handling for processing an item.
*/
private["_vendor","_type","_itemInfo","_oldItem1","_oldItem2","_newItem","_cost","_upp","_hasLicense","_itemName","_oldVal","_oldVal1","_oldval2","_ui","_progress","_pgText","_cP","_speed"];
_vendor = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_type = [_this,3,"",[""]] call BIS_fnc_param;
_speed = "medium";
//Error check
if(isNull _vendor OR _type == "" OR (player distance _vendor > 10)) exitWith {};
if ((_type == "uranium2") && (life_inv_puranium == 0)) exitWith {hint "Tu n'as pas de produit pour enrichir l'uranium.";};
if ((_type == "uranium2b") && (life_inv_ipuranium == 0)) exitWith {hint "Tu n'as pas de produit pour enrichir l'uranium.";};
 
//unprocessed item,processed item, cost if no license,Text to display (I.e Processing (percent) ..."
_itemInfo = switch (_type) do
{
    case "uranium2": {["uranium2","puranium","uranium3",6000,"Enrichissement Uranium (Civil - Légal)"];};
    case "uranium2b": {["uranium2","ipuranium","uranium3b",6000,"Enrichissement Uranium (Militaire - Illegal)"];};
    default {[]};
};
 
//Error checking
if(count _itemInfo == 0) exitWith {};
 
//Setup vars.
_oldItem1 = _itemInfo select 0;
_oldItem2 = _itemInfo select 1;
_newItem = _itemInfo select 2;
_cost = _itemInfo select 3;
_upp = _itemInfo select 4;
_hasLicense = missionNamespace getVariable (([_type,0] call life_fnc_licenseType) select 0);
if(!_hasLicense) exitWith {hint "Vous n'aves pas la license requise"};
_itemName = [([_newItem,0] call life_fnc_varHandle)] call life_fnc_varToStr;
_oldVal1 = missionNamespace getVariable ([_oldItem1,0] call life_fnc_varHandle);
_oldVal2 = missionNamespace getVariable ([_oldItem2,0] call life_fnc_varHandle);
 
if(_oldVal1 <= _oldVal2) then
{
_oldVal = _oldVal1;
}
else
{
_oldVal = _oldVal2;
};
 
_cost = _cost * _oldVal;
//Some more checks
if(_oldVal == 0) exitWith {};
 
//Setup our progress bar.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
_progress progressSetPosition 0.01;
_cP = 0.01;
 
life_is_processing = true;
 
if(_hasLicense) then
{
 
    while{true} do
    {
        sleep 0.25;
        _cP = _cP + 0.01;
        _progress progressSetPosition _cP;
        _pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
        if(_cP >= 1) exitWith {};
        if(player distance _vendor > 10) exitWith {};
    };
    if(player distance _vendor > 10) exitWith {hint "Tu dois rester dans les 10 mètres."; 5 cutText ["","PLAIN"]; life_is_processing = false;};
    if(!([false,_oldItem1,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; life_is_processing = false;};
    if(!([false,_oldItem2,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; life_is_processing = false;};
    if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; [true,_oldItem1,_oldVal] call life_fnc_handleInv; [true,_oldItem2,_oldVal] call life_fnc_handleInv; life_is_processing = false;};
    5 cutText ["","PLAIN"];
    titleText[format["Tu as obtenu %1 %2",_oldVal,_itemName],"PLAIN"];
    life_is_processing = false;
}
    else
{
 
    if(life_cash < _cost) exitWith {hint format["Tu as besoin de %1 € pour le faire sans permis !",[_cost] call life_fnc_numberText]; 5 cutText ["","PLAIN"]; life_is_processing = false;};
   
    while{true} do
    {
        sleep 0.5;
        _cP = _cP + 0.01;
        _progress progressSetPosition _cP;
        _pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
        if(_cP >= 1) exitWith {};
        if(player distance _vendor > 10) exitWith {};
    };
    if(player distance _vendor > 10) exitWith {hint "Tu dois rester dans les 10 mètres."; 5 cutText ["","PLAIN"]; life_is_processing = false;};
    if(life_cash < _cost) exitWith {hint format["Tu as besoin de %1 € pour le faire sans permis!",[_cost] call life_fnc_numberText]; 5 cutText ["","PLAIN"]; life_is_processing = false;};
    if(!([false,_oldItem1,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; life_is_processing = false;};
    if(!([false,_oldItem2,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; life_is_processing = false;};
    if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; [true,_oldItem1,_oldVal] call life_fnc_handleInv; [true,_oldItem2,_oldVal] call life_fnc_handleInv; life_is_processing = false;};
    5 cutText ["","PLAIN"];
    titleText[format["Tu as transformé %1 %2 pour %3 €",_oldVal,_itemName,[_cost] call life_fnc_numberText],"PLAIN"];
    life_cash = life_cash - _cost;
    life_is_processing = false;
};
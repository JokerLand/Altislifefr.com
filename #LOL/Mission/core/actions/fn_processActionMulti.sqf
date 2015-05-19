/* author: preller @ freudenhaus <codepreller@hirnstrom.net> for Freudenhaus Altis Life
*
* processMulitpleItems.sqf
* processes any number of input items into one output item. progress bar is from bryan "tonic" boardwines fn_processAction.sqf.
*
* Please feel free to use and modify it, but remember to credit the author.
*
* PARAMS:
* _this select 3: String - processor type
*
*/
 
private ["_inputItems", "_outputItem", "_inputItemsNeeded", "_outputItemAmount", "_itemsInv", "_itemsNeeded", "_inputItemsDeleted", "_ui", "_progress", "_pgText", "_cP", "_productionAmount", "_possibleProductionAmount","_processor","_formatedProcessingInfo","_hasLicense","_licenseNeeded","_processingCost","_type","_productionInfo"];
 
if (isServer) exitWith {};
 
if (life_is_processing) exitWith {hint "";};    
 
//parameter
_processor = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_type = [_this,3,"",[""]] call BIS_fnc_param;
 
//Error check. taken from tonic.
if(isNull _processor OR _type == "" OR (player distance _processor > 5)) exitWith {};
if(vehicle player != player) exitwith {hint format["Descendez de votre véhicule"];};
 
life_is_processing = true;
 
//define your production line here
_productionInfo = switch (_type) do
{
        case "meth55": {[["ether","butane","phosph","ephed"],[1,1,1,1],"meth55",1,10000,"Fabrication de la Meth"];};
        case "meth60": {[["ether","butane","phosph","ephed"],[1,1,1,1],"meth60",1,10000,"Fabrication de la Meth"];};
        case "meth75": {[["ether","butane","phosph","ephed"],[1,1,1,1],"meth75",1,10000,"Fabrication de la Meth"];};
        case "meth85": {[["ether","butane","phosph","ephed"],[1,1,1,1],"meth85",1,10000,"Fabrication de la Meth"];};
        case "meth97": {[["ether","butane","phosph","ephed"],[1,1,1,1],"meth97",1,10000,"Fabrication de la Meth"];};
        default {[]};
};
 
//initialize
_inputItems = _productionInfo select 0;
_inputItemsNeeded = _productionInfo select 1;
_outputItem = _productionInfo select 2;
_outputItemAmount = [(_productionInfo select 3),0,0,[0]] call BIS_fnc_param;
_licenseNeeded = _productionInfo select 4;
_processingCost = [(_productionInfo select 5),0,0,[0]] call BIS_fnc_param;
 
_hasLicense = missionNamespace getVariable (([_licenseNeeded,0] call life_fnc_licenseType) select 0);
if(!_hasLicense) exitWith {hint "Vous n'aves pas la license requise"};
_inputItemsDeleted = true;
_productionAmount = 9999; //infinite
 
if ((count _inputItems) != (count _inputItemsNeeded)) exitWith
        {diag_log format["ERROR: ProcessMultipleItems falsch initialisiert: Anzahl InputItems ungleich Anzahl InputItem Kosten"];life_is_processing = false;};
 
//check if the player has enough items and determine how much he can produce
for "_x" from 0 to ((count _inputItems) - 1) do {
        //get current amount player has
        _itemsInv = missionNamespace getVariable ([(_inputItems select _x),0] call life_fnc_varHandle);
        _itemsNeeded = _inputItemsNeeded select _x;
 
        //calculate possible amount of processing cycles
        _possibleProductionAmount = floor (_itemsInv / _itemsNeeded);
        if (_possibleProductionAmount < _productionAmount) then {
                _productionAmount = _possibleProductionAmount;
        };
};
 
//exit if the player doenst have the required items for one process
if (_productionAmount < 1) exitWith {
        hint "Vous n'avez pas assez de produit";
        life_is_processing = false;
};
 
//check for cash if the player doesnt have the license and calculate possible max production
if (!_hasLicense) exitWith {hint "Vous n'avez pas la license";};
 
//exit if the player doenst have the required money for one process
if (_productionAmount < 1) exitWith {
        hint "Vous n'avez pas les moyens";
        life_is_processing = false;
};
 
//Setup our progress bar. taken from tonic.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...","%","Fabrication de la Meth."];
_progress progressSetPosition 0.01;
_cP = 0.01;    
 
//progress bar. taken from tonic.
while{true} do
{
        sleep  0.3;
        _cP = _cP + 0.01;
        _progress progressSetPosition _cP;
        _pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%","Fabrication de la Meth."];
        if(_cP >= 1) exitWith {};
        if(player distance _processor > 10) exitWith {};
};
 
if(player distance _processor > 10) exitWith {hint "Restez à proximité !"; 5 cutText ["","PLAIN"]; life_is_processing = false;};
 
//substract items
for "_x" from 0 to ((count _inputItems) - 1) do {
        //reduce
        if (!([false,(_inputItems select _x),((_inputItemsNeeded select _x) * _productionAmount)] call life_fnc_handleInv)) then {
                _inputItemsDeleted = false;
        }
};
 
//add new items if players items where deleted
if (_inputItemsDeleted) then {
        if (!_hasLicense) then {
                life_cash = life_cash - (_processingCost * _productionAmount);
        };
 
        //add the new item
        if (!([true,_outputItem,(_outputItemAmount * _productionAmount)] call life_fnc_handleInv)) then {
                hint format["Erreur !"];
                diag_log format["ERROR: fn_processMultipleItems - new item(s) are not added"];
        };
 
        //format output
        _formatedProcessingInfo = "Vous avez transformé";
        for "_x" from 0 to ((count _inputItems) - 2) do {
                _formatedProcessingInfo = _formatedProcessingInfo + format[" %1 %2,",((_inputItemsNeeded select _x) * _productionAmount),(_inputItems select _x)];
        };
        _formatedProcessingInfo = _formatedProcessingInfo + format[" et %1 %2 en %4 %3",((_inputItemsNeeded select ((count _inputItemsNeeded) - 1)) * _productionAmount),(_inputItems select ((count _inputItems) - 1)),_outputItem,(_outputItemAmount * _productionAmount)];
 
        5 cutText ["","PLAIN"];
        titleText[format["%1",_formatedProcessingInfo],"PLAIN"];
};
 _total = _outputItemAmount * _productionAmount;
["chem",_total] call life_fnc_addStatPoint;
 
life_is_processing = false;
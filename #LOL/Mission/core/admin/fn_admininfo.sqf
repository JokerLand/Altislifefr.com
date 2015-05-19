/*
	File: fn_admininfo.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Output information received to admin menu.
*/
private["_display","_ret","_text","_unit","_prim","_sec","_vest","_uni","_bp","_attach","_tmp"];
_ret = _this;
disableSerialization;
_display = findDisplay 2900;
_text = _display displayCtrl 2903;
_unit = _ret select 3;
_prim = if(primaryWeapon _unit != "") then { getText(configFile >> "CfgWeapons" >> (primaryWeapon _unit) >> "DisplayName")} else {"Aucune"};
_sec = if(handgunWeapon _unit != "") then { getText(configFile >> "CfgWeapons" >> (handgunWeapon _unit) >> "DisplayName")} else {"Aucune"};
_vest = if(vest _unit != "") then { getText(configFile >> "CfgWeapons" >> (vest _unit) >> "DisplayName")} else {"Aucun"};
_uni = if(uniform _unit != "") then { getText(configFile >> "CfgWeapons" >> (uniform _unit) >> "DisplayName")} else {"Aucun"};
_bp = if(backpack _unit != "") then { getText(configFile >> "CfgWeapons" >> (backpack _unit) >> "DisplayName")} else {"Aucun"};
_gang = "Aucun";
if(((group _unit) getVariable "gang_name") != "") then {_gang = (group _unit) getVariable "gang_name"} else {_gang = "Aucun"};
_attach = [];
if(primaryWeapon _unit != "") then
{
	{
		if(_x != "") then
		{
			_tmp = getText(configFile >> "CfgWeapons" >> _x >> "displayName");
			_attach set[count _attach,_tmp];
		};
	} foreach (primaryWeaponItems _unit);
};

if(count _attach == 0) then {_attach = "Aucun"};
_text ctrlSetStructuredText parseText format["Nom: %1<br/>Gang : %2<br/>Banque: %3 €<br/>Cash : %4 €<br/>Vêtements : %5<br/>Gilet Tactique : %6<br/>Sac a Dos : %7<br/>Arme Principale : %8<br/>Arme de Poing : %9<br/>Accessoires Arme Principale : <br/>%10",
_unit getVariable["realname",name _unit],_gang,[_ret select 0] call life_fnc_numberText,[_ret select 1] call life_fnc_numberText, _uni,_vest,_bp,_prim,_sec,_attach];
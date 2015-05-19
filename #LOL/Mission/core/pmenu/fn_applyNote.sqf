_unit = stic_current_target;
if(isNil "_unit") exitWith {hint "Erreur";closeDialog 0;};
if(isNull _unit) exitWith {hint "Erreur";closeDialog 0;};
_note = ctrlText 1400;
_pname = player getVariable ["realname",name player];
[[_pname,getPlayerUID _unit,_note],"TON_fnc_noteStore",false,false] spawn life_fnc_MP;

closeDialog 0;
sleep 2;
[] spawn life_fnc_wantedInfo;
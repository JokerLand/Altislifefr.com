_unit = stic_current_target;

if(isNil "_unit") exitWith {hint "Erreur";closeDialog 0;};
if(isNull _unit) exitWith {hint "Erreur";closeDialog 0;};

_wanted = ctrlText 1400;

_pname = player getVariable ["realname",name player];
_uname = _unit getVariable ["realname",name _unit];
_message = format["%1 a ajouté un avis de recherche sur %2 ! -- %3",_pname,_uname,_wanted];
adminLog = _message;
publicVariableServer "adminLog";

[[getPlayerUID _unit,_wanted],"TON_fnc_wantedStore",false,false] spawn life_fnc_MP;

closeDialog 0;
sleep 2;
[] spawn life_fnc_wantedInfo;
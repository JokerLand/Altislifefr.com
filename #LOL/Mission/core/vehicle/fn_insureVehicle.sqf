#include <macro.h>
_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

if(isNull _vehicle) exitWith {hint "Erreur"};

_vClass = typeOf _vehicle;
_isInsured = _vehicle getVariable ["isInsure",false];
if(_isInsured) exitWith {hint "Le véhicule est déjà assuré"};

_sPrice = [_vehicle,__GETC__(life_garage_sell)] call fnc_index;
if(_sPrice == -1) then {_sPrice = 3000;} else {_sPrice = (__GETC__(life_garage_sell) select _sPrice) select 1;};
_assurPrice = round(_sPrice * 0.7);

_result = [format["Êtes-vous sûr de vouloir payer %1 € pour assurer votre véhicule ?",_assurPrice], "Confirmation", true, true] call BIS_fnc_guiMessage;
if(!_result) exitWith {};

if(life_cash < _assurPrice) then {
	if(life_atmcash < _assurPrice) then {
		hint format["Vous n'avez pas les moyens, il vous faut %1 €",_assurPrice];
	} else {
		life_atmcash = life_atmcash - _assurPrice;
		_vehicle setVariable ["isInsure",true,true];
		hint "Votre véhicule est assuré";
		[1] call life_fnc_updatePartial;
	};
} else {
	life_cash = life_cash - _assurPrice;
	_vehicle setVariable ["isInsure",true,true];
	hint "Votre véhicule est assuré";
	[0] call life_fnc_updatePartial;
};
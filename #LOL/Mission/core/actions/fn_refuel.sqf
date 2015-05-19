// Déclaration des variables privées
private [_veh,_fuel,_newFuel,_price];
_veh = vehicle player;
_fuel = fuel _veh;
_lPrice = life_fuelPrice;
_payed = false;
_fuelCap = getNumber (configfile >> "CfgVehicles" >> typeof _veh >> "fuelCapacity");
_fuelNeeded = round(_fuelCap - (_fuelCap * _fuel));
_price = _fuelNeeded * _lPrice;

// Vérifications anti glitch/bug
if (_veh == player) exitWith {hint "Vous devez etre dans un vehicule."};
if (_veh isKindOf "Man") exitWith {hint "Vous devez etre dans un véhicule."};
if (!alive player) exitWith {hint "Vous etes mort."};
if (_fuel > 0.97) exitWith {hint "Vous avez deja le plein."};
if ((driver _veh) != player) exitWith {hint "Vous n'etes pas le conducteur."};
if ((life_cash < _price) && (life_atmcash < _price)) exitWith {hint format["Vous n'avez pas les %1 euros necessaires.",_price]};
if (isRefueling) exitWith {hint "Vous faites deja le plein."};

// Paiement
if (life_cash > _price) then {
	life_cash = life_cash - _price;
	hint format["Vous avez payé %1 euros en liquide pour le plein",_price];
	[1,false] call life_fnc_sessionHandle;
} else {
	life_atmcash = life_atmcash - _price;
	hint format["Vous avez payé %1 euros en carte bancaire pour le plein",_price];
	[1,false] call life_fnc_sessionHandle;
};

// Variable globale refueling
isRefuling = true;

// Désactiver Moteur
_veh engineOn false;

// Tant que toute les conditions sont réunies
while{(vehicle player == _veh) && (local _veh) && ((driver _veh) == player) && (alive player) && !(isEngineOn _veh) && (speed _veh < 3)} do 
{
	titleText ["Plein en cours, ne remettez pas le contact...", "PLAIN DOWN"];
	_fuel = fuel _veh;
	if(_fuel > 0.99) exitWith {titleText ["Plein Termine !", "PLAIN DOWN"]; isRefueling = false;_vehicle setFuel 1;};
	_newFuel = _fuel + 0.01;
	_veh setFuel _newFuel;
	sleep 0.20;
};
titleText ["Plein Termine !", "PLAIN DOWN"];
isRefueling = false;
_veh engineOn true;
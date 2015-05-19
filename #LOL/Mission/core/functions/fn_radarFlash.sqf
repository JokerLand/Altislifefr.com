_speed = _this;
_maxspeed = 120;

if(playerSide != civilian) exitWith {};

// Tolerance (7%)
_tolerance = round((_speed / 100) * 7);
_speed = _speed - _tolerance;

// Check for speeding/ Sirens
if (_speed < _maxSpeed) exitWith {/* Nothing to do, no speeding or siren activated */};
if(getPosATL _veh select 2 > 10) exitWith {};
if(!license_civ_driver) exitWith {cutText ["Vous n'avez pas le permis, vous �tes recherch�","WHITE OUT"];serv_killed = [player,"9024"];publicVariableServer "serv_killed";};


// Start of script
_price = 0;
_diff = _maxSpeed - _speed;

if(_diff < 10) then {
	_price = 500;
};
if(_diff > 9 && _diff < 25) then {
	_price = 2000;
};
if(_diff > 24 && _diff < 50) then {
	_price = 5000;
};
if(_diff > 49) then {
	_price = 10000;
};
_money = life_atmcash - _pay;
if(_money >= 0) then {
	titleText[format["!!! Vous avez �t� flash� !!!\n\n\nLe radar a retenue une vitesse de %1 km/h pour %2 km/h autoris�s.\nVous payez une ammende de %3 �\n",_speed,_maxspeed,_price],"WHITE OUT"];
	life_amcash = life_atmcash - _price;
} else {
	titleText[format["!!! Vous avez �t� flash� !!!\n\n\nLe radar a retenue une vitesse de %1 km/h pour %2 km/h autoris�s.\nN'ayant pas les moyens de payer l'ammende, vous �tes recherch�.",_speed,_maxspeed],"WHITE OUT"];
	serv_killed = [player,"9023"];
	publicVariableServer "serv_killed";
};
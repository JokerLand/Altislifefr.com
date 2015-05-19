private["speed","_maxSpeed","_price","_drivePoints","_pointsToRemove","_sirenActivated","_text","_veh"];
// Values initialisation
_maxSpeed = _this select 0;
_speed = round(speed player);
_veh = vehicle player;
_drivePoints = life_drivePoints;
_sirenActivated = _veh getVariable "siren";
// Tolerance (7%)
_tolerance = round((_speed / 100) * 7)
_speed = _speed - _tolerance;

// Check for speeding/ Sirens
if ((_speed < _maxSpeed) OR _sirenActivated) exitWith {/* Nothing to do, no speeding or siren activated */};
if(getPosATL _veh select 2 > 10) exitWith {/* Nothing to do, no speeding or siren activated */};
if(_drivePoints <= 0) exitWith {cutText ["Vous n'avez pas le permis, vous êtes recherché","WHITE OUT"];	serv_killed = [player,"9024"];publicVariableServer "serv_killed";};


// Start of script
_price = 0;
_pointsToRemove = 0;
_code = "";
_diff = _maxSpeed - _speed;

if(_diff < 10) then {
	_price = 500;
	_code = "9021";
	_pointsToRemove = 1;
};
if(_diff > 9 && _diff < 25) then {
	_price = 2000;
	_code = "9022";
	_pointsToRemove = 2;
};
if(_diff > 24 && _diff < 50) then {
	_price = 5000;
	_code = "9023";
	_pointsToRemove = 6;
};
if(_diff > 49) then {
	_price = 10000;
	_code = "9023";
	_pointsToRemove = 12;
};
_money = life_atmcash - _pay;
_text = format["!!! Vous avez été flashé !!!\n\n\nLe radar a retenue une vitesse de %1 km/h pour %2 km/h autorisés.\n",_speed,_maxSpeed];
_drivePoints = _drivePoints - _pointsToRemove;
if(_money >= 0) then {
	_text = format["%1Vous payez une ammende de %2 €\n",_text,_price];
	life_amcash = life_atmcash - _price;
} else {
	_text=format["%1N'ayant pas les moyens de payer l'ammende, vous êtes recherché\n",_text];
	serv_killed = [player,_code];
	publicVariableServer "serv_killed";
};
if(_drivePoints > 0) then {
	_text = format ["%1Vous perdez %2 points sur votre permis",_text,_pointsToRemove];
	life_drivePoints = _drivePoints;
} else {
	_text=format["%1Vous n'avez plus de points sur votre permis, il vous est donc retiré\n",_text];
	life_drivePoints = 0;
	license_civ_driver = false;
};
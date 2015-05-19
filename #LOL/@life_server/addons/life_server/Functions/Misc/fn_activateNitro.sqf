/*
		File: activateNitro.sqf
		Author: Fuzz
		
		Description: Activates nitrous injector on car
*/

_vehicle = vehicle player;

if (_vehicle == player) exitWith {};
if (driver _vehicle != player) exitWith {};
if (drive_state == 0) exitWith {};

if ((speed _vehicle) <= 10) exitWith { systemChat format ["Vous devez vous déplacer à plus de 10 km/h pour activer la Nitro."]; };
if((time - (_vehicle getVariable "nitroTime")) < (3*60)) exitWith {systemChat format ["Vous ne pouvez utiliser la nitro que toutes les 3 minutes."]};
_vehicle setVariable["nitroTime", time, false];
systemChat format ["Nitro activé."];
_vel = velocity _vehicle;
_dir = direction _vehicle;
_vehSpeed = (speed _vehicle);
_coeff = 0;
switch(drive_state) do 
{
	case 1:
	{
		_coeff = 7;
	};
	case 2:
	{
		_coeff = 15;
	};
	case 3:
	{
		_coeff = 20;
	};
	case 4:
	{
		_coeff = 27;
	};
};
_speed = ((_vehSpeed / 100) * _coeff);
_time = 0;
for "_i" from 0 to 10 do
{
	_vehicle setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+ (cos _dir*_speed),(_vel select 2)];
	sleep 0.1;
};
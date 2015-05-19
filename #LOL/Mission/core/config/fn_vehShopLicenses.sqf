/*
	File: fn_vehShopLicenses.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Checks what shop it is and sometimes the vehicle to determine whether or not they have the license.
	
	Returns:
	TRUE if they have the license or are allowed to get that specific vehicle without having that license.
	FALSE if they don't have the license or are not allowed to obtain that vehicle.
*/
private["_veh","_ret"];
_veh = _this select 0;
_ret = false;

if(_veh == "B_Quadbike_01_F") exitWith {true}; //ATV's don't need to require a license anymore.

switch (life_veh_shop select 0) do
{
	case "med_shop": {_ret = true;};
	case "skate": {_ret = true;};
	case "aratv": {_ret = license_civ_aratv;};
	case "kart_shop": {_ret = license_civ_driver;};
	case "med_air_hs": {_ret = license_med_air;};
	case "med_air_bell": {_ret = license_med_air;};
	case "aratv_air": {_ret = license_civ_air;};
	case "civ_car": {_ret = license_civ_driver;};
	case "civ_ship": {_ret = license_civ_boat;};
	case "civ_air": {_ret = license_civ_air;};
	case "cop_air": {_ret = license_cop_air;};
	case "cop_airhq": {_ret = license_cop_air;};
	case "civ_truck":	{_ret = license_civ_truck;};
	case "reb_car": {_ret = license_civ_rebel;};
	case "reb_air": {_ret = license_civ_rebel;};
	case "rs_car": {_ret = license_civ_rsdep;};
	case "cop_car": {_ret = true;};
	case "donator": {_ret = true;};
	case "con_car": {_ret = license_civ_conatus;};
	case "bike": {_ret = license_civ_bike;};
	case "civ_used_cars": {_ret = license_civ_driver;};
	case "civ_sport_cars": {_ret = license_civ_driver;};
	case "civ_luxury_cars": {_ret = license_civ_driver;};
	case "gis_car": {_ret = license_civ_driver;};
	case "pn_ship": {_ret = license_civ_boat;};
	case "pn_cars": {_ret = license_civ_driver;};
	case "transevo_car": {_ret = license_civ_driver;};
	case "ac_car": {_ret = license_civ_driver;};
	case "cop_ship": 
	{
		if(_veh == "B_Boat_Armed_01_minigun_F") then
		{
			_ret = license_cop_cg;
		}
			else
		{
			_ret = true;
		};
	};
};

_ret;
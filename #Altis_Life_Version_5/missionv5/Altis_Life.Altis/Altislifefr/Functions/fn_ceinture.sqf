#include <macro.h>
/*
	File: fn_ceinture.sqf
	Author: SnipeZz Qc

	Description:
	Ceinture de securiter
*/
private ["_veh","_seat"];

if((typeOf vehicle player) in ["C_Kart_01_Fuel_F","C_Kart_01_Red_F","C_Kart_01_Vrana_F","B_Quadbike_01_F","C_Rubberboat","C_Boat_Civil_01_F","B_Boat_Transport_01_F","C_Boat_Civil_01_police_F","B_Boat_Armed_01_minigun_F","B_SDV_01_F"]) exitWith {hint "Vous n'avez pas de ceinture dans ce vehicule"};



_veh = vehicle player;
_unit = player;

//Sauvegarde quelle est la position du joueur dans le vehicule
if(driver _veh == player)  then
{
	_seat = "Driver"
}
else
{
	_seat = "Cargo"
};


//Attache la ceinture
if(!life_ceinture) then
{
	life_ceinture = true;
	_unit say3D "ceinture_attache";
}
else
{
	life_ceinture = false;
	_unit say3D "ceinture_dettache";
};

//Force le joueur a rester dans le vehicule
while {life_ceinture} do
{
	switch (_seat) do
    {
		case "Driver":
        {
           player moveInDriver _veh;
        };
        case "Cargo":
        {
           player moveInCargo  _veh;
        };
	};
        sleep 1;
};

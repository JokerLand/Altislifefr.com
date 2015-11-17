/*
	File: fn_Stop.sqf
	Author: Farlau.
	
	Description:
	Un joueur se rend
*/

if(life_Se_Rendre + 120 > time) exitWith {hint "Pas si vite! Tu dois attendre 2 minutes avant de se rendre à nouveau.";};

[[0,"STR_Cop_Stop",true,[profileName]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;

hint "Vous vous rendez ! Arrêtez vous et mettez les mains sur la tête !";

if (vehicle player == player && !(player getVariable ["restrained", false]) && !(player getVariable ["Escorting", false]) ) then {
				if (player getVariable ["playerSurrender", false]) then {
					player setVariable ["playerSurrender", false, true];
				} else {
					[] spawn life_fnc_surrender;
				};
			};
			_handled = true;
			
life_Se_Rendre = time;

closeDialog 0;
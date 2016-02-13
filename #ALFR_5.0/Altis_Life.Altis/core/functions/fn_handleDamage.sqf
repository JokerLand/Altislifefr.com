#include <macro.h>
/*
	File: fn_handleDamage.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Handles damage, specifically for handling the 'tazer' pistol and nothing else.
*/
private["_unit","_damage","_source","_projectile","_part","_curWep"];
_unit = SEL(_this,0);
_part = SEL(_this,1);
_damage = SEL(_this,2);
_source = SEL(_this,3);
_projectile = SEL(_this,4);

//Handle the tazer first (Top-Priority).
if(!isNull _source) then {
	if(_source != _unit) then {
		_curWep = currentWeapon _source;
		 if(_projectile == "ALFR_1Rnd_Flashball" && _curWep in ["hgun_Sam_flashball_F"]) then {
			if(side _source == west && playerSide != west) then {
				_damage = 0;
				private["_distance","_isVehicle","_isQuad"];
				_distance = 15;
				//_distance = if(_projectile == "B_556x45_dual") then {100} else {35};
				_isVehicle = if(vehicle player != player) then {true} else {false};
				_isQuad = if(_isVehicle) then {if((typeOf (vehicle player)) in ["B_Quadbike_01_F","C_Kart_01_Vrana_F","C_Kart_01_Red_F","C_Kart_01_Blu_F","C_Kart_01_Fuel_F","C_Kart_01_F"]) then {true} else {false}} else {false};		
				if(_unit distance _source < _distance) then {
					if(!life_istazed && !(_unit getVariable["ACE_captives_isHandcuffed",false])) then {
						if(_isVehicle && _isQuad) then {
							player action ["Eject",vehicle player];
							[_unit,_source] spawn life_fnc_tazed;
						};
						if(!_isVehicle) then {
							[_unit,_source] spawn life_fnc_tazed;
						};
					};
				};
			};
		};
			
			//Temp fix for super tasers on cops.
			if(playerSide == west && side _source == west) then {
				_damage = false;
			};
		};
	};
};

[] call life_fnc_hudUpdate;
_damage = 0;
_damage;
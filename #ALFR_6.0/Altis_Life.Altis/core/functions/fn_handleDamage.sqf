#include "..\..\script_macros.hpp"
/*
    File: fn_handleDamage.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Handles damage, specifically for handling the 'tazer' pistol and nothing else.
*/
private["_unit","_damage","_source","_projectile","_part","_curWep"];
_unit = _this select 0;
_part = _this select 1;
_damage = _this select 2;
_source = _this select 3;
_projectile = _this select 4;

//Handle the tazer first (Top-Priority).
if (!isNull _source) then {
    if (_source != _unit) then {
        if (_unit getVariable["Revive",false]) exitWith {};
        _curWep = currentWeapon _source;
        if (_projectile in ["DDOPP_B_Taser","ALFR_1Rnd_Flashball"] && _curWep in ["DDOPP_X26","DDOPP_X26_b","DDOPP_X3","DDOPP_X3_b","hgun_Sam_flashball_F"]) then {
            if (side _source isEqualTo west && playerSide isEqualTo civilian) then {
                private["_distance"];
                _distance = if (_projectile == "ALFR_1Rnd_Flashball") then {100} else {35};
                _damage = false;
                if (_unit distance _source < _distance) then {
                    if (!life_istazed && !life_isknocked && !(_unit getVariable ["restrained",false])) then {
                        if (vehicle player != player) then {
                            if (typeOf (vehicle player) == "B_Quadbike_01_F") then {
                                player action ["Eject",vehicle player];
                                [_unit,_source] spawn life_fnc_tazed;
                            };
                        } else {
                            [_unit,_source] spawn life_fnc_tazed;
                        };
                    };
                };
            };

            //Temp fix for super tasers on cops.
            if (side _source isEqualTo west && (playerSide isEqualTo west || playerSide isEqualTo independent)) then {
                _damage = false;
            };
        };
    };
};

[] spawn life_fnc_hudUpdate;
_damage;

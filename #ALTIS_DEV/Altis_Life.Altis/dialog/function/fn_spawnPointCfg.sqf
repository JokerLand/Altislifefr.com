﻿/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration for available spawn points depending on the units side.

	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side","_return"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
	case west:
	{
		_return = [
			["cop_spawn_1","Kavala HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_2","Pyrgos HQ","\a3\ui_f\data\map\MapControl\fuelstation_ca.paa"],
			["cop_spawn_3","Paros HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_4","Air HQ","\a3\ui_f\data\map\Markers\NATO\b_air.paa"]
		];
	};

	case civilian:
	{
		_return = [
			["civ_spawn_1","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_2","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_4","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];

				if(license_civ_rebel && playerSide == civilian) then {
				_return pushBack ["reb_spawn_1","Camp Rebelle","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"];
		};
				if(license_civ_gangster && playerSide == civilian) then {
				_return pushBack ["gang_spawn_1","Camp Gangster","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"];
		};
				if(license_depannage && playerSide == civilian) then {
 				_return pushBack ["depanneur","Depanneurs HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"];
 		};
                if(license_civ_ion && playerSide == civilian) then {
				_return pushBack ["ion_spawn","QG ION","\plp_markers\icons\plp_mark_as_building.pac"];
		};

		if(count life_houses > 0) then {
			{
				_pos = call compile format["%1",_x select 0];
				_house = nearestBuilding _pos;
				_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");

				_return pushBack [format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"];
			} foreach life_houses;
		};
	};

	case independent: {
		_return = [
			["medic_spawn_1","Hopital de Kavala","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_2","Hopital d'Athira","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_3","Hopital de Pyrgos","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
		];
	};

	case east:
	{
		_return = [
			["spawn_armer","Base Armee","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];
	};
};

_return;
/*
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
			["cop_spawn_3","Kavala","icons\gendarme.paa"],
			["cop_spawn_2","Pyrgos","icons\gendarme.paa"],
			["cop_spawn_athira","Athira","icons\gendarme.paa"],
			["cop_spawn_1","Neochori","icons\gendarme.paa"],
			["cop_spawn_4","Aéroport","icons\gendarme.paa"],
			["cop_spawn_gign","GIGN","icons\gign_base.paa"]
		];
	};
	
	case civilian:
	{
		_return = [
					["civ_spawn_1","Kavala","icons\town.paa"],
					["civ_spawn_5","Pyrgos","icons\town.paa"],
					["civ_spawn_athira","Athira","icons\town.paa"],
					["civ_spawn_4","Neochori","icons\town.paa"],
					["civ_spawn_panagia","Panagia","icons\town.paa"]
				];
			if(license_civ_rebel) then {
					_return pushBack ["terror_spawn","Guérilla","icons\rebel.paa"];
			};
			
			if(license_civ_gis) then {
					_return pushBack ["spawn_gis","GIS","icons\gis.paa"];
			};
			
			if(license_civ_scarface) then {
					_return pushBack ["scarface_spawn","Scarface","icons\scarface.paa"];
					_return pushBack ["bar_spawn","Bar Scar.","icons\scarface.paa"];
			};
			
			if(license_civ_pn) then {
					_return pushBack ["pn_spawn","PN","icons\petitnavire.paa"];
			};
			
			if(license_civ_transevo) then {
					_return pushBack ["transevo_spawn","TransEvo","icons\transevo.paa"];
			};
			
			if(license_civ_ac) then {
					_return pushBack ["ac_spawn","AC","icons\ac.paa"];
			};

		if(count life_houses > 0) then {
			{
				_pos = call compile format["%1",_x select 0];
				_house = nearestBuilding _pos;
				if((typeOf _house) in ["Land_i_Garage_V1_F","Land_i_Garage_V2_F"]) then {
					_houseName = "Garage";
					_return pushBack [format["house_%1",_house getVariable "uid"],_houseName,"icons\garage.paa"];
				} else {
					_houseName = "Maison";
					_return pushBack [format["house_%1",_house getVariable "uid"],_houseName,"icons\house.paa"];
				};
			} foreach life_houses;
		};	
	};
	
	case independent: {
		_return = [
			["medic_spawn_1","Kavala","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_3","Pyrgos","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_2","Neochori","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
		];
	};
};

_return;
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
			["cop_spawn_1","Kavala HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_2","Pyrgos HQ","\a3\ui_f\data\map\MapControl\fuelstation_ca.paa"],
			["cop_spawn_3","Athira HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_4","Air HQ","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
			["cop_spawn_5","HW Patrol","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
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
        
                if(license_civ_lmc && playerSide == civilian) then {
				_return pushBack ["lmc_spawn","NIA","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"];
		};

                if(license_civ_ms && playerSide == civilian) then {
				_return pushBack ["spawn_ms","Mara Salvatrucha HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"];
		};

                 if(license_civ_ng && playerSide == civilian) then {
				_return pushBack ["spawn_ng","Ngheta HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"];
		};

                 if(license_civ_egp && playerSide == civilian) then {
				_return pushBack ["spawn_egp","Castelli HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"];
		};

                 if(license_civ_sop && playerSide == civilian) then {
				_return pushBack ["spawn_sop","H.N","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"];
		};

                 if(license_civ_bmg && playerSide == civilian) then {
				_return pushBack ["bmg_spawn","BMG HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"];
		};

                 if(license_civ_olympia && playerSide == civilian) then {
				_return pushBack ["olympia_spawn","Olympia HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"];
		};

				if(license_civ_moa && playerSide == civilian) then {
				_return pushBack ["spawn_moa","Les Autres HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"];
		};

				if(license_civ_raid && playerSide == civilian) then {
				_return pushBack ["spawn_tor","Les cartel","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"];
		};

				if(license_civ_grf && playerSide == civilian) then {
				_return pushBack ["spawn_grf","Vétéran HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"];
		};

				if(license_civ_mw && playerSide == civilian) then {
				_return pushBack ["spawn_mw","Salamander HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"];
		};

				if(license_civ_poc && playerSide == civilian) then {
				_return pushBack ["spawn_poc","Leninskaïa","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"];
		};

				if(license_civ_yk && playerSide == civilian) then {
				_return pushBack ["spawn_yk","Yakusa HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"];
		};

				if(license_civ_cn && playerSide == civilian) then {
				_return pushBack ["spawn_cn","Newgate","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"];
		};

				if(license_civ_ec && playerSide == civilian) then {
				_return pushBack ["spawn_torres","Torres HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"];
		};

				if(license_civ_gr && playerSide == civilian) then {
				_return pushBack ["spawn_gr","Strauss","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"];
		};

				if(license_civ_fla && playerSide == civilian) then {
				_return pushBack ["spawn_PE1_1","PE1 HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"];
		};

				if(license_civ_reb1 && playerSide == civilian) then {
				_return pushBack ["spawn_reb1","SPQR HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"];
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
			["medic_spawn_1","Kavala Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_2","Athira Regional","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_3","Pygros Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
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
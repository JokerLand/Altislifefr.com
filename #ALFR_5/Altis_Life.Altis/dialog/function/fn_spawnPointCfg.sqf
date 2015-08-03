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

                if(license_he && playerSide == civilian) then {
				_return pushBack ["spawn_he","Hawk Eye HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"];
		};

                if(license_lmc && playerSide == civilian) then {
				_return pushBack ["lmc_spawn","NIA","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"];
		};

                 if(license_bgf && playerSide == civilian) then {
				_return pushBack ["spawn_bgf","Black Guerrilla Family HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"];
		};

                  if(license_sal && playerSide == civilian) then {
				_return pushBack ["spawn_sal","Salamander HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"];
		};

                if(license_ms && playerSide == civilian) then {
				_return pushBack ["spawn_ms","Mara Salvatrucha HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"];
		};

                 if(license_ng && playerSide == civilian) then {
				_return pushBack ["spawn_ng","Ngheta HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"];
		};

                 if(license_egp && playerSide == civilian) then {
				_return pushBack ["spawn_egp","E.G.P HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"];
		};

                if(license_fmg && playerSide == civilian) then {
				_return pushBack ["fmg_spawn","For My Games HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"];
		};

                 if(license_sop && playerSide == civilian) then {
				_return pushBack ["spawn_sop","H.N","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"];
		};

                 if(license_bmg && playerSide == civilian) then {
				_return pushBack ["bmg_spawn","BMG HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"];
		};

                 if(license_olympia && playerSide == civilian) then {
				_return pushBack ["olympia_spawn","Olympia HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"];
		};

                 if(license_rosthein && playerSide == civilian) then {
				_return pushBack ["rosthein_spawn","Rosthein HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"];
		};


				if(license_moa && playerSide == civilian) then {
				_return pushBack ["spawn_moa","Les Autres HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"];
		};

				if(license_raid && playerSide == civilian) then {
				_return pushBack ["spawn_tor","EC HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"];
		};

				if(license_grf && playerSide == civilian) then {
				_return pushBack ["spawn_grf","Vétéran HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"];
		};

				if(license_mw && playerSide == civilian) then {
				_return pushBack ["spawn_mw","Moscow HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"];
		};

				if(license_poc && playerSide == civilian) then {
				_return pushBack ["spawn_poc","P.O.C HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"];
		};

				if(license_yk && playerSide == civilian) then {
				_return pushBack ["spawn_yk","Yakusa HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"];
		};

				if(license_cro && playerSide == civilian) then {
				_return pushBack ["spawn_cro","Cronik HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"];
		};

				if(license_cn && playerSide == civilian) then {
				_return pushBack ["spawn_cn","Newgate","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"];
		};

				if(license_ec && playerSide == civilian) then {
				_return pushBack ["spawn_torres","Torres HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"];
		};

				if(license_gr && playerSide == civilian) then {
				_return pushBack ["spawn_gr","Salamander","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"];
		};

				if(license_armer && playerSide == civilian) then {
				_return pushBack ["spawn_armer","Armée HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"];
		};

				if(license_fla && playerSide == civilian) then {
				_return pushBack ["spawn_fla","FLA HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"];
		};

				if(license_reb1 && playerSide == civilian) then {
				_return pushBack ["spawn_reb1","SPQR HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"];
		};

				if(license_tlt && playerSide == civilian) then {
				_return pushBack ["tlt_spawn","Armée HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"];
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
			["medic_spawn_1","Hopital Kavala","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_2","Hopital Athira","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_3","Hopital Pyrgos","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
		];
	};
};

_return;
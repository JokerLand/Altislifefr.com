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
			["civ_spawn_4","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["pvp_spawn_1","ZonePvP (A)","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["pvp_spawn_2","ZonePvP (B)","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
		];
			
		if(license_civ_rebel && playerSide == civilian) then {
				_return set[count _return,["reb_spawn_1","Camp Rebelle","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]];
		};
                
                if(license_he && playerSide == civilian) then {
				_return set[count _return,["spawn_he","Hawk Eye HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]];
		};
                
                if(license_lmc && playerSide == civilian) then {
				_return set[count _return,["spawn_lmc","Legion of Murdeous Chaos HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]];
		};
                
                 if(license_bgf && playerSide == civilian) then {
				_return set[count _return,["spawn_bgf","Black Guerilla Family HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]];
		};
                
                 if(license_fh && playerSide == civilian) then {
				_return set[count _return,["spawn_fh","Force et Honneur HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]];
		};
                
                  if(license_sal && playerSide == civilian) then {
				_return set[count _return,["spawn_sal","Salamander HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]];
		};
                
                if(license_ms && playerSide == civilian) then {
				_return set[count _return,["spawn_ms","Mara Salvatrucha HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]];
		};
                
                 if(license_ng && playerSide == civilian) then {
				_return set[count _return,["spawn_ng","Ngheta HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]];
		};
                
                 if(license_fonda && playerSide == civilian) then {
				_return set[count _return,["spawn_fonda","Fondateurs HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]];
		};
		
		if(license_bl && playerSide == civilian) then {
				_return set[count _return,["bl_spawn","Bratstvo Ledjanoe HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]];
		};
		
		if(count life_houses > 0) then {
			{
				_pos = call compile format["%1",_x select 0];
				_house = nearestBuilding _pos;
				_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
				
				_return set[count _return,[format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"]];
			} foreach life_houses;
		};
	};
	case independent: {
		_return = [
			["medic_spawn_1","Kavala Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_2","Athira Regional","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
		];
	};
	
};

_return;
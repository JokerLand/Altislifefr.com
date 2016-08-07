#include "..\..\script_macros.hpp"
/*
	File: fn_playerTags.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Adds the tags above other players heads when close and have visible range.
*/
private["_ui","_units","_goggles"];
#define iconID 78000
#define scale 0.8
_goggles = ["G_Balaclava_blk","G_Balaclava_lowprofile","G_Balaclava_combat","G_Balaclava_oli","G_Bandanna_aviator","G_Bandanna_beast","G_Bandanna_tan","G_Bandanna_sport","G_Bandanna_blk","G_Bandanna_oli","G_Bandanna_shades","G_Bandanna_tan","G_Bandanna_khk","G_Bandanna_oli","G_Bandanna_blk","G_Bandanna_beast","G_JaKdo_Balaclava_Tan","jakdo_balaclava_tan","G_JaKdo_Balaclava_Oliv","jakdo_balaclava_numqam","jakdo_balaclavas_oliv","jakdo_balaclava_BLK"];
_uniform = ["U_I_FullGhillie_ard","U_O_FullGhillie_ard","U_B_FullGhillie_ard","U_O_T_FullGhillie_tna_F","U_B_T_FullGhillie_tna_F","U_I_FullGhillie_lsh","U_O_FullGhillie_lsh","U_B_FullGhillie_lsh","U_I_FullGhillie_sard","U_O_FullGhillie_sard","U_B_FullGhillie_sard","U_B_T_Sniper_F","U_O_T_Sniper_F","U_GhillieSuit_D","U_GhillieSuit_F","U_GhillieSuit_C","U_GhillieSuit_B","U_GhillieSuit_E","U_GhillieSuit_A","U_I_GhillieSuit","U_O_GhillieSuit","U_B_GhillieSuit"];
_headgear = ["H_ShemagOpen_tan","H_Shemag_olive","H_ShemagOpen_khk","H_Shemag_tan","H_Shemag_olive_hs","H_Hat_Face_Balaclava_T","H_Hat_Face_Wrap_Black","H_Hat_Face_Wrap_Dark","H_Hat_Face_Wrap_Gold","H_Hat_Face_Wrap_White","H_Hat_Face_Wrap_DPM","H_Hat_Face_Wrap_Flecktarn","H_Hat_Face_Wrap_Sand","H_Hat_Kufiya_B","H_Hat_Kufiya_D","H_Hat_Kufiya","H_Hat_Kufiya_F","H_Hat_Kufiya_G","H_Hat_Kufiya_R","H_Hat_Face_Cover","H_Hat_Face_Cover_Gold","H_Hat_Face_Cover_Green","H_Hat_Face_Wrap_Red","H_PilotHelmetHeli_I","H_RacingHelmet_1_white_F","H_RacingHelmet_1_blue_F","H_RacingHelmet_2_F","H_RacingHelmet_1_F","H_RacingHelmet_1_yellow_F","H_RacingHelmet_1_black_F","H_RacingHelmet_1_orange_F","H_RacingHelmet_3_F","H_RacingHelmet_1_red_F","H_RacingHelmet_1_green_F","H_ALFR_PaintballMsk","H_ALFR_Metal_Gasmask_RU_blk","H_ALFR_Metal_Gasmask_RU_oli","H_ALFR_Metal_Gasmask_RU_grey","H_ALFR_Metal_Gasmask_RU_khk","H_ALFR_Metal_Gasmask_RU_fuckyou","H_ALFR_Gasmask","H_ALFR_Metal_Facemask_blk","H_ALFR_Metal_Facemask_oli","H_ALFR_Metal_Facemask_sand","H_ALFR_Metal_Facemask_gry","H_ALFR_Heist_Mask_1","H_ALFR_Heist_Mask_2","H_ALFR_Heist_Mask_3","H_ALFR_Heist_Mask_4","H_ALFR_Heist_Mask_5","H_ALFR_Heist_Mask_6","H_ALFR_Heist_Mask_7","H_ALFR_Samurai_Mask","H_ALFR_Sheep_Mask","H_ALFR_Dallas_Mask","H_ALFR_DinoMask","H_ALFR_HorseMask","H_ALFR_HorseMask_2","H_ALFR_HorseMask_blk","H_ALFR_HorseMask_pnk","H_ALFR_OVERKILL_I","H_ALFR_OVERKILL_II","H_ALFR_OVERKILL_III","H_ALFR_OVERKILL_IV","kio_skl_msk_grn","kio_skl_msk_red","kio_skl_msk"];

if(visibleMap OR {!alive player} OR {dialog}) exitWith {
	500 cutText["","PLAIN"];
};

_ui = uiNamespace getVariable ["Life_HUD_nameTags",displayNull];
if(isNull _ui) then {
	500 cutRsc["Life_HUD_nameTags","PLAIN"];
	_ui = uiNamespace getVariable ["Life_HUD_nameTags",displayNull];
};

_units = nearestObjects[(visiblePosition player),["Man","Land_Pallet_MilBoxes_F","Land_Sink_F"],50];

_units = _units - [player];

{
	private["_text"];
	_idc = _ui displayCtrl (iconID + _forEachIndex);
	if(!(lineIntersects [eyePos player, eyePos _x, player, _x]) && {!isNil {_x getVariable "realname"}}) then {
		_pos = switch(typeOf _x) do {
			case "Land_Pallet_MilBoxes_F": {[visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 1.5]};
			case "Land_Sink_F": {[visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 2]};
			default {[visiblePosition _x select 0, visiblePosition _x select 1, ((_x modelToWorld (_x selectionPosition "head")) select 2)+.5]};
		};
		_sPos = worldToScreen _pos;
		_distance = _pos distance player;
		if(count _sPos > 1 && {_distance < 15}) then {
			_text = switch (true) do {
				case ((goggles _x) in _goggles): {format["<t color='#000000'>Personnage Masqué</t>"];};
				case ((headgear _x) in _headgear): {format["<t color='#000000'>Personnage Masqué</t>"];};
				case ((uniform _x) in _uniform): {format["<t color='#000000'>Personnage Masqué</t>"];};
				case (_x in (units grpPlayer) && playerSide == civilian): {format["<t color='#00FF00'>%1</t>",(_x getVariable ["realname",name _x])];};
				case (!isNil {(_x getVariable "rank")}): {format["<img image='%1' size='1'></img> %2",switch ((_x getVariable "rank")) do {
					case 2: {"\a3\ui_f\data\gui\cfg\Ranks\corporal_gs.paa"}; 
					case 3: {"\a3\ui_f\data\gui\cfg\Ranks\sergeant_gs.paa"};
					case 4: {"\a3\ui_f\data\gui\cfg\Ranks\lieutenant_gs.paa"};
					case 5: {"\a3\ui_f\data\gui\cfg\Ranks\captain_gs.paa"};
					case 6: {"\a3\ui_f\data\gui\cfg\Ranks\major_gs.paa"};
					case 7: {"\a3\ui_f\data\gui\cfg\Ranks\colonel_gs.paa"};
					case 8: {"\a3\ui_f\data\gui\cfg\Ranks\general_gs.paa"};
					default {"\a3\ui_f\data\gui\cfg\Ranks\private_gs.paa"};
					},_x getVariable ["realname",name _x]]};
				case ((!isNil {_x getVariable "name"} && playerSide == independent)): {format["<t color='#FF0000'><img image='a3\ui_f\data\map\MapControl\hospital_ca.paa' size='1.5'></img></t> %1",_x getVariable ["name","Unknown Player"]]};
				default {
					if(!isNil {(group _x) getVariable "gang_name"}) then {
						format["%1<br/><t size='0.8' color='#B6B6B6'>%2</t>",_x getVariable ["realname",name _x],(group _x) getVariable ["gang_name",""]];
					} else {
						_x getVariable ["realname",name _x];
					};
				};
			};
			
			_idc ctrlSetStructuredText parseText _text;
			_idc ctrlSetPosition [_sPos select 0, _sPos select 1, 0.4, 0.65];
			_idc ctrlSetScale scale;
			_idc ctrlSetFade 0;
			_idc ctrlCommit 0;
			_idc ctrlShow true;
		} else {
			_idc ctrlShow false;
		};
	} else {
		_idc ctrlShow false;
	};
} foreach _units;

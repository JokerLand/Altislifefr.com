/*
	File: fn_zoneCreator.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Creates triggers around the map to add the addAction for specific
	fields such as apples, cocaine, heroin, etc. This method is to reduce
	CPU load.
	
	Note: 
	Triggers are NOT my preferred method so this is considered temporary until a more suitable
	option is presented.
*/
private["_appleZones","_peachZones","_heroinZones","_cocaineZones","_weedZones"];
_appleZones = ["apple_1","apple_2","apple_3","apple_4"];
_peachZones = ["peaches_1","peaches_2","peaches_3","peaches_4"];
_heroinZones = ["heroin_1"];
_cocaineZones = ["cocaine_1"];
_weedZones = ["weed_1"];
_grapeZones = ["grape_1"];
_ephedZones = ["ephed"];
_phosphZones = ["phosph"];
_etherZones = ["ether"];
_butaneZones = ["butane"];
_maltZones = ["malt"];
_houblonZones = ["houblon"];
_tabacZones = ["tabac"];
_archeoZones = ["archeo_1"];
_boomZones = ["boom"];
_saltZones = ["salt_1"];
_sandZones = ["sand_1"];
_pickZones = ["lead_1","iron_1","diamond_1","oil_1","oil_2","rock_1"];
_fosZones = ["fossile_1"];
_uraZones = ["Warm_Marker"];
_bleZones = ["flour_field"];
_oliveZones = ["olive_field"];

//Create apple zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[25,25,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Apples = player addAction[(localize ""STR_Gather_Apples""),life_fnc_gather,'',0,false,false,'','!life_action_inUse && !life_gathering'];","player removeAction LIFE_Action_Apples;"];
} foreach _appleZones;

//Create peach zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[25,25,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Peaches = player addAction[(localize ""STR_Gather_Peaches""),life_fnc_gather,'',0,false,false,'','!life_action_inUse && !life_gathering'];","player removeAction LIFE_Action_Peaches;"];
} foreach _peachZones;

//Create heroin zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_heroin = player addAction[(localize ""STR_Gather_Heroin""),life_fnc_gather,'',0,false,false,'','!life_action_inUse && !life_gathering'];","player removeAction LIFE_Action_Heroin;"];
} foreach _heroinZones;

//Create Weed zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Cannabis = player addAction[(localize ""STR_Gather_Cannabis""),life_fnc_gather,'',0,false,false,'','!life_action_inUse && !life_gathering'];","player removeAction LIFE_Action_Cannabis;"];
} foreach _weedZones;

//Create cocaine zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Coke = player addAction[(localize ""STR_Gather_Cocaine""),life_fnc_gather,'',0,false,false,'','!life_action_inUse && !life_gathering'];","player removeAction LIFE_Action_Coke;"];
} foreach _cocaineZones;

//Create grape zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[100,100,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Grapes = player addAction['Ramasser du Raisin',life_fnc_gather,'',0,false,false,'','!life_action_inUse && !life_gathering'];","player removeAction LIFE_Action_Grapes;"];
} foreach _grapeZones;

//Create meth zones
// EPHED
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[22,20,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Ephed = player addAction['Voler Ephedrine',life_fnc_gather,'',0,false,false,'','!life_action_inUse && !life_gathering'];","player removeAction LIFE_Action_Ephed;"];
} foreach _ephedZones;
// BUTANE
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[13,13,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Butane = player addAction['Voler du Butane',life_fnc_gather,'',0,false,false,'','!life_action_inUse && !life_gathering'];","player removeAction LIFE_Action_Butane;"];
} foreach _butaneZones;
// PHOSPH
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[35,35,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Phosph = player addAction['Récolter du Phosphore',life_fnc_gather,'',0,false,false,'','!life_action_inUse && !life_gathering'];","player removeAction LIFE_Action_Phosph;"];
} foreach _phosphZones;
// ETHER
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[22,20,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Ether = player addAction['Voler Ether',life_fnc_gather,'',0,false,false,'','!life_action_inUse && !life_gathering'];","player removeAction LIFE_Action_Ether;"];
} foreach _etherZones;
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[100,100,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Malt = player addAction['Récolter du Malt',life_fnc_gather,'',0,false,false,'','!life_action_inUse && !life_gathering'];","player removeAction LIFE_Action_Malt;"];
} foreach _maltZones;
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[100,100,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Houblon = player addAction['Récolter du Houblon',life_fnc_gather,'',0,false,false,'','!life_action_inUse && !life_gathering'];","player removeAction LIFE_Action_Houblon;"];
} foreach _houblonZones;
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[100,100,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Tabac = player addAction['Récolter du Tabac',life_fnc_gather,'',0,false,false,'','!life_action_inUse && !life_gathering'];","player removeAction LIFE_Action_Tabac;"];
} foreach _tabacZones;
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[100,100,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Archeo = player addAction['Chercher des Artefacts',life_fnc_gather,'',0,false,false,'','!life_action_inUse && !life_gathering'];","player removeAction LIFE_Action_Archeo;"];
} foreach _archeoZones;
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[20,20,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Boom = player addAction['Voler des Explosifs',life_fnc_gather,'',0,false,false,'','!life_action_inUse && !life_gathering'];","player removeAction LIFE_Action_Boom;"];
} foreach _boomZones;
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[120,120,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Salt = player addAction['Utiliser la Pioche',life_fnc_pickaxeUse,'',0,false,false,'','!life_action_inUse && !life_gathering && (life_inv_pickaxe > 0)'];","player removeAction LIFE_Action_Salt;"];
} foreach _saltZones;
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[75,75,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Sand = player addAction['Utiliser la Pioche',life_fnc_pickaxeUse,'',0,false,false,'','!life_action_inUse && !life_gathering && (life_inv_pickaxe > 0)'];","player removeAction LIFE_Action_Sand;"];
} foreach _sandZones;
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[40,40,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Pickaxe = player addAction['Utiliser la Pioche',life_fnc_pickaxeUse,'',0,false,false,'','!life_action_inUse && !life_gathering && (life_inv_pickaxe > 0)'];","player removeAction LIFE_Action_Pickaxe;"];
} foreach _pickZones;
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[70,70,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Fossile = player addAction['Ramasser des Fossiles',life_fnc_gather,'',0,false,false,'','!life_action_inUse && !life_gathering'];","player removeAction LIFE_Action_Fossile;"];
} foreach _fosZones;
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[30,30,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Ura = player addAction['Ramasser des Déchets Radioactifs',life_fnc_gather,'',0,false,false,'','!life_action_inUse && !life_gathering'];","player removeAction LIFE_Action_Ura;"];
} foreach _uraZones;
{

_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[30,30,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Ble = player addAction['Récolter du blé',life_fnc_gather,'',0,false,false,'','!life_action_inUse && !life_gathering'];","player removeAction LIFE_Action_Ble;"];
} foreach _bleZones;
{

_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[30,30,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Olive = player addAction['Récolter des olives',life_fnc_gather,'',0,false,false,'','!life_action_inUse && !life_gathering'];","player removeAction LIFE_Action_Olive;"];
} foreach _oliveZones;
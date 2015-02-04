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
_oilzone  = ["oil_1","oil_2"];
_ironzone = ["iron_1"];
_diamondzone = ["diamond_1","diamond_2"];
_saltzone = ["salt_1"];
_copperzone = ["lead_1"];
_sandzone  = ["sand_1"];
_rockzone = ["rock_1"];
_methzone = ["meth_area_1"];
_grapezone = ["grape_area_1"];

//Create apple zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[25,25,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Apples = player addAction['Recolter Pommes',life_fnc_gatherApples,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Apples;"];
} foreach _appleZones;

//Create peach zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[25,25,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Peaches = player addAction['Recolter Peches',life_fnc_gatherPeaches,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Peaches;"];
} foreach _peachZones;

//Create heroin zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_heroin = player addAction['Recolter Heroine',life_fnc_gatherHeroin,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Heroin;"];
} foreach _heroinZones;

//Create Weed zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Cannabis = player addAction['Recolter Cannabis',life_fnc_gatherCannabis,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Cannabis;"];
} foreach _weedZones;

//Create cocaine zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Coke = player addAction['Recolter Cocaine',life_fnc_gatherCocaine,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Coke;"];
} foreach _cocaineZones;

//Create _oilzone
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[25,25,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_oil = player addAction['Recolter Huile',life_fnc_gatheroil,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_oil;"];
} foreach _oilzone;

//Create _ironzone
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[25,25,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_iron = player addAction['Miner Fer',life_fnc_gatheriron,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_iron;"];
} foreach _ironzone;

//Create _diamondzone
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[25,25,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_diamond = player addAction['Miner Diamands',life_fnc_gatherdiamond,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_diamond;"];
} foreach _diamondzone;

//Create _saltzone
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[25,25,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_salt = player addAction['Miner Sel',life_fnc_gathersalt,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_salt;"];
} foreach _saltzone;

//Create _copperzone
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[25,25,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_copper = player addAction['Miner Cuivre',life_fnc_gathercopper,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_copper;"];
} foreach _copperzone;

//Create _sandzone
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[25,25,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_sand = player addAction['Miner Sable',life_fnc_gathersand,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_sand;"];
} foreach _sandzone;

//Create _rockzone
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[25,25,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_rock = player addAction['Miner Pierre',life_fnc_gatherrock,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_rock;"];
} foreach _rockzone;

//Create _methzone
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[25,25,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_meth = player addAction['Collecter Ephedrine',life_fnc_gatherMeth,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_meth;"];
} foreach _methzone;

//Create _grapezone
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[25,25,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_grape = player addAction['Collecter Raisins',life_fnc_gatherGrapes,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_grape;"];
} foreach _grapezone;
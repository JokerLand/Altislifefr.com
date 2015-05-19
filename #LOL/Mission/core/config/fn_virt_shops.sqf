/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "market": {["Marché",["water","debitcard","cuff","rabbit","apple","redgull","adre","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","storagesmall","triangleSignal","storagebig","grapes","cigarettes","huntingKnife","rabbitMeat"]]};
	case "rebel": {["Marché Rebelle",["water","rabbit","debitcard","tracker","cuff","apple","redgull","adre","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","storagesmall","storagebig","blastingcharge","ipuranium","speedbomb"]]};
	case "gang": {["Marché des Gangs", ["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","blastingcharge","boltcutter","speedbomb"]]};
	case "wongs": {["Wong le Niak",["moonshine","turtle","turtlesoup"]]};
	case "coffee": {["Bar du Coin",["coffee","donuts"]]};
	case "heroin": {["Dealer",["cocainep","cigar","heroinp","marijuana","meth55","meth60","meth75","meth85","meth97"]]};
	case "oil": {["Marchand de Pétrole",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Marché au Poisson",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Marchand de Verre",["glass"]]};
	case "iron": {["Marchand de Métaux",["iron_r","copper_r"]]};
	case "diamond": {["Bijoutier",["diamond","diamondc"]]};
	case "station": {["Pompiste",["water","rabbit","apple","redgull","tbacon","fuelF","cigarettes"]]};
	case "bar": {["Bar 'Au bon coin'",["beer","whiskey","coffee","donuts","water","wine","redgull","apple"]]};
	case "salt": {["Marchand de Sel",["salt_r"]]};
	case "cop": {["Objets Gendarmerie",["donuts","coffee","debitcard","spikeStrip","water","rabbit","apple","redgull","fuelF","defusekit","tracker","roadCone","triangleSignal","roadBarrier"]]};
	case "cement": {["Marchand de Ciment",["cement"]]};
	case "gold": {["Marchand d'Or",["goldbar"]]};
	case "uranium": {["Marchand Uranium",["uranium","puranium","uraniumb"]]};
	case "wine": {["Cave à Vin",["wine"]]};
	case "alcool": {["Exportateur d'Alcool",["beer","whiskey"]]};
	case "flour": {["Exportateur de Farine",["flour"]]};
	case "olive": {["Exportateur d'Huile d'olive",["oliveoil"]]};
	case "conservateur": {["Conservateur",["artefact"]]};
	case "boom": {["Revendeur d'Explosifs",["explo_i"]]};
	case "organ": {["Dealer d'Organes",["kidney"]]}; 
	case "uraniump": {["Magasin Donateur",["puranium","uranium","uraniumb"]]};
};
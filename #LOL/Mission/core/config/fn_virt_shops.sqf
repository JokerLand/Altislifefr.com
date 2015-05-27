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
	case "market": {["Marché",["water","rabbit","apple","grapes","peach","vodka","redgull","tbacon","pickaxe","fuelF","storagesmall","storagebig"]]};
	case "rebel": {["Marché Rebelle",["water","menotte","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach"]]};
	case "gang": {["Marché de Gang", ["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach"]]};
	case "wongs": {["Wong le Niak",["moonshine","turtle","turtlesoup"]]};
	case "coffee": {["Bar du Coin",["coffee","donuts"]]};
	case "heroin": {["Dealer",["cocainep","cigar","heroinp","marijuana","meth55","meth60","meth75","meth85","meth97"]]};
	case "oil": {["Marchand de Pétrole",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Marché au Poisson",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Marchand de Verre",["glass"]]};
	case "iron": {["Marchand de Métaux",["iron_r","copper_r"]]};
	case "diamond": {["Bijoutier",["diamond","diamondc"]]};
	case "salt": {["Marchand de Sel",["salt_r"]]};
	case "cop": {["Objets Gendarmerie",["donuts","coffee","roadBarrier","roadCone","spikeStrip","water","rabbit","apple","redgull","fuelF","defusekit","triangleSignal"]]};
	case "cement": {["Marchand de Ciment",["cement"]]};
	case "gold": {["Marchand d'Or",["goldbar"]]};
	case "uranium": {["Marchand Uranium",["uranium","puranium","uraniumb"]]};
	case "wine": {["Cave à Vin",["wine"]]};
	case "alcool": {["Exportateur d'Alcool",["beer","whiskey"]]};
	case "flour": {["Exportateur de Farine",["flour"]]};
	case "olive": {["Exportateur d'Huile d'olive",["oliveoil"]]};
	case "burgerking": {["Burger King",["burger","frite","cola","biere"]]};
	case "conservateur": {["Conservateur",["artefact"]]};
	case "uraniump": {["Marchand d'Uranium",["puranium","uranium","uraniumb"]]};
};
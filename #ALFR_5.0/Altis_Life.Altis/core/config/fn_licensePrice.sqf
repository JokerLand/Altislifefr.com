/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "driver": {500}; //Prix Permis de Conduire
	case "boat": {1000}; //Prix Permis de Bateau
	case "pilot": {25000}; //Prix License Air/Pilote
	case "gun": {10000}; //Prix Permis de port d'arme
	case "dive": {2000}; //Prix License de plongée
	case "oil": {10000}; //Prix License Pétrole
	case "cair": {15000}; //Prix License Pilote Police
	case "swat": {35000}; //Prix License Swat ??
	case "cg": {8000}; //Prix License Garde Côte
	case "heroin": {25000}; //Prix License d'Heroine
	case "marijuana": {19500}; //Prix License Marijuana
	case "medmarijuana": {1500}; //Prix License Medical Marijuana
	case "gang": {10000}; //Prix License gang ??
	case "rebel": {75000}; //Prix Entraînement Terroriste
	case "truck": {20000}; //Prix Permis Poid Lourd
	case "diamond": {35000}; //Prix License Diamant
	case "salt": {12000}; //Prix License Sel
	case "cocaine": {30000}; //Prix License Cocaine
	case "sand": {14500}; //Prix License Sable
	case "iron": {9500}; //Prix License Fer
	case "copper": {8000}; //Prix License Cuivre
	case "cement": {6500}; //Prix License Ciment
	case "mair": {15000}; //Prix License Pilote Médic
	case "home": {75000}; //Prix License Propriétaire
	case "gangster" {200000}; //Prix License Gangster
};
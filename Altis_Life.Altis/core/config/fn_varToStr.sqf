/*
	File: fn_varToStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Takes the long-name (variable) and returns a display name for our
	virtual item.
*/
private["_var"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
if(_var == "") exitWith {""};

switch (_var) do
{
	//Virtual Inventory Items
	case "life_inv_oilu": {"Pétrole"};
	case "life_inv_oilp": {"Essence"};
	case "life_inv_heroinu": {"Heroine Impure"};
	case "life_inv_heroinp": {"Heroine Pure"};
	case "life_inv_cannabis": {"Cannabis"};
	case "life_inv_marijuana": {"Marijuana"};
	case "life_inv_apple": {"Pomme"};
	case "life_inv_rabbit": {"Viande de Lapin"};
	case "life_inv_salema": {"Saumon"};
	case "life_inv_ornate": {"Ornade"};
	case "life_inv_mackerel": {"Maquereau"};
	case "life_inv_tuna": {"Thon"};
	case "life_inv_mullet": {"Mullet"};
	case "life_inv_catshark": {"Poisson-Chat"};
	case "life_inv_turtle": {"Viande de Tortue"};
	case "life_inv_fishingpoles": {"Canne à pêche"};
	case "life_inv_water": {"Bouteille d'eau"};
	case "life_inv_coffee": {"Café"};
	case "life_inv_turtlesoup": {"Soupe de Tortue"};
	case "life_inv_donuts": {"Donuts"};
	case "life_inv_fuelE": {"Jerrican Vide"};
	case "life_inv_fuelF": {"Jerrican Plein"};
	case "life_inv_pickaxe": {"Pioche"};
	case "life_inv_copperore": {"Minerai de Cuivre"};
	case "life_inv_ironore": {"Minerai de Fer"};
	case "life_inv_ironr": {"Lingot de Fer"};
	case "life_inv_copperr": {"Lingot de Cuivre"};
	case "life_inv_sand": {"Sable"};
	case "life_inv_salt": {"Sel Brut"};
	case "life_inv_saltr": {"Sel Raffiné"};
	case "life_inv_glass": {"Glass"};
	case "life_inv_diamond": {"Diamand"};
	case "life_inv_diamondr": {"Diamand Taillé"};
	case "life_inv_tbacon": {"Tactical Bacon"};
	case "life_inv_redgull": {"RedGull"};
	case "life_inv_lockpick": {"Lockpick"};
	case "life_inv_peach": {"Pêche"};
	case "life_inv_coke": {"Cocaine Impure"};
	case "life_inv_cokep": {"Cocaine Pure"};
	case "life_inv_spikeStrip": {"Herse"};
	case "life_inv_barriere": {"Barrière"};
	case "life_inv_cone": {"Cône"};
	case "life_inv_rock": {"Pierre"};
	case "life_inv_cement": {"Ciment"};
	case "life_inv_goldbar": {"Lingot d'Or"};
	case "life_inv_blastingcharge": {"Charge pour Coffre"};
	case "life_inv_boltcutter": {"Coupe-Boulon"};
	case "life_inv_defusekit": {"Kit Désamorcage"};
	case "life_inv_storagesmall": {"Petit coffre Maison"};
	case "life_inv_storagebig": {"Grand coffre Maison"};
	case "life_inv_moonshine": {"MoonShine"};
	case "life_inv_vodka": {"Vin"};
	case "life_inv_grapes": {"Raisin"};
	case "life_inv_artefact": {"Artefact"};
	case "life_inv_ephedrine": {"Ephedrine"};
	case "life_inv_phosphore": {"Phosphore"};
	case "life_inv_methu": {"Meth Impure"};
	case "life_inv_methp": {"Pure Methamphetamine"};
	
	//License Block
	case "license_civ_driver": {"Permis de Conduire"};
	case "license_civ_air": {"Licence Pilote"};
	case "license_civ_heroin": {"Traitement Héroine"};
	case "license_civ_gang": {"Licence de Gang"};
	case "license_civ_oil": {"Traitement Pétrole"};
	case "license_civ_dive": {"Licence Plongé"};
	case "license_civ_boat": {"Permis Bateau"};
	case "license_civ_gun": {"Firearm License"};
	case "license_cop_air": {"Licence Pilote"};
	case "license_cop_swat": {"Swat License"};
	case "license_cop_cg": {"Garde-Côte"};
	case "license_civ_rebel": {"Licence Rebelle"};
	case "license_civ_truck": {"Permis Poid-Lourd"};
	case "license_civ_diamond": {"Traitement Diamand"};
	case "license_civ_copper": {"Traitement Cuivre"};
	case "license_civ_iron": {"Traitement Fer"};
	case "license_civ_sand": {"Traitement Sable"};
	case "license_civ_salt": {"Traitement Sel"};
	case "license_civ_coke": {"Traitement Cocaine"};
	case "license_civ_marijuana": {"Traitement Marijuana"};
	case "license_civ_cement": {"Traitement Ciment"};
	case "license_med_air": {"Licence Pilote"};
	case "license_civ_home": {"Licence Propriétaire"};
	case "license_civ_meth": {"Traitement Methamphetamine"};
	case "license_civ_grapes": {"Traitement Vin"};
	case "license_civ_moonshine": {"Traitement Moonshine"};
	case "license_civ_presse": {"Journaliste"};
	//case "license_assurance_veh": {"Assurance Véhicules"};
	case "license_bl": {"Bratstvo Ledjanoe"};
	case "license_he": {"H.E"};
	case "license_lmc": {"L.M.C"};
	case "license_bgf": {"BGF"};
	case "license_fh": {"F.H"};
	case "license_sal": {"Salamander"};
	case "license_ms": {"MS-13"};
	case "license_ng": {"'Neghta"};
	case "license_fonda": {"Admin"};
};

/*
	fn_CacherMarkers.sqf
	Auteur : Sakzy
	Description : Ne pas voir les points illégaux en Cop ou autre faction
*/

_illegalmarkers = [


//Zones de Tortues
"turtle_1_name_2", "turtle_1_name_1", "turtle_1_name", "turtle_2", "turtle_3", "turtle_1",   

//Rebelle
"mark_reb_4", "mark_reb_3", "mark_reb_2", "mark_reb_1", "Rebelop_2", "faussaire_2",
    
//SafeZone
"rebelle_safezone",  

//Meth
"ephedrine_1", "produitchimique_trader", "meth_processing", "meth_trader",
    
//Souffre
"souffre_1", "souffre_processing_1", "souffre_trader",
    
//Algue
"algue_1", "algue_processing", "algue_trader",
    
//Corail
"corail_1", "corail_trader",
    
//Dealer
"Turtle_dealer", 

//Revendeur de véhicule volé
"chop_shop_1", "chop_shop_2", "chop_shop_3", "chop_shop_4"


];

private ["_retList"];

_retList = [];

switch (playerSide) do
{
	case west:
	{
		_retList = _illegalmarkers
	};

	case independent:
	{
		_retList = _illegalmarkers
	};
    
    case east:
	{
		_retList = _illegalmarkers
	};
};

{
	 _x setMarkerAlphaLocal 0;
} forEach _retList;
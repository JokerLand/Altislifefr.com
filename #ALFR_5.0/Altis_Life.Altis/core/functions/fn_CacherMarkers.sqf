/*
	fn_CacherMarkers.sqf
	Auteur : Sakzy
	Description : Ne pas voir les points illégaux en Cop ou autre faction
*/

_illegalmarkers = [


//Weed
"weed_1", "Weed_p_1",

//Cocaine
"cocaine_1", "coke_area", "cocaine_processing",

//Heroine
"heroin_1", "heroin_area", "heroin_p",
    
//Zone de Tortue
"turtle_1_name_2", "turtle_1_name_1", "turtle_1_name", "turtle_2", "turtle_3", "turtle_1",   

//Rebelle
"Rebelop_1_1", "Rebelop_1_1_1", "garage_reb_1_1", "garage_reb_1", "faussaire",
    
//Gangster
"Rebelop_1_1_1_1", "garage_reb_1_1_2", "garage_reb_1_1_1", "Gangster_shop",    
    
//SafeZone
"safezone_reb_1", "safezone_frini",    

//Dealer
"Dealer_1", "Dealer_1_3", "Dealer_3", "turle_dealer", "turle_dealer_1", "turle_dealer_2",
    
//Planque d'Arme
"gang_area_1", "gang_area_2", "gang_area_3",    

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
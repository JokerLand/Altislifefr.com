_illegalmarkers = ["ephed","ether","butane","phosph_area","meth_labo","grapes_1","gang_area_2","Dealer_1_3"];
if (playerSide == west) then {
	{deleteMarkerLocal _x;} forEach _illegalmarkers;
};
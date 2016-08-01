/*
    File: fn_seizePlayerWeaponAction.sqf
    Author: Skalicon
    Edited: CamaroZ
    Description:
    Removes the players weapons client side
*/
removeAllWeapons player; // Remove todas as armas do jogador.

[] call life_fnc_saveGear;
[] call SOCK_fnc_updateRequest;

titleText["Les armes ont été saisies.","PLAIN"];
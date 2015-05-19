/*
	File: fn_updateStats.sqf
	Author: Mash6
*/
private["_packet","_array"];
_packet = [getPlayerUID player,stat_chem,stat_hack,stat_hunt,stat_drive,stat_endu,stat_meca,stat_medic,stat_lockpick,stat_boom,stat_holdup,stat_surv,stat_civpoints,stat_coppoints,stat_mine,life_runned,life_drived,chem_state,hack_state,hunt_state,drive_state,endu_state,meca_state,medic_state,lockpick_state,boom_state,holdup_state,surv_state,civ_state,cop_state,mine_state,stat_rebpoints,reb_state,life_drivePoints,hack_quest];
[_packet,"DB_fnc_updateStats",false,false] spawn life_fnc_MP;
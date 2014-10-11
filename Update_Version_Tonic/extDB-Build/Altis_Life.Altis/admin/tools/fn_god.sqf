/*
	File: fn_god.sqf
*/
cutText ["Godmode activated.", "PLAIN"];
player removeAllEventHandlers "handleDamage";
player addEventHandler ["handleDamage", {false}];
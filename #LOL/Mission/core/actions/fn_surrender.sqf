/*
Author: MrKraken modified by Jennova
filename: fn_surrender.sqf
*/

player setVariable ["surrender", true, true];

while { player getVariable ["surrender", false] } do {
player playMove "amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon"; //d�but de l'annimation

// On contr�le que le joueur est en vie
if (!alive player) then {
player setVariable ["surrender", false, true];
};
};

player playMoveNow "AmovPercMstpSsurWnonDnon_AmovPercMstpSnonWnonDnon"; //Fin de l'annimation
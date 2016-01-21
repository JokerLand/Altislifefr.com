private["_Bombe"];
if(vest player != "V_HarnessOGL_gry") exitWith {};
[[player, "beepshoot",10],"life_fnc_playSound",true,false] spawn life_fnc_MP;
sleep 3;
[[0,format["%1 s'est fait exploser!",name player]],"life_fnc_broadcast",true,false] call life_fnc_MP;

_Bombe = "Bo_Mk82" createVehicle [0,0,9999];
_Bombe setPos (getPos player);
_Bombe setVelocity [100,0,0];

if(alive player) then {player setDamage 1;};
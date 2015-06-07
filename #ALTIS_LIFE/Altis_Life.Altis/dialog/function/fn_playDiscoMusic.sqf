/*
        File: fn_playDiscoMusic.sqf
        Author: Mash6 -- Altis Life FR -- <http://www.altislifefr.com/>
        Compiled function name: life_fnc_playDiscoMusic
       
        DO NOT USE WITHOUT PERMISSION
       
        Description:
        Plays a music for DJ
*/

if(isNil "discoTime") then {discoTime = 0};
 
if(time < discoTime) exitWith {hint "Chanson déjà en cours"};
 
_soundId = [_this,0,0,[0]] call BIS_fnc_param;
 
_soundList = [["snoopdog",347],["losecontrol",177],["lessardines",234],["kendji",186],["disclosure",325],["joestone",185],["davidguetta",201],["firefly",272],["capitaineflam",152],["avicii",228],["alesso",243],["queuleuleu",246],["martinsolveig",189]];
 
_music = _soundList select _soundId;
_track = _music select 0;
_timer = _music select 1;
 
enceintes_disco say3D _music;
discoTime = _timer;
publicVariable "discoTime";
/*
	File: welcomecredits.sqf
	
	Creates an intro on the bottom-right hand corner of the screen and add camera effect to spawn.
*/

private [ "_camera", "_welcomeMessage", "_camDistance" ];
_welcomeMessage = format["Bienvenue sur AltisLifeFr.com %1",format["%1", name player]];
_camDistance = 40;
waitUntil { alive player };
//waituntil {!isnull (finddisplay 46)};
showCinemaBorder true;
camUseNVG false;
playsound "Intro";
_camera = "camera" camCreate [(position player select 0)-2, position player select 1,(position player select 2)+_camDistance];
_camera cameraEffect ["internal","back"];
 
_camera camSetFOV 2.000;
_camera camCommit 0;
waitUntil {camCommitted _camera};
["Bienvenue sur AltisLifeFr.com","CENTER_UP",2] call arjay_dynamicText;
 
_camera camSetTarget vehicle player;
_camera camSetRelPos [0,0,2];
_camera camCommit 8;
 
cutText [_welcomeMessage, "PLAIN DOWN"];
 
waitUntil {camCommitted _camera};
 
_camera cameraEffect ["terminate","back"];
camDestroy _camera;
sleep 1;


_onScreenTime = 5;

sleep 3; //Wait in seconds before the credits start after player is in-game
//player say "Intro";
 
_role1 = "Bienvenue sur AltisLifeFr.com";
_role1names = ["Server only FR"];
_role2 = "Site/Forum";
_role2names = ["www.AltisLifeFr.com"];
_role3 = "TeamSpeak3";
_role3names = ["ts3.dedizones.com:11009"];
_role4 = "Attention";
_role4names = ["Serveur Rôle Play - Only French "];
_role5 = "Merci de lire";
_role5names = ["Les règles sont sur le forum, Merci d'en prendre connaissance. Bon jeu a tous !"];


{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.60' color='#007e00' align='center'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.80' color='#FFFFFF' align='center'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.5);
[
_finalText,
[safezoneX + safezoneW - 1.0,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
//The list below should have exactly the same amount of roles as the list above
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names]

];
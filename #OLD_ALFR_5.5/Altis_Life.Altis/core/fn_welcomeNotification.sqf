/*
    File: fn_welcomeNotification.sqf
    Author:

    Description:
    Called upon first spawn selection and welcomes our player.
*/
disableSerialization;
[
        "",
        0,
        0.2,
        10,
        0,
        0,
        8
] spawn BIS_fnc_dynamicText;

createDialog "RscDisplayWelcome";

_display = findDisplay 999999;
_text1 = _display displayCtrl 1100;
_buttonSpoiler = _display displayCtrl 2400;
_textSpoiler = _display displayCtrl 1101;
_text2 = _display displayCtrl 1102;

_message = "";
_message = _message + "<t align='center' size='8' shadow='0'><img image='textures\armalife.jpg' /></t><br /><br />";
_message = _message + "Lien de notre site (cliquer dessus pour l'ouvrir sur votre navigateur)<br /><br />";
_message = _message + " <a href='http://www.altislifefr.com/' color='#56BDD6'>AltisLifeFR.com</a> -- Pour tout problèmes nous vous invitons à demander de l'aide sur le Forum ou Teamspeak..<br /><br />";
_message = _message + "Vous êtes sur un serveur RP (Jeu de Rôle). Il est donc important de consulter les règles disponibles sur le forum. Le Fairplay et le RP sont de rigueur en Jeu !<br /><br />";
_message = _message + "Si vous voyez des objets invisibles ou autres bugs, verifiez que vous lancez bien le jeu via notre <t color='#00aa00'>#Launcher</t> disponible sur notre site<br /><br />";
_message = _message + "Bienvenue et Bon Jeu ! <br /><br />";



//Fill only the first text
_text1 ctrlSetStructuredText (parseText _message);

//Resize StructuredText component to display the scrollbar if needed
_positionText1 = ctrlPosition _text1;
_yText1 = _positionText1 select 1;
_hText1 = ctrlTextHeight _text1;
_text1 ctrlSetPosition [_positionText1 select 0, _yText1, _positionText1 select 2, _hText1];
_text1 ctrlCommit 0;
//Hide second text, spoiler text and button
_buttonSpoiler ctrlSetFade 1;
_buttonSpoiler ctrlCommit 0;
_buttonSpoiler ctrlEnable false;
_textSpoiler ctrlSetFade 1;
_textSpoiler ctrlCommit 0;
_text2 ctrlSetFade 1;
_text2 ctrlCommit 0;
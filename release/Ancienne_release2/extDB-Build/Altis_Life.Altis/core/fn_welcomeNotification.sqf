/*
	File: fn_welcomeNotification.sqf

	Description:
	Called upon first spawn selection and welcomes our player.
*/
_txt = parseText format

	["
		www.AltisLifeFr.com<br/><br/>

		Si vous voyez des objets invisibles ou autres bugs.
		Verifiez que vous lancez bien le jeu via notre <t color='#00aa00'>#Launcher</t>
		disponible sur www.altislifefr.com

		<br/><br/>------------------------<br/><br/>

		Vous êtes sur un serveur RP (Jeu de Rôle).
		Il est donc important de consulter les règles disponibles sur le forum.
		Le Fairplay et le RP sont de rigueur en Jeu !

		<br/><br/>------------------------<br/><br/>

		Pour tout problèmes nous vous invitons à demander de l'aide sur le Forum ou Teamspeak.
		Le Staff ne peut rien faire Ingame et se doit de rester RP.<br/><br/>

		Bienvenue et Bon Jeu !
	"];

format["Bonjour %1, Lis c'est important!",name player] hintC _txt;
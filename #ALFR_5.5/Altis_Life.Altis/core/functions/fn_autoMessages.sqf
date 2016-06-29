/*	File: fn_autoMessages.sqf
	Author: BenjaminSansNom 
    Edited By John.C - AltisLifeFR.com

    Description:	Auto messages in game every X seconds
*/
[] spawn {	// Add a line in this array to add a message
	_messages = [
    	"Réfléchissez à l'avenir de l'île:<br/> <t color='#DF1152' size='1.5'>Votez aux présidentielles !</t>",
        "Nous vous rappelons les Fréquences Publiques des Services de Secours :<br/> <t color='#0F48BA' size='2.5' align='center'>Police : 30.0 <br/><t color='#20BA0F' size='2.5' align='center'>Médecins : 31.0 </t>",
    	"Soutenez le serveur en faisant un Don !<br/><t color='#0CBD44' size='1.5'>Allez voir sur le Forum,<br/> section ''Faire un Don''</t>"];
	_refreshTime = 30; // Time between each message (in seconds)
	_i = 0;	while {true} do {
    	_count = count _messages;
    	_message = _messages select _i;
    	hint parseText format["<t color='#BEBDBD' size='2'>AltisLife</t><t color='#28EE05' size='2'>FR</t><br/><br/><img size='6' image='icons\alfr_watermark.paa'/><br/><br/>%1", _message];
    sleep _refreshTime;
    if (_i == (_count - 1)) then {
    	_i = 0;
    } else {
    _i = _i + 1;
    };
  };
};


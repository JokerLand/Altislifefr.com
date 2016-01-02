#include "script_macros.hpp"
TON_fnc_index =
compileFinal "
	private[""_item"",""_stack""];
	_item = _this select 0;
	_stack = _this select 1;
	_return = -1;

	{
		if(_item in _x) exitWith {
			_return = _forEachIndex;
		};
	} foreach _stack;

	_return;
";

TON_fnc_player_query =
compileFinal "
	private[""_ret""];
	_ret = _this select 0;
	if(isNull _ret) exitWith {};
	if(isNil ""_ret"") exitWith {};
	
	[[life_atmbank,life_cash,owner player,player],""life_fnc_admininfo"",_ret,false] call life_fnc_MP;
";
publicVariable "TON_fnc_player_query";
publicVariable "TON_fnc_index";

TON_fnc_isnumber =
compileFinal "
	private[""_valid"",""_value"",""_compare""];
	_value = _this select 0;
	_valid = [""0"",""1"",""2"",""3"",""4"",""5"",""6"",""7"",""8"",""9""];
	_array = [_value] call KRON_StrToArray;
	_return = true;
	
	{
		if(_x in _valid) then	
		{}
		else
		{
			_return = false;
		};
	} foreach _array;
	_return;
";

publicVariable "TON_fnc_isnumber";

TON_fnc_clientGangKick =
compileFinal "
	private[""_unit"",""_group""];
	_unit = _this select 0;
	_group = _this select 1;
	if(isNil ""_unit"" OR isNil ""_group"") exitWith {};
	if(player == _unit && (group player) == _group) then
	{
		life_my_gang = ObjNull;
		[player] joinSilent (createGroup civilian);
		hint ""You have been kicked out of the gang."";
		
	};
";
publicVariable "TON_fnc_clientGangKick";

TON_fnc_clientGetKey =
compileFinal "
	private[""_vehicle"",""_unit"",""_giver""];
	_vehicle = _this select 0;
	_unit = _this select 1;
	_giver = _this select 2;
	if(isNil ""_unit"" OR isNil ""_giver"") exitWith {};
	if(player == _unit && !(_vehicle in life_vehicles)) then
	{
		_name = getText(configFile >> ""CfgVehicles"" >> (typeOf _vehicle) >> ""displayName"");
		hint format[""%1 has gave you keys for a %2"",_giver,_name];
		life_vehicles pushBack _vehicle;
		[[getPlayerUID player,playerSide,_vehicle,1],""TON_fnc_keyManagement"",false,false] call life_fnc_MP;
	};
";

publicVariable "TON_fnc_clientGetKey";

TON_fnc_clientGangLeader =
compileFinal "
	private[""_unit"",""_group""];
	_unit = _this select 0;
	_group = _this select 1;
	if(isNil ""_unit"" OR isNil ""_group"") exitWith {};
	if(player == _unit && (group player) == _group) then
	{
		player setRank ""COLONEL"";
		_group selectLeader _unit;
		hint ""You have been made the new leader."";
	};
";

publicVariable "TON_fnc_clientGangLeader";

//Cell Phone Messaging
/*
	-fnc_cell_textmsg
	-fnc_cell_textcop
	-fnc_cell_textadmin
	-fnc_cell_adminmsg
	-fnc_cell_adminmsgall
*/

//To EMS
TON_fnc_cell_emsrequest = 
compileFinal "
private[""_msg"",""_to""];
	ctrlShow[3022,false];
	_msg = ctrlText 3003;
	_to = ""EMS Units"";
	if(_msg == """") exitWith {hint ""You must enter a message to send!"";ctrlShow[3022,true];};
		
	[[_msg,name player,5],""TON_fnc_clientMessage"",independent,false] call life_fnc_MP;
	[] call life_fnc_cellphone;
	hint format[""You have sent a message to all EMS Units."",_to,_msg];
	ctrlShow[3022,true];
";
//To One Person
TON_fnc_cell_textmsg =
compileFinal "
	private[""_msg"",""_to""];
	ctrlShow[3015,false];
	_msg = ctrlText 3003;
	if(lbCurSel 3004 == -1) exitWith {hint ""You must select a player you are sending the text to!""; ctrlShow[3015,true];};
	_to = call compile format[""%1"",(lbData[3004,(lbCurSel 3004)])];
	if(isNull _to) exitWith {ctrlShow[3015,true];};
	if(isNil ""_to"") exitWith {ctrlShow[3015,true];};
	if(_msg == """") exitWith {hint ""You must enter a message to send!"";ctrlShow[3015,true];};
	
	[[_msg,name player,0],""TON_fnc_clientMessage"",_to,false] call life_fnc_MP;
	[] call life_fnc_cellphone;
	hint format[""You sent %1 a message: %2"",name _to,_msg];
	ctrlShow[3015,true];
";
//To All Cops
TON_fnc_cell_textcop =
compileFinal "
	private[""_msg"",""_to""];
	ctrlShow[3016,false];
	_msg = ctrlText 3003;
	_to = ""The Police"";
	if(_msg == """") exitWith {hint ""You must enter a message to send!"";ctrlShow[3016,true];};
		
	[[_msg,name player,1],""TON_fnc_clientMessage"",true,false] call life_fnc_MP;
	[] call life_fnc_cellphone;
	hint format[""You sent %1 a message: %2"",_to,_msg];
	ctrlShow[3016,true];
";
//To All Admins
TON_fnc_cell_textadmin =
compileFinal "
	private[""_msg"",""_to"",""_from""];
	ctrlShow[3017,false];
	_msg = ctrlText 3003;
	_to = ""The Admins"";
	if(_msg == """") exitWith {hint ""You must enter a message to send!"";ctrlShow[3017,true];};
		
	[[_msg,name player,2],""TON_fnc_clientMessage"",true,false] call life_fnc_MP;
	[] call life_fnc_cellphone;
	hint format[""You sent %1 a message: %2"",_to,_msg];
	ctrlShow[3017,true];
";
//Admin To One Person
TON_fnc_cell_adminmsg =
compileFinal "
	if(isServer) exitWith {};
	if((call life_adminlevel) < 1) exitWith {hint ""You are not an admin!"";};
	private[""_msg"",""_to""];
	_msg = ctrlText 3003;
	_to = call compile format[""%1"",(lbData[3004,(lbCurSel 3004)])];
	if(isNull _to) exitWith {};
	if(_msg == """") exitWith {hint ""You must enter a message to send!"";};
	
	[[_msg,name player,3],""TON_fnc_clientMessage"",_to,false] call life_fnc_MP;
	[] call life_fnc_cellphone;
	hint format[""Admin Message Sent To: %1 - Message: %2"",name _to,_msg];
";

TON_fnc_cell_adminmsgall =
compileFinal "
	if(isServer) exitWith {};
	if((call life_adminlevel) < 1) exitWith {hint ""You are not an admin!"";};
	private[""_msg"",""_from""];
	_msg = ctrlText 3003;
	if(_msg == """") exitWith {hint ""You must enter a message to send!"";};
	
	[[_msg,name player,4],""TON_fnc_clientMessage"",true,false] call life_fnc_MP;
	[] call life_fnc_cellphone;
	hint format[""Admin Message Sent To All: %1"",_msg];
";

//To ADAC
TON_fnc_cell_adacrequest = 
compileFinal "
private[""_msg"",""_to""];
	ctrlShow[3023,false];
	_msg = ctrlText 3003;
	_to = ""ADAC Units"";
	if(_msg == """") exitWith {hint ""Vous devez entrer un message!"";ctrlShow[3023,true];};
		
	[[_msg,name player,6],""TON_fnc_clientMessage"",east,false] spawn life_fnc_MP;
	[] call life_fnc_cellphone;
	hint format[""Vous avez envoyé un message à toute l'armée !"",_to,_msg];
	ctrlShow[3023,true];
";

publicVariable "TON_fnc_cell_textmsg";
publicVariable "TON_fnc_cell_textcop";
publicVariable "TON_fnc_cell_textadmin";
publicVariable "TON_fnc_cell_adminmsg";
publicVariable "TON_fnc_cell_adminmsgall";
publicVariable "TON_fnc_cell_emsrequest";
publicVariable "TON_fnc_cell_adacrequest";
//Client Message
/*
	0 = private message
	1 = police message
	2 = message to admin
	3 = message from admin
	4 = admin message to all
*/
TON_fnc_clientMessage =
compileFinal "
	if(isServer) exitWith {};
	private[""_msg"",""_from"", ""_type""];
	_msg = _this select 0;
	_from = _this select 1;
	_type = _this select 2;
	if(_from == """") exitWith {};
	switch (_type) do
	{
		case 0 :
		{
			private[""_message""];
			_message = format["">>>MESSAGE RECU DE %1: %2"",_from,_msg];
			hint parseText format [""<t color='#FFCC00'><t size='2'><t align='center'>Nouveau message<br/><br/><t color='#33CC33'><t align='left'><t size='1'>A: <t color='#ffffff'>Vous<br/><t color='#33CC33'>De: <t color='#ffffff'>%1<br/><br/><t color='#33CC33'>Message:<br/><t color='#ffffff'>%2"",_from,_msg];
			
			[""TextMessage"",[format[""Vous avez reçu un nouveau SMS de %1"",_from]]] call bis_fnc_showNotification;
			player say3D ""alert"";
			systemChat _message;
		};
		
		case 1 :
		{
			if(side player != west) exitWith {};
			private[""_message""];
			_message = format[""---MESSAGE POLICE SECOURS DE %1: %2"",_from,_msg];
			hint parseText format [""<t color='#316dff'><t size='2'><t align='center'>Nouvelle Alerte<br/><br/><t color='#33CC33'><t align='left'><t size='1'>=A: <t color='#ffffff'>Tous les officiers<br/><t color='#33CC33'>De: <t color='#ffffff'>%1<br/><br/><t color='#33CC33'>Message:<br/><t color='#ffffff'>%2"",_from,_msg];
			
			[""PoliceDispatch"",[format[""Nouvelle alerte Police Secours de: %1"",_from]]] call bis_fnc_showNotification;
			player say3D ""alert"";
			systemChat _message;
		};
		
		case 2 :
		{
			if((call life_adminlevel) < 1) exitWith {};
			private[""_message""];
			_message = format[""???REQUÊTE ADMIN DE %1: %2"",_from,_msg];
			hint parseText format [""<t color='#ffcefe'><t size='2'><t align='center'>Requête admin<br/><br/><t color='#33CC33'><t align='left'><t size='1'>A: <t color='#ffffff'>Admins<br/><t color='#33CC33'>De: <t color='#ffffff'>%1<br/><br/><t color='#33CC33'>Message:<br/><t color='#ffffff'>%2"",_from,_msg];
			
			[""AdminDispatch"",[format[""%1 à demandé un Admin !"",_from]]] call bis_fnc_showNotification;
			player say3D ""alert"";
			systemChat _message;
		};
		
		case 3 :
		{
			private[""_message""];
			_message = format[""!!!MESSAGE ADMIN: %1"",_msg];
			_admin = format[""Envoyé par l'admin: %1"", _from];
			hint parseText format [""<t color='#FF0000'><t size='2'><t align='center'>Message Admin<br/><br/><t color='#33CC33'><t align='left'><t size='1'>A: <t color='#ffffff'>Vous<br/><t color='#33CC33'>De: <t color='#ffffff'>Un Admin<br/><br/><t color='#33CC33'>Message:<br/><t color='#ffffff'>%1"",_msg];
			
			[""AdminMessage"",[""Vous avez reçu un message d'un admin !""]] call bis_fnc_showNotification;
			player say3D ""alert"";
			systemChat _message;
			if((call life_adminlevel) > 0) then {systemChat _admin;};
		};
		
		case 4 :
		{
			private[""_message"",""_admin""];
			_message = format[""!!!MESSAGE ADMIN: %1"",_msg];
			_admin = format[""Envoyé par l'admin: %1"", _from];
			hint parseText format [""<t color='#FF0000'><t size='2'><t align='center'>Message Admin<br/><br/><t color='#33CC33'><t align='left'><t size='1'>A: <t color='#ffffff'>Tous les joueurs<br/><t color='#33CC33'>De: <t color='#ffffff'>Les Admins<br/><br/><t color='#33CC33'>Message:<br/><t color='#ffffff'>%1"",_msg];
			
			[""AdminMessage"",[""Vous avez reçu un message d'un admin !""]] call bis_fnc_showNotification;
			player say3D ""alert"";
			systemChat _message;
			if((call life_adminlevel) > 0) then {systemChat _admin;};
		};
		
		case 5: {
			private[""_message""];
			_message = format[""!!!DEMANDE SAMU: %1"",_msg];
			hint parseText format [""<t color='#FFCC00'><t size='2'><t align='center'>Demande SAMU<br/><br/><t color='#33CC33'><t align='left'><t size='1'>A: <t color='#ffffff'>Vous<br/><t color='#33CC33'>De: <t color='#ffffff'>%1<br/><br/><t color='#33CC33'>Message:<br/><t color='#ffffff'>%2"",_from,_msg];
			
			[""TextMessage"",[format[""Demande SAMU de %1"",_from]]] call bis_fnc_showNotification;
		};

		case 6: {
			private[""_message""];
			_message = format[""!!!DEMANDE ARMEE !!!!: %1"",_msg];
			hint parseText format [""<t color='#FFCC00'><t size='2'><t align='center'>ADAC Request<br/><br/><t color='#33CC33'><t align='left'><t size='1'>To: <t color='#ffffff'>You<br/><t color='#33CC33'>From: <t color='#ffffff'>%1<br/><br/><t color='#33CC33'>Message:<br/><t color='#ffffff'>%2"",_from,_msg];
			
			[""TextMessage"",[format[""ADAC Request from %1"",_from]]] call bis_fnc_showNotification;
		};
	};
";
publicVariable "TON_fnc_clientMessage";
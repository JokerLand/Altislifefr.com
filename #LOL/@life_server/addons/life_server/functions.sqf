life_fnc_sidechat =
compileFinal "
	if(life_sidechat) then {life_sidechat = false;} else {life_sidechat = true;};
	[[player,life_sidechat,playerSide],""TON_fnc_managesc"",false,false] spawn life_fnc_MP;
	[] call life_fnc_settingsMenu;
";

publicVariable "life_fnc_sidechat";

fnc_index =
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

fnc_player_query =
compileFinal "
	private[""_ret""];
	_ret = _this select 0;
	if(isNull _ret) exitWith {};
	if(isNil ""_ret"") exitWith {};
	
	[[life_atmcash,life_cash,owner player,player],""life_fnc_admininfo"",_ret,false] spawn life_fnc_MP;
";
publicVariable "fnc_player_query";

publicVariable "fnc_index";

TON_fnc_clientWireTransfer =
compileFinal "
	private[""_unit"",""_val"",""_from""];
	_val = _this select 0;
	_from = _this select 1;
	if(!([str(_val)] call fnc_isnumber)) exitWith {};
	if(_from == """") exitWith {};
	life_atmcash = life_atmcash + _val;
	hint format[""%1 has wire transferred $%2 to you."",_from,[_val] call life_fnc_numberText];
	
";
publicVariable "TON_fnc_clientWireTransfer";

fnc_isnumber =
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

publicVariable "fnc_isnumber";

clientGangKick =
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
publicVariable "clientGangKick";

clientGetKey =
compileFinal "
	private[""_vehicle"",""_unit"",""_giver""];
	_vehicle = _this select 0;
	_unit = _this select 1;
	_giver = _this select 2;
	if(isNil ""_unit"" OR isNil ""_giver"") exitWith {};
	if(player == _unit && !(_vehicle in life_vehicles)) then
	{
		_name = getText(configFile >> ""CfgVehicles"" >> (typeOf _vehicle) >> ""displayName"");
		hint format[""%1 vous a donné les clés de son %2"",_giver,_name];
		life_vehicles set[count life_vehicles, _vehicle];
	};
";

publicVariable "clientGetKey";

clientGangLeader =
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

publicVariable "clientGangLeader";

//Cell Phone Messaging
/*
	-fnc_cell_textmsg
	-fnc_cell_textcop
	-fnc_cell_textadmin
	-fnc_cell_adminmsg
	-fnc_cell_adminmsgall
*/

//To EMS
fnc_cell_emsrequest = 
compileFinal "
private[""_msg"",""_to""];
	ctrlShow[3022,false];
	_msg = ctrlText 3003;
	_to = ""EMS Units"";
	if(_msg == """") exitWith {hint ""You must enter a message to send!"";ctrlShow[3022,true];};
		
	[[_msg,name player,5],""clientMessage"",independent,false] spawn life_fnc_MP;
	[] call life_fnc_cellphone;
	hint format[""You have sent a message to all EMS Units."",_to,_msg];
	ctrlShow[3022,true];
";
//To One Person
fnc_cell_textmsg =
compileFinal "
	private[""_msg"",""_to""];
	ctrlShow[3015,false];
	_msg = ctrlText 3003;
	if(lbCurSel 3004 == -1) exitWith {hint ""You must select a player you are sending the text to!""; ctrlShow[3015,true];};
	_to = call compile format[""%1"",(lbData[3004,(lbCurSel 3004)])];
	if(isNull _to) exitWith {ctrlShow[3015,true];};
	if(isNil ""_to"") exitWith {ctrlShow[3015,true];};
	if(_msg == """") exitWith {hint ""You must enter a message to send!"";ctrlShow[3015,true];};
	
	[[_msg,name player,0],""clientMessage"",_to,false] spawn life_fnc_MP;
	[] call life_fnc_cellphone;
	hint format[""You sent %1 a message: %2"",name _to,_msg];
	ctrlShow[3015,true];
";
//To All Cops
fnc_cell_textcop =
compileFinal "
	private[""_msg"",""_to""];
	ctrlShow[3016,false];
	_msg = ctrlText 3003;
	_to = ""Gendarmerie"";
	if(_msg == """") exitWith {hint ""You must enter a message to send!"";ctrlShow[3016,true];};
		
	[[_msg,name player,1],""clientMessage"",true,false] spawn life_fnc_MP;
	[] call life_fnc_cellphone;
	hint format[""You sent %1 a message: %2"",_to,_msg];
	ctrlShow[3016,true];
";
//To All Admins
fnc_cell_textadmin =
compileFinal "
	private[""_msg"",""_to"",""_from""];
	ctrlShow[3017,false];
	_msg = ctrlText 3003;
	_to = ""The Admins"";
	if(_msg == """") exitWith {hint ""You must enter a message to send!"";ctrlShow[3017,true];};
		
	[[_msg,name player,2],""clientMessage"",true,false] spawn life_fnc_MP;
	[] call life_fnc_cellphone;
	hint format[""You sent %1 a message: %2"",_to,_msg];
	ctrlShow[3017,true];
";
//Admin To One Person
fnc_cell_adminmsg =
compileFinal "
	if(isServer) exitWith {};
	if((call life_adminlevel) < 1) exitWith {hint ""You are not an admin!"";};
	private[""_msg"",""_to""];
	_msg = ctrlText 3003;
	_to = call compile format[""%1"",(lbData[3004,(lbCurSel 3004)])];
	if(isNull _to) exitWith {};
	if(_msg == """") exitWith {hint ""You must enter a message to send!"";};
	
	[[_msg,name player,3],""clientMessage"",_to,false] spawn life_fnc_MP;
	[] call life_fnc_cellphone;
	hint format[""Admin Message Sent To: %1 - Message: %2"",name _to,_msg];
";

fnc_cell_adminmsgall =
compileFinal "
	if(isServer) exitWith {};
	if((call life_adminlevel) < 1) exitWith {hint ""You are not an admin!"";};
	private[""_msg"",""_from""];
	_msg = ctrlText 3003;
	if(_msg == """") exitWith {hint ""You must enter a message to send!"";};
	
	[[_msg,name player,4],""clientMessage"",true,false] spawn life_fnc_MP;
	[] call life_fnc_cellphone;
	hint format[""Admin Message Sent To All: %1"",_msg];
";

publicVariable "fnc_cell_textmsg";
publicVariable "fnc_cell_textcop";
publicVariable "fnc_cell_textadmin";
publicVariable "fnc_cell_adminmsg";
publicVariable "fnc_cell_adminmsgall";
publicVariable "fnc_cell_emsrequest";
//Client Message
/*
	0 = private message
	1 = police message
	2 = message to admin
	3 = message from admin
	4 = admin message to all
*/
clientMessage =
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
			_message = format["">>>MESSAGE FROM %1: %2"",_from,_msg];
			hint parseText format [""<t color='#FFCC00'><t size='2'><t align='center'>New Message<br/><br/><t color='#33CC33'><t align='left'><t size='1'>To: <t color='#ffffff'>You<br/><t color='#33CC33'>From: <t color='#ffffff'>%1<br/><br/><t color='#33CC33'>Message:<br/><t color='#ffffff'>%2"",_from,_msg];
			
			[""TextMessage"",[format[""You Received A New Private Message From %1"",_from]]] call bis_fnc_showNotification;
			player say3D ""alert"";
			systemChat _message;
		};
		
		case 1 :
		{
			if(side player != west) exitWith {};
			private[""_message""];
			_message = format[""---911 DISPATCH FROM %1: %2"",_from,_msg];
			hint parseText format [""<t color='#316dff'><t size='2'><t align='center'>New Dispatch<br/><br/><t color='#33CC33'><t align='left'><t size='1'>To: <t color='#ffffff'>All Officers<br/><t color='#33CC33'>From: <t color='#ffffff'>%1<br/><br/><t color='#33CC33'>Message:<br/><t color='#ffffff'>%2"",_from,_msg];
			
			[""PoliceDispatch"",[format[""A New Police Report From: %1"",_from]]] call bis_fnc_showNotification;
			player say3D ""alert"";
			systemChat _message;
		};
		
		case 2 :
		{
			if((call life_adminlevel) < 1) exitWith {};
			private[""_message""];
			_message = format[""???ADMIN REQUEST FROM %1: %2"",_from,_msg];
			hint parseText format [""<t color='#ffcefe'><t size='2'><t align='center'>Admin Request<br/><br/><t color='#33CC33'><t align='left'><t size='1'>To: <t color='#ffffff'>Admins<br/><t color='#33CC33'>From: <t color='#ffffff'>%1<br/><br/><t color='#33CC33'>Message:<br/><t color='#ffffff'>%2"",_from,_msg];
			
			[""AdminDispatch"",[format[""%1 Has Requested An Admin!"",_from]]] call bis_fnc_showNotification;
			player say3D ""alert"";
			systemChat _message;
		};
		
		case 3 :
		{
			private[""_message""];
			_message = format[""!!!ADMIN MESSAGE: %1"",_msg];
			_admin = format[""Sent by admin: %1"", _from];
			hint parseText format [""<t color='#FF0000'><t size='2'><t align='center'>Admin Message<br/><br/><t color='#33CC33'><t align='left'><t size='1'>To: <t color='#ffffff'>You<br/><t color='#33CC33'>From: <t color='#ffffff'>An Admin<br/><br/><t color='#33CC33'>Message:<br/><t color='#ffffff'>%1"",_msg];
			
			[""AdminMessage"",[""You Have Received A Message From An Admin!""]] call bis_fnc_showNotification;
			player say3D ""alert"";
			systemChat _message;
			if((call life_adminlevel) > 0) then {systemChat _admin;};
		};
		
		case 4 :
		{
			private[""_message"",""_admin""];
			_message = format[""!!!ADMIN MESSAGE: %1"",_msg];
			_admin = format[""Sent by admin: %1"", _from];
			hint parseText format [""<t color='#FF0000'><t size='2'><t align='center'>Admin Message<br/><br/><t color='#33CC33'><t align='left'><t size='1'>To: <t color='#ffffff'>All Players<br/><t color='#33CC33'>From: <t color='#ffffff'>The Admins<br/><br/><t color='#33CC33'>Message:<br/><t color='#ffffff'>%1"",_msg];
			
			[""AdminMessage"",[""You Have Received A Message From An Admin!""]] call bis_fnc_showNotification;
			player say3D ""alert"";
			systemChat _message;
			if((call life_adminlevel) > 0) then {systemChat _admin;};
		};
		
		case 5: {
			private[""_message""];
			_message = format[""!!!Demande du SAMU: %1"",_msg];
			hint parseText format [""<t color='#FFCC00'><t size='2'><t align='center'>SAMU<br/><br/><t color='#33CC33'><t align='left'><t size='1'>Destinataire: <t color='#ffffff'>Vous<br/><t color='#33CC33'>De: <t color='#ffffff'>%1<br/><br/><t color='#33CC33'>Message:<br/><t color='#ffffff'>%2"",_from,_msg];
			player say3D ""alert"";
			[""TextMessage"",[format[""Demande SAMU de %1"",_from]]] call bis_fnc_showNotification;
		};
	
		case 6: {
			if(!license_civ_rsdep) exitWith {};
			private[""_message""];
			_message = format[""Demande RsDep : %1"",_msg];
			hint parseText format [""<t color='#FFCC00'><t size='2'><t align='center'>RsDep<br/><br/><t color='#33CC33'><t align='left'><t size='1'>Pour : <t color='#ffffff'>La RsDep<br/><t color='#33CC33'>De : <t color='#ffffff'>%1<br/><br/><t color='#33CC33'>Message :<br/><t color='#ffffff'>%2"",_from,_msg];
			player say3D ""alert"";
			[""TextMessage"",[format[""Message RsDep de %1"",_from]]] call bis_fnc_showNotification;
		};
	
		case 7: {
			if(!license_civ_gis) exitWith {};
			private[""_message""];
			_message = format[""Demande GIS : %1"",_msg];
			hint parseText format [""<t color='#FFCC00'><t size='2'><t align='center'>G.I.S<br/><br/><t color='#33CC33'><t align='left'><t size='1'>Pour : <t color='#ffffff'>La GIS<br/><t color='#33CC33'>De : <t color='#ffffff'>%1<br/><br/><t color='#33CC33'>Message :<br/><t color='#ffffff'>%2"",_from,_msg];
			player say3D ""alert"";
			[""TextMessage"",[format[""Message GIS de %1"",_from]]] call bis_fnc_showNotification;
		};
	};
";
publicVariable "clientMessage";
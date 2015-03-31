/*
	File: cleanup.sqf
	Author: GeK "www.altislifefr.com"

	Description:
	Cleanup script init
*/

sleep 10;

{
	deleteVehicle _x;
} forEach allDead;

{
	if (count(crew _x) < 1 || !(alive _x)) then {
		if(typeOf _x != "Land_InfoStand_V2_F")then {
			deleteVehicle _x;

		};
	if (count(crew _x) < 1 || !(alive _x)) then {
		if(typeOf _x != "Land_OfficeChair_01_F")then {
			deleteVehicle _x;

		};
	if (count(crew _x) < 1 || !(alive _x)) then {
		if(typeOf _x != "OfficeTable_01_old_F")then {
			deleteVehicle _x;

		};
	if (count(crew _x) < 1 || !(alive _x)) then {
		if(typeOf _x != "Land_WaterCooler_01_new_F")then {
			deleteVehicle _x;

		};
	if (count(crew _x) < 1 || !(alive _x)) then {
		if(typeOf _x != "Land_OfficeCabinet_01_F")then {
			deleteVehicle _x;

		};
	if (count(crew _x) < 1 || !(alive _x)) then {
		if(typeOf _x != "Fridge_01_closed_F")then {
			deleteVehicle _x;

		};
	};
} forEach vehicles;

//hint parseText format["<t align='center'><t color='#FF0000'><t size='3'>Info</t></t><br/>Attention 2 Heures</t><br/><br/>Nettoyage des vehicules non-occupés dans 2 heures"];

//sleep 6900; //dans 5minutes
//hint parseText format["<t align='center'><t color='#FF0000'><t size='3'>Info</t></t><br/>Attention 5 Minutes</t><br/><br/>Nettoyage des vehicules non-occupés dans 5 minutes"];

//sleep 240; //dans 1minutes
//hint parseText format["<t align='center'><t color='#FF0000'><t size='3'>Info</t></t><br/>Attention 60 secondes</t><br/><br/>Nettoyage des vehicules non-occupés dans 60 secondes"];

//sleep 30; //dans 30 sec
//hint parseText format["<t align='center'><t color='#FF0000'><t size='3'>Info</t></t><br/>Attention 30 secondes</t><br/><br/>Nettoyage des vehicules non-occupés dans 30 secondes"];

//sleep 20; //dans 10 sec
//hint parseText format["<t align='center'><t color='#FF0000'><t size='3'>Info</t></t><br/>Attention 10 secondes</t><br/><br/>Nettoyage des vehicules non-occupés dans 10 secondes"];

//sleep 5; //dans 5 sec
//hint parseText format["<t align='center'><t color='#FF0000'><t size='3'>Info</t></t><br/>Attention 5 secondes</t><br/><br/>Nettoyage des vehicules non-occupés dans 5 secondes"];

//sleep 5; //cleanup
//hint parseText format["<t align='center'><t color='#FF0000'><t size='3'>Info</t></t><br/>Attention</t><br/><br/>Nettoyage des vehicules non-occupés imminent"];

//sleep 1; //cleanup

//{
//	deleteVehicle _x;
//} forEach allDead;

//{
//	if (count(crew _x) < 1 || !(alive _x)) then {
//		if(typeOf _x != "Land_InfoStand_V2_F")then {
//			deleteVehicle _x;

//		};
//	};
//} forEach vehicles;
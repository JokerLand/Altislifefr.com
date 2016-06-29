/*
    File: init.sqf
    Author: 
    
    Description:
    
*/
StartProgress = false;

[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
[] spawn life_fnc_autoMessages; 

//Menu Admin
[] execVM "Anticheat.sqf";
[] execVM "AdminMenu.sqf";
//Safezone
[] execVM "safezone.sqf";

StartProgress = true;

/*
*****************************
****** Task Force Radio  ****
*****************************
*/


/* Configuration */

tf_radio_channel_name = "EN JEU TASK FORCE RADIO";
tf_radio_channel_password = "25066";
tf_no_auto_long_range_radio = true;
tf_same_sw_frequencies_for_side = false;
tf_same_lr_frequencies_for_side = false;
tf_same_dd_frequencies_for_side = false;
waitUntil {sleep 0.1;!(isNull player)};
player setVariable ["tf_sendingDistanceMultiplicator", 20];
player setVariable ["tf_receivingDistanceMultiplicator", 1];
TF_terrain_interception_coefficient = 5;
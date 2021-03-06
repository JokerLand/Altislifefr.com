/*
	File: fn_drinkrhum.sqf
	Compiled function name: life_fnc_drinkrhum
	Author: Sam_ -- Altis Life FR -- <http://www.altislifefr.com/>
	
	DO NOT USE WITHOUT PERMISSION
	
	Description:
	Allows the player to drink the "rhum" item
*/

closeDialog 0;
sleep 4;
"chromAbberation" ppEffectEnable true;
"radialBlur" ppEffectEnable true;
"ColorInversion" ppEffectEnable true;
"colorCorrections" ppEffectEnable true;
enableCamShake true;

if (life_drink > 0.22) then {
			titleText [localize "STR_MISC_DrunkBlackOut","BLACK OUT"];
			player playMoveNow "Incapacitated";
			//titleText[localize "STR_MISC_DrunkBlackOut","BLACK IN"];
			sleep 15;
			removeUniform player;removeVest player;
			player playMoveNow "AinjPpneMstpSnonWrflDnon_rolltoback";
			sleep 10;
			life_drink = 0;
			titleText[localize "STR_MISC_DrunkBlackOut1","PLAIN"];
			player playMoveNow "amovppnemstpsraswrfldnon";
			[[0,format[localize "STR_MISC_StPubIntox",profileName]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
			[[getPlayerUID player,profileName,"390"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
			
} else {
	for "_i" from 0 to 89 do
	{
		if(life_drink > 0.12) then {

			"chromAberration" ppEffectAdjust[0,random 0.35, false];
			"chromAberration" ppEffectCommit 1;   
			"radialBlur" ppEffectAdjust  [random 0.35,random 0.1,0.3,0.3];
			"radialBlur" ppEffectCommit 1;
			"ColorInversion" ppEffectAdjust [0.1,0.1,0.1];
			"ColorInversion" ppEffectCommit 1;
			"colorCorrections" ppEffectAdjust[ 0.47, 0.76, 0.7, [0.1, -0.57, 0, 0.05],[1.8, 1.3, 0.3, 0.7],[0.2, 0.59, 0.11, 0]];
			"colorCorrections" ppEffectCommit 1;
			addcamShake[random 4, 2, random 4];
			sleep 1;
		} else {
			"chromAberration" ppEffectAdjust [random 0.05,random 0.05,true];
			"chromAberration" ppEffectCommit 1;   
			"ColorInversion" ppEffectAdjust [0.1,0.1,0.1];
			"ColorInversion" ppEffectCommit 1;
			"radialBlur" ppEffectAdjust  [random 0.6,random 0.06,0.5,0.5];
			"radialBlur" ppEffectCommit 1;
			addcamShake[random 7, 2, random 7];
			sleep 1;
		};
	};
};


//Stop effects
"chromAberration" ppEffectAdjust [0,0,true];
"chromAberration" ppEffectCommit 5;
"colorCorrections" ppEffectAdjust[ 1, 1, 0, [0, 0, 0, 0],[1.8, 1.8, 0.3, 0.7],[0.2, 0.59, 0.11, 0]];
"colorCorrections" ppEffectCommit 5;
"ColorInversion" ppEffectAdjust [0,0,0];
"ColorInversion" ppEffectCommit 5;
"radialBlur" ppEffectAdjust  [0,0,0,0];
"radialBlur" ppEffectCommit 5;
sleep 6;

//Deactivate ppEffects
//"chromAberration" ppEffectEnable false;
//"radialBlur" ppEffectEnable false;
//"colorCorrections" ppEffectEnable false;
resetCamShake;
if(life_drink != 0) then {life_drink = life_drink - 0.02;};
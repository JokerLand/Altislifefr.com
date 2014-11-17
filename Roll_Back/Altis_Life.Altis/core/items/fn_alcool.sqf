/*
    File: fn_alcool.sqf
    Author: Kuchiha,Gek
	screen : http://image.noelshack.com/fichiers/2014/16/1397925486-arma3-2014-04-19-18-37-52-13.jpg
    Description:
    Alcohol effects.
*/

//Close inventory
closeDialog 0;

//Little hint then wait a litle before starting drugs effects
hint "L'alcool c'est mal !";
sleep 3;

//Activate ppEffects we need
"chromAberration" ppEffectEnable true;
"ColorInversion" ppEffectEnable true;
"radialBlur" ppEffectEnable true;
enableCamShake true;

//Let's go for 45secs of effetcs
for "_i" from 0 to 44 do
{
	"chromAberration" ppEffectAdjust [0.05,0.05,true];
    "chromAberration" ppEffectCommit 1;
    "ColorInversion" ppEffectAdjust [0.1,0.1,0.1];
    "ColorInversion" ppEffectCommit 1;
    "radialBlur" ppEffectAdjust  [0.2,0.2,0.15,0.15];
    "radialBlur" ppEffectCommit 1;
    addcamShake[(random 4)+1, 1, (random 4)+1];
    sleep 1;
};

//Stop effects
"chromAberration" ppEffectAdjust [0,0,true];
"chromAberration" ppEffectCommit 5;
"ColorInversion" ppEffectAdjust [0,0,0];
"ColorInversion" ppEffectCommit 5;
"radialBlur" ppEffectAdjust  [0,0,0,0];
"radialBlur" ppEffectCommit 5;
sleep 6;

//Deactivate ppEffects
"chromAberration" ppEffectEnable false;
"ColorInversion" ppEffectEnable false;
"radialBlur" ppEffectEnable false;
resetCamShake;

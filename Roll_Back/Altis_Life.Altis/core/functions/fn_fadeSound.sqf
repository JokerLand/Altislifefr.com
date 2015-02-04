/*
	File: fn_fadeSound.sqf
	Author: Michael Francis
	Adaptation: "Sakzy" - www.altislifefr.com
	Description:
	Volume en jeu reglable.
*/
life_fadeSound = !life_fadeSound;

if (life_fadeSound) then 
{
	1 fadeSound 0.1; // Faded to 10%
	titleText ["Votre volume est devenu faible.", "PLAIN"];
}
else
{
	1 fadeSound 1; // Returned to 100%
	titleText ["Votre volume est redevenu normal.", "PLAIN"];
};
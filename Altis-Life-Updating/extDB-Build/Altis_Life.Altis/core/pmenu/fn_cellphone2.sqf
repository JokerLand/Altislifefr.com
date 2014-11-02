/*
File: fn_cellphone2.sqf
Author: Timo
 
Description:
With no radio cant use Cellphone
*/




if("ItemRadio" in assignedItems player) then {
createDialog "Life_cell_phone"; // or /** Life_my_smartphone **\ if you use the SQL Based Smartphone   By Silex ( http://www.altislife...sed-smartphone/ )
}else{
hint parseText format ["<t size='1.30' font='puristaMedium' align='center' color='#0D82DF'>Aucun Téléphone</t><br/><br/>
<t size='0.90 'font='puristaLight' align='left'>Vous devez avoir un téléphone (Radio) pour utiliser cela. Vous pouvez acheter un téléphone a la quincaillerie</t><br/>"];
};
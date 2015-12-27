/*
	File: UI_ceinture.hpp
	Author: SniPeZz_Qc

	Description:
	Ui ceinture
*/

class attache
	{
		idd=-1;
		movingEnable = true;
		duration=99999999999999999999999999999999999999999999;
		fadein=0;
		name = "attache";
		controls[]={Picture};
		class Picture : RscPicture
		{
			idc = -1;
			x = safeZoneX+safeZoneW-0.057;
			y = safeZoneY+safeZoneH-0.528;
			w = 0.05;
			h = 0.05;
			ColorText[]={154,199,49,0.8};
			text = "Aiekillu_Textures\Icones\UI\avecCeinture.paa";
			sizeEx = 0.01;
			style=48;
		};
	};
	
class pasattache
	{
		idd=-1;
		movingEnable = true;
		duration=99999999999999999999999999999999999999999999;
		fadein=0;
		name = "pasattache";
		controls[]={Picture};
		class Picture : RscPicture
		{
			idc = -1;
			x = safeZoneX+safeZoneW-0.057;
			y = safeZoneY+safeZoneH-0.528;
			w = 0.05;
			h = 0.05;
			ColorText[]={154,199,49,0.8};
			text = "Aiekillu_Textures\Icones\UI\pasAttacher.paa";
			sizeEx = 0.01;
			style=48;
		};
	};
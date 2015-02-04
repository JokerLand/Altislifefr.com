if(life_casMusic) exitWith {};
life_casMusic = true;
[]spawn
{
	while {life_casMusicTrig} do
	{
		pnj_cas say3D "CasMusic";
		sleep 22.2;
	};
	life_casMusic = false;
};
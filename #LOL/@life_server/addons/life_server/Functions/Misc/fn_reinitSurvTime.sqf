switch(surv_state) do {
	case 0: 
	{
		stat_surv = 0;
	};
	case 1: 
	{
		stat_surv = 16;
	};
	case 2: 
	{
		stat_surv = 32;
	};
	case 3: 
	{
		stat_surv = 48;
	};
};
hint parseText format["<t align='center'><t color='#FF0000'><t size ='2.5'><t align='center'>ATTENTION<br/><t color='#FFFFFF'><t align='center'><t size='1.5'>Votre temps de furtivité à été remis à zéro"];
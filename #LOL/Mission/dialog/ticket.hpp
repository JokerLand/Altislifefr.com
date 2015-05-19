class Life_ticket_give
{
	idd = 2650;
	name = "life_ticket_give";
	movingEnabled = false;
	enableSimulation = true;

	class controlsBackground {
		class Life_RscTitleBackground: Life_RscText
		{
			idc = -1;
			text = "Donner une Amende";
			x = 0.1625;
			y = 3.72529e-009;
			w = 0.65;
			h = 0.04;
			colorBackground[] = {0,0,0,1};
		};
		
		class MainBackground: Life_RscText
		{
			idc = -1;
			x = 0.1625;
			y = 0.04;
			w = 0.65;
			h = 0.42;
			colorBackground[] = {0,0,0,0.7};
		};
	};
	
	class controls 
	{
		class RscText_1002: Life_RscText
		{
			idc = 1002;
			text = "Montant :";
			x = 0.2;
			y = 0.08;
			w = 0.15;
			h = 0.04;
		};
	
		class money: Life_RscEdit
		{
			idc = 1400;
			text="";
			x = 0.3125;
			y = 0.08;
			w = 0.45;
			h = 0.04;
		};
		
		class RscText_1003: Life_RscText
		{
			idc = 2652;
			text = "Note :";
			x = 0.2;
			y = 0.16;
			w = 0.0875;
			h = 0.04;
		};
		
		class note: Life_RscEdit
		{
			idc = 1401;
			text="";
			x = 0.3125;
			y = 0.16;
			w = 0.45;
			h = 0.04;
		};
		
		class RscText_1004: Life_RscText
		{
			idc = 1004;
			text = "Raison :";
			x = 0.2;
			y = 0.24;
			w = 0.1;
			h = 0.04;
		};
		
		class reason: Life_RscEdit
		{
			idc = 1402;
			text="";
			x = 0.3125;
			y = 0.24;
			w = 0.45;
			h = 0.04;
		};
		class comfirmButton: Life_RscButtonMenu
		{
			idc = -1;
			text = "CONFIRMER";
			onButtonClick = "[] call life_fnc_ticketGive";
			x = 0.4125;
			y = 0.36;
			w = 0.1375;
			h = 0.04;
		};
	};
};

class Life_ticket_pay
{
	idd = 2600;
	name = "life_ticket_pay";
	movingEnabled = false;
	enableSimulation = true;
	
	class controlsBackground {
		class Life_RscTitleBackground:Life_RscText {
			colorBackground[] = {0,0.27,0.23,1};
			idc = -1;
			x = 0.3;
			y = 0.2;
			w = 0.47;
			h = (1 / 25);
		};
		
		class MainBackground:Life_RscText {
			colorBackground[] = {0, 0, 0, 0.7};
			idc = -1;
			x = 0.3;
			y = 0.2 + (11 / 250);
			w = 0.47;
			h = 0.3 - (22 / 250);
		};
	};
	
	class controls 
	{
		class InfoMsg : Life_RscStructuredText
		{
			idc = 2601;
			sizeEx = 0.020;
			text = "";
			x = 0.287;
			y = 0.2 + (11 / 250);
			w = 0.5; h = 0.12;
		};

		class payTicket: Life_RscButtonMenu {
			idc = -1;
			text = "$STR_Ticket_PayTicket";
			colorBackground[] = {0,0.27,0.23,1};
			onButtonClick = "[] call life_fnc_ticketPay;";
			x = 0.2 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.42 - (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
		};
		
		class refuseTicket : Life_RscButtonMenu {
			idc = -1;
			text = "$STR_Ticket_RefuseTicket";
			colorBackground[] = {0,0.27,0.23,1};
			onButtonClick = "closeDialog 0;";
			x = 0.4 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.42 - (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
		};
	};
};
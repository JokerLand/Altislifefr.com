/*

	Main configuration for non-persistent market system
	Will need triggers to hook into vanilla pricing methods

*/

////////////MAIN CONFIG

life_market_resources = [

	//Schema: SHORTNAME, Default, Min, Max, changes in action, [Sales multiplied by 1, Purchase multiplied by -1]
	//["gold", 1500, 450, 2300, 8, 5],
	
	// GROUP 1 legal Nood
	["wine", 307, 192, 405, 4, 4,
		[
			["peach",1],
			["apple",1],
			["grapes",1],
			["oliveoil",1]
		]
	],
	
	["oliveoil", 452, 243, 581, 4, 4,
		[
			["peach",1],
			["apple",1],
			["grapes",1],
			["wine",1]
		]
	],
	
	["grapes", 69, 28, 127, 4, 4,
		[
			["peach",1],
			["wine",1],
			["apple",1],
			["oliveoil",1]
		]
	],
	
	["apple", 64, 23, 105, 4, 4,
		[
			["peach",1],
			["wine",1],
			["grapes",1],
			["oliveoil",1]
		]
	],

	["peach", 64, 23, 105, 4, 4,
		[
			["apple",1],
			["wine",1],
			["grapes",1],
			["oliveoil",1]
		]
	],
	
	// GROUP 2 Legal Good
	["oilp", 1853, 1300, 2367, 4, 2,
		[
			["diamondc",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["flour",1],
			["cigarettes",1],
			["beer",1],
			["whiskey",1],
			["uranium",1]
		]
	],
	
	["whiskey", 503, 309, 718, 4, 2,
		[
			["diamondc",1],
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["cigarettes",1],
			["flour",1],
			["beer",1],
			["uranium",1]
		]
	],
	
	["iron_r", 1315, 950, 1694, 4, 4,  
		[ 
			["diamondc",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["flour",1],
			["beer",1],
			["whiskey",1],
			["cigarettes",1],
			["uranium",1]
		] 
	],
	
	["cigarettes", 920, 740, 1210, 4, 4,
		[
			["diamondc",1],
			["copper_r",1],
			["iron_r",1],
			["salt_r",1],
			["cement",1],
			["flour",1],
			["beer",1],
			["whiskey",1],
			["uranium",1]
		]
	],
	
	["beer", 403, 237, 615, 4, 4,  
		[ 
			["diamondc",1],
			["copper_r",1],
			["iron_r",1],
			["salt_r",1],
			["cement",1],
			["cigarettes",1],
			["flour",1],
			["whiskey",1],
			["uranium",1]
		] 
	],
	
	["diamondc", 2145, 1827, 2430, 4, 2, 
		[ 
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["flour",1],
			["beer",1],
			["cigarettes",1],
			["whiskey",1],
			["uranium",1]
		] 
	],
	
	["copper_r", 1051, 638, 1202, 4, 4,
		[ 
			["diamondc",1],
			["iron_r",1],
			["salt_r",1],
			["beer",1],
			["whiskey",1],
			["cigarettes",1],
			["cement",1],
			["flour",1],
			["uranium",1]
		] 
	],
	
	["salt_r", 1505, 1032, 1804, 4, 3,
		[ 
			["diamondc",1],
			["iron_r",1],
			["copper_r",1],
			["cement",1],
			["cigarettes",1],
			["flour",1],
			["beer",1],
			["whiskey",1],
			["uranium",1]
		] 
	],
	
	["flour", 350, 280, 405, 4, 3,
		[ 			
			["diamondc",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["cigarettes",1],
			["beer",1],
			["whiskey",1],
			["uranium",1]
		] 
	],
	
	["cement", 1637, 761, 2302, 4, 3,
		[ 
			["diamondc",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cigarettes",1],
			["flour",1],
			["beer",1],
			["whiskey",1],
			["uranium",1]
		] 
	],
	
	["uranium", 12000, 10000, 15000, 4, 4,   
		[ 
			["diamondc",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["cigarettes",1],
			["beer",1],
			["whiskey",1],
			["flour",1]
		] 
	],

	// GROUP 3 Illegal goods
	["moonshine", 1983, 1307, 2501, 4, 4,  
		[ 
			["turtle",1],
			["marijuana",1], 
			["cocainep",1],
			["uraniumb",1],
			["meth55",1],
			["cigar",1],
			["meth60",1],
			["meth75",1],
			["meth85",1],
			["meth97",1],
			["heroinp",1]
		] 
	],
	
	["cigar", 2052, 1131, 2358, 4, 4,  
		[ 
			["turtle",1],
			["marijuana",1], 
			["cocainep",1],
			["uraniumb",1],
			["moonshine",1],
			["meth55",1],
			["meth60",1],
			["meth75",1],
			["meth85",1],
			["meth97",1],
			["heroinp",1]
		] 
	],

	["marijuana", 2258, 1850, 3107, 4, 4,   
		[ 
			["turtle",1],
			["cocainep",1],
			["meth55",1],
			["meth60",1],
			["meth75",1],
			["cigar",1],
			["meth85",1],
			["meth97",1],
			["uraniumb",1],
			["heroinp",1],
			["moonshine",1]
		] 
	],
	
	["turtle", 3550, 2118, 4189, 4, 4,   
		[ 
			["marijuana",1],
			["cocainep",1],
			["meth55",1],
			["meth60",1],
			["meth75",1],
			["cigar",1],
			["meth85",1],
			["meth97",1],
			["uraniumb",1],
			["heroinp",1],
			["moonshine",1]
		] 
	],
	
	["cocainep", 4000, 3201, 5250, 4, 4,   
		[ 
			["turtle",1],
			["marijuana",1],
			["meth55",1],
			["cigar",1],
			["meth60",1],
			["meth75",1],
			["meth85",1],
			["meth97",1],
			["uraniumb",1],
			["heroinp",1],
			["moonshine",1]
		] 
	],
	
	["heroinp", 3000, 2207, 4023, 4, 4,   
		[ 			
			["turtle",1],
			["meth55",1],
			["meth60",1],
			["meth75",1],
			["cigar",1],
			["meth85",1],
			["meth97",1],
			["marijuana",1], 
			["cocainep",1],
			["uraniumb",1],
			["moonshine",1]
		]
	],
	
	["meth55", 8900, 8300, 9500, 4, 4,   
		[ 			
			["turtle",1],
			["meth60",1],
			["meth75",1],
			["meth85",1],
			["cigar",1],
			["meth97",1],
			["marijuana",1], 
			["cocainep",1],
			["uraniumb",1],
			["heroinep",1],
			["moonshine",1]
		]
	],
	
	["meth60", 9500, 8800, 10300, 4, 4,   
		[ 			
			["turtle",1],
			["meth55",1],
			["meth75",1],
			["meth85",1],
			["meth97",1],
			["cigar",1],
			["marijuana",1], 
			["cocainep",1],
			["uraniumb",1],
			["heroinep",1],
			["moonshine",1]
		]
	],
	
	["meth75", 10950, 9700, 11500, 4, 4,   
		[ 			
			["turtle",1],
			["marijuana",1], 
			["meth55",1],
			["meth60",1],
			["meth85",1],
			["meth97",1],
			["cocainep",1],
			["uraniumb",1],
			["cigar",1],
			["heroinep",1],
			["moonshine",1]
		]
	],
	
	["meth85", 13500, 12000, 14400, 4, 4,   
		[ 			
			["turtle",1],
			["marijuana",1], 
			["cocainep",1],
			["meth55",1],
			["meth60",1],
			["meth75",1],
			["cigar",1],
			["meth97",1],
			["uraniumb",1],
			["heroinep",1],
			["moonshine",1]
		]
	],
	
	["meth97", 14900, 14100, 15600, 4, 4,   
		[ 			
			["turtle",1],
			["marijuana",1], 
			["cocainep",1],
			["meth55",1],
			["meth60",1],
			["meth75",1],
			["meth85",1],
			["cigar",1],
			["uraniumb",1],
			["heroinep",1],
			["moonshine",1]
		]
	],
	
	["uraniumb", 20000, 17000, 22000, 4, 4,   
		[ 
			["turtle",1],
			["marijuana",1], 
			["cocainep",1],
			["meth55",1],
			["meth60",1],
			["meth75",1],
			["cigar",1],
			["meth85",1],
			["meth97",1],
			["heroinp",1],
			["moonshine",1]
		] 
	]
];
publicVariable "life_market_resources";

////////////GENERATED CONFIG
//life_market_changes = []; //[SHORTNAME,SELL,BUY]
life_market_shortnames = []; //shortnames if in market
//life_market_clampprices = []; //[SHORTNAME,MIN,MAX]

{
	life_market_shortnames set [count life_market_shortnames, _x select 0];
	//life_market_clampprices set [count life_market_clampprices, [_x select 0, _x select 2, _x select 3] ];
	//life_market_changes set [count life_market_changes, [_x select 0, _x select 4, _x select 5] ];
}
foreach life_market_resources;

publicVariable "life_market_shortnames";
//publicVariable "life_market_clampprices";

//SYNC PRICES WITH SERVER IF EMPTY
if(isNil("life_market_prices")) then
{
	life_market_prices = []; //[SHORTNAME,CURRENTPRICE,DIRECTIONGLOBAL,DIRECTIONLOCAL]
	{
	
		life_market_prices set [count life_market_prices, [_x select 0, _x select 1, 0, 0] ];
	}
	foreach life_market_resources;
	
	publicVariable "life_market_prices";
	
	systemChat "Market Prices Generated!";
};
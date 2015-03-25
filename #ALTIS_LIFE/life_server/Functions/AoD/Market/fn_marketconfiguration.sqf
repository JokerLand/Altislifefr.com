/*

	Main configuration for non-persistent market system
	Will need triggers to hook into vanilla pricing methods
	Edited by: Lukas "Alduin86"

*/

////////////MAIN CONFIG

private["_queryResult","_query","_item","_itemprice","_oilpPrice","_iron_rPrice","_diamondcPrice","_copper_rPrice","_salt_rPrice","_glassPrice","_cementPrice","_turtlePrice","_marijuanaPrice","_methpPrice","_cocainepPrice","_heroinpPrice","_goldbarPrice","_goldbarpPrice","_lsdPrice","_brotPrice","_cokesPrice","_silberpPrice","_uraniumppPrice","_uraniumpplPrice","_bottledshinePrice","_bottledwhiskeyPrice","_bottledbeerPrice","_artefactPrice","_moonshinePrice","_vodkaPrice","_methpProce","_uraniumPrice","_fuelFPrice"];


_query = format["SELECT resource, price FROM resources"];
waitUntil{sleep (random 0.3); !DB_Async_Active};
_queryResult = [_query,2,true] call DB_fnc_asyncCall;
_rows = call compile format["%1",_queryResult]; //compile data
diag_log "------------- Market Query Request -------------";
diag_log format["Query: %1",_query];
diag_log format["Result: %1",_rows];
diag_log "------------------------------------------------";

//* _rows should look like this now: [["oilp","1000"],["diamond","2000"]];

{
	_item = (_x select 0); //on the first run = "oilp", second run = "diamond")
	_itemprice = (_x select 1); //on the first run = "1000", second run = "2000") //* Note: _price is a STRING now! 
	
	//diag_log format["%1-price %2 generated",_item,_itemprice];	
	if(_item == "oilp") then {_oilpPrice = _itemprice}; // The right price should be assigned
	if(_item == "iron_r") then {_iron_rPrice = _itemprice}; // The right price should be assigned
	if(_item == "diamondc") then {_diamondcPrice = _itemprice}; // The right price should be assigned
	if(_item == "copper_r") then {_copper_rPrice = _itemprice}; // The right price should be assigned
	if(_item == "salt_r") then {_salt_rPrice = _itemprice}; // The right price should be assigned
	if(_item == "glass") then {_glassPrice = _itemprice}; // The right price should be assigned
	if(_item == "cement") then {_cementPrice = _itemprice}; // The right price should be assigned
	if(_item == "turtle") then {_turtlePrice = _itemprice}; // The right price should be assigned
	if(_item == "marijuana") then {_marijuanaPrice = _itemprice}; // The right price should be assigned
	if(_item == "cocainep") then {_cocainepPrice = _itemprice}; // The right price should be assigned
	if(_item == "heroinp") then {_heroinpPrice = _itemprice}; // The right price should be assigned
    if(_item == "cokes") then {_cokesPrice = _itemprice}; // The right price should be assigned
    if(_item == "artefact") then {_artefactPrice = _itemprice};
    if(_item == "moonshine") then {_moonshinePrice = _itemprice};
    if(_item == "vodka") then {_vodkaPrice = _itemprice};
    if(_item == "methp") then {_methpPrice = _itemprice};
    if(_item == "uranium") then {_uraniumPrice = _itemprice};
    if(_item == "fuelF") then { _fuelFPrice = _itemprice};

	
} forEach _rows;


life_market_resources = [

	//Schema: SHORTNAME, DEFAULT-VALEUR, MIN-VALEUR, MAX-VALEUR,CHANGEMENTS EN ACTION [VENTE Multiplier par 1, Achat multiplié par -1
    
    //ressource basique
    
	
    //1
    
    ["artefact", _artefactPrice, 5000,  25000, 3, 1,
     [
          ["turtle",1],
            ["iron_r",1],
            ["copper",1],
            ["moonshine",1],
            ["vodka",1],
            ["fuelF",1],
            ["marijuana",1],
            ["oilp",1]
     ]
    ],
	
    ["turtle", _turtlePrice, 4000, 8000, 20, 18,  
		[ 
             ["moonshine",1],
            ["iron_r",1],
            ["copper",1],
            ["artefact",1],
            ["vodka",1],
            ["marijuana",1],
            ["fuelF",1],
            ["oilp",1]
		] 
	],
    
    
    ["oilp", _oilpPrice, 1250, 2000, 3, 1, 
		[ 
            ["turtle",1],
            ["iron_r",1],
            ["copper",1],
            ["artefact",1],
            ["vodka",1],
            ["marijuana",1],
            ["fuelF",1],
            ["moonshine",1] 
		] 
	],
	["iron_r", _iron_rPrice, 1050, 2250, 3, 1,  
		[ 
			["diamondc",1], 
			["oilp",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
            ["marijuana",1],
            ["fuelF",1],
			["glass",1] 
		] 
	],
	
	
	["copper_r", _copper_rPrice, 600, 1500, 2, 1, 
		[ 
            ["turtle",1],
            ["iron_r",1],
            ["moonshine",1],
            ["artefact",1],
            ["vodka",1],
            ["marijuana",1],
            ["fuelF",1],
            ["oilp",1]
		] 
	],
  
    
    ["moonshine", _moonshinePrice, 1000, 6000, 1, 2,
        [
            ["turtle",1],
            ["iron_r",1],
            ["copper",1],
            ["artefact",1],
            ["vodka",1],
            ["marijuana",1],
            ["fuelF",1],
            ["oilp",1]
        ]
    ],
    
    ["marijuana", _marijuanaPrice, 1100, 2800, 7, 5,   
		[ 
			 ["turtle",1],
            ["iron_r",1],
            ["copper",1],
            ["artefact",1],
            ["vodka",1],
            ["oilp",1],
            ["marijuana",1],
            ["moonshine",1]
            
		] 
	],
    
    ["fuelF", _fuelFPrice, 250, 1000,
         [
            ["turtle",1],
            ["iron_r",1],
            ["copper",1],
            ["artefact",1],
            ["vodka",1],
            ["oilp",1],
            ["moonshine",1],
            ["marijuana",1]
        ]
    ],
    
    //2
	
	["glass", _glassPrice, 800, 1400, 2, 1, 
		[ 
			["salt_r", 1],
            ["cement",1],
            ["heroinp",1],
            ["cocainep",1]
		] 
	],
	["cement", _cementPrice, 1000, 2000, 2, 1, 
		[ 
			["salt_r", 1],
            ["cement",1],
            ["heroinp",1],
            ["cocainep",1]
		] 
	],
                    
                    
      ["salt_r", _salt_rPrice, 600, 1050, 2, 1, 
		[ 
			["glass", 1],
            ["cement",1],
            ["heroinp",1],
            ["cocainep",1]
		] 
	],
                    
     ["cocainep", _cocainepPrice, 2000, 4300, 11, 8,   
		[ 
			["glass", 1],
            ["cement",1],
            ["heroinp",1],
            ["salt_r",1]
		] 
	],
	["heroinp", _heroinpPrice, 1600, 2400, 11, 8,   
		[ 
			["glass", 1],
            ["cement",1],
            ["salt_r",1],
            ["cocainep",1]
		] 
	],
    
    
                    
                    
                    

	///////////////////////////////////
	
	 //3
    
            
	["methp", _methpPrice, 4000,  15000, 5,2,
        [
            ["diamondc",1],
            ["uranium",1]
        ]
    ],

    ["uranium",  _uraniumPrice, 18500, 32000, 5, 2, 
        [
            ["diamondc",1],
            ["methp",1]
        ]
    ],
	
    
    
    ["diamondc", _diamondcPrice, 2000, 3000, 5, 2, 
		[ 
			["uranium",1],
            ["methp",1] 
		] 
	]
];

publicVariable "life_market_resources";

diag_log "------------- Life Market Resources -------------";
diag_log format["Result: %1",life_market_resources];
diag_log "------------------------------------------------";

life_market_shortnames = [];

{
	life_market_shortnames set [count life_market_shortnames, _x select 0];
}
foreach life_market_resources;

publicVariable "life_market_shortnames";

life_market_prices = [];
{
	life_market_prices set [count life_market_prices, [_x select 0, _x select 1, 0, 0] ];
}
foreach life_market_resources;
	
publicVariable "life_market_prices";

systemChat "Market Prices Generated!";
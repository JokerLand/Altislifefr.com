class CfgGather {
    zoneSize = 30;
    class Resources {
        class cacao {
            amount = 5;
            zones[] = { "cacao_1", "cacao_2", "cacao_3", "cacao_4" };
            item = "";
        };

        class banane {
            amount = 5;
            zones[] = { "banane_1", "banane_2", "banane_3", "banane_4" };
            item = "";
        };
        
        class corail {
            amount = 3;
            zones[] = { "corail_1" };
            item = "";
        };
        
        class algue {
            amount = 6;
            zones[] = { "algue_1" };
            item = "";
        };

        class heroin_unprocessed {
            amount = 3;
            zones[] = { "heroin_1" };
            item = "";
        };

        class cocaine_unprocessed {
            amount = 3;
            zones[] = { "cocaine_1" };
            item = "";
        };

        class cannabis {
            amount = 3;
            zones[] = { "weed_1" };
            item = "";
        };
        
        class tabacunprocessed {
            amount = 2;
            zones[] = { "tabac_1" };
            item = "";
        };
        
        class sugarcaneunprocessed {
            amount = 2;
            zones[] = { "sugarcane_1" };
            item = "";
        };
        
        class girolle {
            amount = 5;
            zones[] = { "champignon_1" };
            item = "";
            mined[] = { {"truffe",0,20},{"girolle",20,95},{"champignon_halu",95,100} };
    };
        
        class algueunprocessed {
            amount = 3;
            zones[] = { "algue_1" };
            item = "";
        };
    };

/*
This block can be set using percent,if you want players to mine only one resource ,just leave it as it is.
Example:
        class copper_unrefined
    {
            amount = 2;
        zones[] = { "copper_mine" };
        item = "pickaxe";
        mined[] = { "copper_unrefined" };
This will make players mine only copper_unrefined
Now let's go deeper
Example 2:
        class copper_unrefined
    {
            amount = 2;
        zones[] = { "copper_mine" };
        item = "pickaxe";
        mined[] = { {"copper_unrefined",0,25},{"iron_unrefined",25,95},{"diamond_uncut",95,100} };
    };
    This will give :
    25(±1)% to copper_unrefined;
    70(±1)% to iron_unrefined;
    5%(±1)% to diamond_uncut;

                                                         ! Watch Out !
 If percents are used,you MUST put more than 1 resource in the mined parameter
 mined[] = { {"copper_unrefined",0,25} }; NOT OK (But the script will work)
 mined[] = { {"copper_unrefined",0,45 },{"iron_unrefined",45} };  NOT OK (The script won't work )
 mined[] = { {"copper_unrefined",0,45},{"copper_unrefined",80,100} }; NOT OK
 mined[] = { "copper_unrefined" }; OK
 mined[] = { {"copper_unrefined",0,35} , { "iron_unrefined" ,35,100 } }; OK
*/

    class Minerals {
        class copper_unrefined {
            amount = 2;
            zones[] = { "copper_mine" };
            item = "pickaxe";
            mined[] = {"copper_unrefined"};
        };

        class iron_unrefined {
            amount = 2;
            zones[] = { "iron_mine" };
            item = "pickaxe";
            mined[] = { "iron_unrefined" };
        };

        class salt_unrefined {
            amount = 2;
            zones[] = { "salt_mine" };
            item = "pickaxe";
            mined[] = { "salt_unrefined" };
        };

        class sand {
            amount = 2;
            zones[] = { "sand_mine" };
            item = "pickaxe";
            mined[] = { "sand" };
        };

        class diamond_uncut {
            amount = 2;
            zones[] = { "diamond_mine" };
            item = "pickaxe";
            mined[] = { "diamond_uncut" };
        };

        class rock {
            amount = 2;
            zones[] = { "rock_quarry" };
            item = "pickaxe";
            mined[] = { "rock" };
        };

        class oil_unprocessed {
            amount = 2;
            zones[] = { "oil_field_1", "oil_field_2" };
            item = "pickaxe";
            mined[] = { "oil_unprocessed" };
        };
    };
};
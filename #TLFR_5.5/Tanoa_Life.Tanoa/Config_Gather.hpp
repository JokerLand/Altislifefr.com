class CfgGather {
    zoneSize = 30;
    class Resources {
        class cacao {
            amount = 150;
            zones[] = { "cacao_1", "cacao_2", "cacao_3", "cacao_4", "cacao_5" };
            item = "";
        };

        class noixcoco {
            amount = 150;
            zones[] = { "noixcoco_1", "noixcoco_2", "noixcoco_3", "noixcoco_4", "noixcoco_5" };
            item = "";
        };

        class banane {
            amount = 150;
            zones[] = { "banane_1", "banane_2", "banane_3", "banane_4" };
            item = "";
        };

        class corail {
            amount = 150;
            zones[] = { "corail_1" };
            item = "";
        };

        class algueu {
            amount = 150;
            zones[] = { "algue_1" };
            item = "";
        };

        class maisu {
            amount = 150;
            zones[] = { "mais_1" };
            item = "";
        };

        class ephedrine {
            amount = 150;
            zones[] = { "ephedrine_1" };
            item = "";
        };

        class heroin_unprocessed {
            amount = 150;
            zones[] = { "heroin_1" };
            item = "";
        };

        class cocaine_unprocessed {
            amount = 150;
            zones[] = { "cocaine_1" };
            item = "";
        };

        class cannabis {
            amount = 150;
            zones[] = { "weed_1" };
            item = "";
        };

        class sugarcaneunprocessed {
            amount = 150;
            zones[] = { "sugarcane_1" };
            item = "";
        };

        class sand {
            amount = 150;
            zones[] = { "sand_mine" };
            item = "pickaxe";
        };

        class pierrevolcaniqueu {
            amount = 150;
            zones[] = { "pierrevolcanique_1", "pierrevolcanique_2" };
            item = "pickaxe";
        };

        class souffreu {
            amount = 150;
            zones[] = { "souffre_1", "souffre_2" };
            item = "pickaxe";
        };

        class boisu {
            amount = 150;
            zones[] = { "bois_1", "bois_2" };
            item = "axe";
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
        class emeraudeusaphiru {
            amount = 4;
            zones[] = { "emeraudeusaphiru_1" };
            item = "pickaxe";
            mined[] = { {"emeraudeu",0,10},{"saphiru",10,100} };
        };
    };
};
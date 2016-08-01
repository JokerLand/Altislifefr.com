/*
*   class:
*       MaterialsReq (Needed to process) = Array - Format -> {{"ITEM CLASS",HOWMANY}}
*       MaterialsGive (Returned items) = Array - Format -> {{"ITEM CLASS",HOWMANY}}
*       Text (Progess Bar Text) = Localised String
*       NoLicenseCost (Cost to process w/o license) = Scalar
*
*   Example for multiprocess:
*
*   class Example {
*       MaterialsReq[] = {{"cocaine_processed",1},{"heroin_processed",1}};
*       MaterialsGive[] = {{"diamond_cut",1}};
*       Text = "STR_Process_Example";
*       //ScrollText = "Process Example";
*       NoLicenseCost = 4000;
*   };
*/

class ProcessAction {
    class ble {
        MaterialsReq[] = {{"ble_unprocessed",1}};
        MaterialsGive[] = {{"ble_processed",1}};
        Text = "STR_Process_Ble";
        //ScrollText = "Moudre du blé";
        NoLicenseCost = 1000;
    };
        
    class oil {
        MaterialsReq[] = {{"oil_unprocessed",1}};
        MaterialsGive[] = {{"oil_processed",1}};
        Text = "STR_Process_Oil";
        //ScrollText = "Process Oil";
        NoLicenseCost = 1200;
    };

    class diamond {
        MaterialsReq[] = {{"diamond_uncut",1}};
        MaterialsGive[] = {{"diamond_cut",1}};
        Text = "STR_Process_Diamond";
        //ScrollText = "Cut Diamonds";
        NoLicenseCost = 1350;
    };

    class heroin {
        MaterialsReq[] = {{"heroin_unprocessed",1}};
        MaterialsGive[] = {{"heroin_processed",1}};
        Text = "STR_Process_Heroin";
        //ScrollText = "Process Heroin";
        NoLicenseCost = 1750;
    };

    class copper {
        MaterialsReq[] = {{"copper_unrefined",1}};
        MaterialsGive[] = {{"copper_refined",1}};
        Text = "STR_Process_Copper";
        //ScrollText = "Refine Copper";
        NoLicenseCost = 750;
    };

    class iron {
        MaterialsReq[] = {{"iron_unrefined",1}};
        MaterialsGive[] = {{"iron_refined",1}};
        Text = "STR_Process_Iron";
        //ScrollText = "Refine Iron";
        NoLicenseCost = 1120;
    };

    class sand {
        MaterialsReq[] = {{"sand",1}};
        MaterialsGive[] = {{"glass",1}};
        Text = "STR_Process_Sand";
        //ScrollText = "Melt Sand into Glass";
        NoLicenseCost = 650;
    };

    class salt {
        MaterialsReq[] = {{"salt_unrefined",1}};
        MaterialsGive[] = {{"salt_refined",1}};
        Text = "STR_Process_Salt";
        //ScrollText = "Refine Salt";
        NoLicenseCost = 450;
    };

    class cocaine {
        MaterialsReq[] = {{"cocaine_unprocessed",1}};
        MaterialsGive[] = {{"cocaine_processed",1}};
        Text = "STR_Process_Cocaine";
        //ScrollText = "Process Cocaine";
        NoLicenseCost = 1500;
    };

    class marijuana {
        MaterialsReq[] = {{"cannabis",1}};
        MaterialsGive[] = {{"marijuana",1}};
        Text = "STR_Process_Marijuana";
        ScrollText = "Harvest Marijuana";
        NoLicenseCost = 500;
    };

    class cement {
        MaterialsReq[] = {{"rock",1}};
        MaterialsGive[] = {{"cement",1}};
        Text = "STR_Process_Cement";
        //ScrollText = "Mix Cement";
        NoLicenseCost = 350;
    };
    
    class girolle {
        MaterialsReq[] = {{"girolle",1}};
        MaterialsGive[] = {{"soup_girolle",1}};
        Text = "STR_Process_Girolle";
        //ScrollText = "Mix Cement";
        NoLicenseCost = 500;
    };
    
    class algue {
        MaterialsReq[] = {{"algueunprocessed",1}};
        MaterialsGive[] = {{"algalithe",1}};
        Text = "STR_Process_Algue";
        //ScrollText = "Mix Cement";
        NoLicenseCost = 750;
    };
    
    class tabaccigarette {
        MaterialsReq[] = {{"tabacunprocessed",1}};
        MaterialsGive[] = {{"cigarette",1}};
        Text = "STR_Process_Cigarette";
        //ScrollText = "Mix Cement";
        NoLicenseCost = 1500;
    };
    
    class tabaccigare {
        MaterialsReq[] = {{"tabacunprocessed",1}};
        MaterialsGive[] = {{"cigare",1}};
        Text = "STR_Process_Cigare";
        //ScrollText = "Mix Cement";
        NoLicenseCost = 1500;
    };
    
    class joint {
        MaterialsReq[] = {{"tabacunprocessed",1},{"marijuana",1}};
        MaterialsGive[] = {{"joint",1}};
        Text = "STR_Process_Joint";
        //ScrollText = "Mix Cement";
        NoLicenseCost = 1500;
    };
    
    class try {
        MaterialsReq[] = {{"cocaine_unprocessed",1},{"heroin_unprocessed",1}};
        MaterialsGive[] = {{"joint",1}};
        Text = "STR_Process_Joint";
        //ScrollText = "Mix Cement";
        NoLicenseCost = 1500;
    };
    
    class meth {
        MaterialsReq[] = {{"phosphore_rouge",1},{"ephedrine",1},{"iode",1}};
        MaterialsGive[] = {{"meth",1}};
        Text = "STR_Process_Meth";
        //ScrollText = "Mix Cement";
        NoLicenseCost = 4000;
    };
};

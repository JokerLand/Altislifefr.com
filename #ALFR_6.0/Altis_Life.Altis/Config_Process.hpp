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
    class petrole {
        MaterialsReq[] = {{"petroleu",1}};
        MaterialsGive[] = {{"fuelFull",1}};
        Text = "STR_Process_Oil";
        //ScrollText = "Process Oil";
        NoLicenseCost = 1500;
    };

    class mais {
        MaterialsReq[] = {{"maisu",1}};
        MaterialsGive[] = {{"maisp",1}};
        Text = "STR_Process_Mais";
        ScrollText = "test mais défilant";
        NoLicenseCost = 1350;
    };
    
    class algue {
        MaterialsReq[] = {{"algueu",1}};
        MaterialsGive[] = {{"alguep",1}};
        Text = "STR_Process_Algue";
        //ScrollText = "Cut Diamonds";
        NoLicenseCost = 1350;
    };
    
    class emeraude {
        MaterialsReq[] = {{"emeraudeu",1}};
        MaterialsGive[] = {{"emeraudep",1}};
        Text = "STR_Process_Emeraude";
        //ScrollText = "Cut Diamonds";
        NoLicenseCost = 1350;
    };
    
    class saphir {
        MaterialsReq[] = {{"saphiru",1}};
        MaterialsGive[] = {{"saphirp",1}};
        Text = "STR_Process_Saphir";
        //ScrollText = "Cut Diamonds";
        NoLicenseCost = 1350;
    };
    
    class pierrevolcanique {
        MaterialsReq[] = {{"pierrevolcaniqueu",1}};
        MaterialsGive[] = {{"pierrevolcaniquep",1}};
        Text = "STR_Process_Pierrevolcanique";
        //ScrollText = "Cut Diamonds";
        NoLicenseCost = 1350;
    };
    
    class souffre {
        MaterialsReq[] = {{"souffreu",1}};
        MaterialsGive[] = {{"souffrep",1}};
        Text = "STR_Process_Souffre";
        //ScrollText = "Cut Diamonds";
        NoLicenseCost = 1350;
    };
    
    class bois {
        MaterialsReq[] = {{"boisu",1}};
        MaterialsGive[] = {{"boisp",1}};
        Text = "STR_Process_Bois";
        //ScrollText = "Cut Diamonds";
        NoLicenseCost = 1350;
    };

    class sand {
        MaterialsReq[] = {{"sand",1}};
        MaterialsGive[] = {{"glass",1}};
        Text = "STR_Process_Sand";
        //ScrollText = "Melt Sand into Glass";
        NoLicenseCost = 650;
    };

    class sugarcane {
        MaterialsReq[] = {{"sugarcaneunprocessed",1}};
        MaterialsGive[] = {{"sugarcaneprocessed",1}};
        Text = "STR_Process_Sugarcane";
        //ScrollText = "Mix Cement";
        NoLicenseCost = 500;
    };
    
    class meth {
        MaterialsReq[] = {{"phosphore_rouge",1},{"ephedrine",1},{"iode",1}};
        MaterialsGive[] = {{"meth",1}};
        Text = "STR_Process_Meth";
        //ScrollText = "Mix Cement";
        NoLicenseCost = 4000;
    };
};

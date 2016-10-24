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
    class copper {
        MaterialsReq[] = {{"copper_u",1}};
        MaterialsGive[] = {{"copper_p",1}};
        Text = "STR_Process_Copper";
        NoLicenseCost = 1500;
    };
    
    class iron {
        MaterialsReq[] = {{"iron_u",1}};
        MaterialsGive[] = {{"iron_p",1}};
        Text = "STR_Process_Iron";
        NoLicenseCost = 1500;
    };
    
    class petrole {
        MaterialsReq[] = {{"petroleu",1}};
        MaterialsGive[] = {{"fuelFull",1}};
        Text = "STR_Process_Oil";
        NoLicenseCost = 1500;
    };

    class mais {
        MaterialsReq[] = {{"maisu",1}};
        MaterialsGive[] = {{"maisp",1}};
        Text = "STR_Process_Mais";
        NoLicenseCost = 1350;
    };
    
    class algue {
        MaterialsReq[] = {{"algueu",1}};
        MaterialsGive[] = {{"alguep",1}};
        Text = "STR_Process_Algue";
        NoLicenseCost = 1350;
    };
    
    class pierrevolcanique {
        MaterialsReq[] = {{"pierrevolcaniqueu",1}};
        MaterialsGive[] = {{"pierrevolcaniquep",1}};
        Text = "STR_Process_Pierrevolcanique";
        NoLicenseCost = 1350;
    };
    
    class souffre {
        MaterialsReq[] = {{"souffreu",1}};
        MaterialsGive[] = {{"souffrep",1}};
        Text = "STR_Process_Souffre";
        NoLicenseCost = 1350;
    };
    
    class bois {
        MaterialsReq[] = {{"boisu",1}};
        MaterialsGive[] = {{"boisp",1}};
        Text = "STR_Process_Bois";
        NoLicenseCost = 1350;
    };

    class sand {
        MaterialsReq[] = {{"sand",1}};
        MaterialsGive[] = {{"glass",1}};
        Text = "STR_Process_Sand";
        NoLicenseCost = 650;
    };

    class sugarcane {
        MaterialsReq[] = {{"sugarcaneunprocessed",1}};
        MaterialsGive[] = {{"sugarcaneprocessed",1}};
        Text = "STR_Process_Sugarcane";
        NoLicenseCost = 500;
    };
    
    class meth {
        MaterialsReq[] = {{"phosphore_rouge",1},{"ephedrine",1},{"iode",1}};
        MaterialsGive[] = {{"meth",1}};
        Text = "STR_Process_Meth";
        NoLicenseCost = 4000;
    };
};

/*
*    Format:
*        licenses: ARRAY (This is for limiting spawn to certain things)
*           0: License Name
*           1: License Check Type
*                false: If license isn't set
*                true: If license is set
*           Example:
*                licenses[] = { { "pilot", true }, { "rebel", false } }; //Shows up for players with pilot and without rebel license.
*
*        level: ARRAY (This is for limiting spawn to certain things)
*            0: Variable to read from
*            1: Variable Value Type (SCALAR / BOOL / EQUAL / INVERSE)
*                SCALAR: VALUE => VALUE
*                BOOL: VALUE EXISTS
*                EQUAL: VALUE == VALUE
*                INVERSE: VALUE <= VALUE
*            2: What to compare to (-1 = Check Disabled)
*
*/
class CfgSpawnPoints {
    class Civilian {
        class Kavala {
            displayName = "Kavala";
            spawnMarker = "civ_spawn_1";
            icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
            licenses[] = { { "", true } };
            level[] = { "", "", -1 };
        };
        
        class Athira {
            displayName = "Athira";
            spawnMarker = "civ_spawn_2";
            icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
            licenses[] = { { "", true } };
            level[] = { "", "", -1 };
        };
        
        class Pyrgos {
            displayName = "Pyrgos";
            spawnMarker = "civ_spawn_3";
            icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
            licenses[] = { { "", true } };
            level[] = { "", "", -1 };
        };
        
        class Sofia {
            displayName = "Sofia";
            spawnMarker = "civ_spawn_4";
            icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
            licenses[] = { { "", true } };
            level[] = { "", "", -1 };
        };
        
        class Rebel {
            displayName = "Base Rebelle";
            spawnMarker = "reb_spawn_1";
            icon = "\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa";
            licenses[] = { { "rebel", true } };
            level[] = { "", "", -1 };
        };
        
        class aan {
            displayName = "QG AAN";
            spawnMarker = "aan_spawn";
            icon = "\plp_markers\icons\plp_mark_as_building.pac";
            licenses[] = { { "aan", true } };
            level[] = { "", "", -1 };
        };
        
        class staff {
            displayName = "Maison Du Staff";
            spawnMarker = "staff_spawn";
            icon = "\plp_markers\icons\plp_mark_as_building.pac";
            licenses[] = { { "staff", true } };
            level[] = { "", "", -1 };
        };
    };

    class Cop {
        class Kavala {
            displayName = "Kavala";
            spawnMarker = "police_hq_1";
            icon = "\a3\ui_f\data\map\Markers\NATO\b_air.paa";
            licenses[] = { { "", true } };
            level[] = { "", "", -1 };
        };
        
        class Athira {
            displayName = "Athira";
            spawnMarker = "police_hq_2";
            icon = "\a3\ui_f\data\map\Markers\NATO\b_air.paa";
            licenses[] = { { "", true } };
            level[] = { "", "", -1 };
        };
        
        class Athira {
            displayName = "Athira";
            spawnMarker = "police_hq_3";
            icon = "\a3\ui_f\data\map\Markers\NATO\b_air.paa";
            licenses[] = { { "", true } };
            level[] = { "", "", -1 };
        };
    };

    class Medic {
        class Kavala {
            displayName = "Hôpital Georgetown";
            spawnMarker = "medic_spawn_1";
            icon = "\a3\ui_f\data\map\MapControl\hospital_ca.paa";
            licenses[] = { { "", true } };
            level[] = { "", "", -1 };
        };
    };
};

/**
 * English and French comments
 * Commentaires anglais et français
 *
 * This file is a template to add objetcs from an addon in the configuration variables of the logistics system.
 * Make a copy of this file and fill it. Then add a #include to this file in the file R3F_LOG\config.sqf.
 *
 * IMPORTANT NOTE : when a logistics feature is given to an object/vehicle class name, all the classes which inherit
 *                  of the parent/generic class (according to the CfgVehicles) will also have this feature.
 *                  CfgVehicles tree view example : http://madbull.arma.free.fr/A3_stable_1.20.124746_CfgVehicles_tree.html
 *
 *
 * Ce fichier est un exemple vierge permettant d'ajouter des objets d'un addon dans la configuration du système de logistique.
 * Faites une copie de ce fichier et remplissez-le. Puis ajouter un #include vers celui-ci dans le fichier R3F_LOG\config.sqf.
 *
 * NOTE IMPORTANTE : lorsqu'une fonctionnalité logistique est accordée à un nom de classe d'objet/véhicule, les classes
 *                   héritant de cette classe mère/générique (selon le CfgVehicles) se verront également dotées de cette fonctionnalité.
 *                   Exemple d'arborescence du CfgVehicles : http://madbull.arma.free.fr/A3_stable_1.20.124746_CfgVehicles_tree.html
 */

/**
 * List of class names of ground vehicles which can tow objects.
 * Liste des noms de classes des véhicules terrestres pouvant remorquer des objets.
 */
R3F_LOG_CFG_can_tow = R3F_LOG_CFG_can_tow +
[
           "I_mas_cars_UAZ_Unarmed",
			"I_mas_cars_UAZ_Med",
			"O_mas_cars_UAZ_Unarmed",
			"O_mas_cars_UAZ_Med",
			"B_mas_cars_Hilux_Unarmed",
			"B_mas_cars_Hilux_Med",
			"B_mas_cars_LR_Unarmed",
			"B_mas_cars_LR_Med",
			"B_mas_cars_LR_TOW",
			"I_mas_cars_LR_soft_Unarmed",
			"I_mas_cars_LR_soft_Med",
			"I_mas_cars_LR_soft_TOW",
			"B_mas_HMMWV_UNA",
			"B_mas_HMMWV_MEV",
			"B_mas_HMMWV_UNA_des",
			"B_mas_HMMWV_MEV_des",
			"B_mas_cars_Hilux_MG",
			"B_mas_cars_Hilux_AGS30",
			"I_mas_cars_LR_soft_Stinger",
			"I_mas_cars_LR_soft_SPG9",
			"I_mas_cars_LR_soft_M2",
			"I_mas_cars_LR_soft_Mk19",
			"B_mas_cars_LR_M2",
			"B_mas_cars_LR_Mk19",
			"B_mas_cars_LR_Stinger",
			"B_mas_cars_LR_SPG9",
			"B_mas_HMMWV_M2",
			"B_mas_HMMWV_M2_des",
			"B_mas_cars_Hilux_SPG9",
			"B_mas_cars_Hilux_M2",
			"I_mas_BRDM2",
			"O_mas_BRDM2",
			"I_mas_BTR60",
			"O_mas_BTR60",
			"I_mas_cars_Ural",
			"I_mas_cars_Ural_open",
			"I_mas_cars_Ural_repair",
			"I_mas_cars_Ural_fuel",
			"O_mas_cars_Ural",
			"O_mas_cars_Ural_open",
			"O_mas_cars_Ural_repair",
			"O_mas_cars_Ural_fuel",
            "I_mas_BMP2_AAF_01",
			"I_mas_BMP2_Ambul_01",
            "I_mas_T55_AAF_01",
			"I_mas_T34_AAF_01",
            "O_mas_T55_OPF_01",
			"O_mas_BMP2_Ambul_01",
            "B_mas_HMMWV_SOV_M134",
            "B_mas_HMMWV_M134"
];

/**
 * List of class names of objects which can be towed.
 * Liste des noms de classes des objets remorquables.
 */
R3F_LOG_CFG_can_be_towed = R3F_LOG_CFG_can_be_towed +
[
		"I_mas_cars_UAZ_Unarmed",
		"I_mas_cars_UAZ_Med",
		"O_mas_cars_UAZ_Unarmed",
		"O_mas_cars_UAZ_Med",
		"B_mas_cars_Hilux_Unarmed",
		"B_mas_cars_Hilux_Med",
		"B_mas_cars_LR_Unarmed",
		"B_mas_cars_LR_Med",
		"B_mas_cars_LR_TOW",
		"I_mas_cars_LR_soft_Unarmed",
		"I_mas_cars_LR_soft_Med",
		"I_mas_cars_LR_soft_TOW",
		"B_mas_HMMWV_UNA",
		"B_mas_HMMWV_MEV",
		"B_mas_HMMWV_UNA_des",
		"B_mas_HMMWV_MEV_des",
		"B_mas_cars_Hilux_MG",
		"B_mas_cars_Hilux_AGS30",
		"I_mas_cars_LR_soft_Stinger",
		"I_mas_cars_LR_soft_SPG9",
		"I_mas_cars_LR_soft_M2",
		"I_mas_cars_LR_soft_Mk19",
		"B_mas_cars_LR_M2",
		"B_mas_cars_LR_Mk19",
		"B_mas_cars_LR_Stinger",
		"B_mas_cars_LR_SPG9",
		"B_mas_HMMWV_M2",
		"B_mas_HMMWV_M2_des",
		"B_mas_HMMWV_SOV_M134",
		"B_mas_HMMWV_M134",
		"B_mas_cars_Hilux_SPG9",
		"B_mas_cars_Hilux_RKTS",
		"B_mas_cars_Hilux_M2",
		"I_mas_BRDM2",
		"O_mas_BRDM2",
		"I_mas_BTR60",
		"I_mas_BMP2_AAF_01",
		"O_mas_BTR60",
		"I_mas_cars_Ural",
		"I_mas_cars_Ural_open",
		"I_mas_cars_Ural_repair",
		"I_mas_cars_Ural_fuel",
		"I_mas_cars_Ural_BM21",
		"I_mas_cars_Ural_ZU23",
		"O_mas_cars_Ural",
		"O_mas_cars_Ural_open",
		"O_mas_cars_Ural_repair",
		"O_mas_cars_Ural_fuel",
		"O_mas_cars_Ural_BM21",
		"O_mas_cars_Ural_ZU23",
		"I_mas_BMP2_Ambul_01",
		"O_mas_BMP2_Ambul_01",
		"I_mas_T72_AAF_01",
		"I_mas_T72B_Early_AAF_01",
		"I_mas_T72B_AAF_01",
		"I_mas_T72BM_AAF_01",
		"I_mas_T55_AAF_01",
		"I_mas_T34_AAF_01",
		"I_mas_ZSU_AAF_01",
		"O_mas_T72_OPF_01",
		"O_mas_T72B_Early_OPF_01",
		"O_mas_T72B_OPF_01",
		"O_mas_T72BM_OPF_01",
		"O_mas_ZSU_OPF_01",
		"O_mas_T55_OPF_01"
];


/****** LIFT WITH VEHICLE / HELIPORTER AVEC VEHICULE ******/

/**
 * List of class names of helicopters which can lift objects.
 * Liste des noms de classes des hélicoptères pouvant héliporter des objets.
 */
R3F_LOG_CFG_can_lift = R3F_LOG_CFG_can_lift +
[
	       /* "B_mas_CH_47F",
			"B_mas_UH1Y_F",
			"B_mas_UH1Y_UNA_F",
			"B_mas_UH1Y_MEV_F",
			"B_mas_UH60M",
			"B_mas_UH60M_SF",
			"B_mas_UH60M_MEV",
			"I_mas_MI8",
			"I_mas_MI8MTV",
			"O_mas_MI8",
			"O_mas_MI8MTV",
			"I_mas_MI24V",
			"O_mas_MI24V"*/
];

/**
 * List of class names of objects which can be lifted.
 * Liste des noms de classes des objets héliportables.
 */
R3F_LOG_CFG_can_be_lifted = R3F_LOG_CFG_can_be_lifted +
[
"I_mas_cars_UAZ_Unarmed",
"I_mas_cars_UAZ_Med",
"O_mas_cars_UAZ_Unarmed",
"O_mas_cars_UAZ_Med",
"B_mas_cars_Hilux_Unarmed",
"B_mas_cars_Hilux_Med",
"B_mas_cars_LR_Unarmed",
"B_mas_cars_LR_Med",
"B_mas_cars_LR_TOW",
"I_mas_cars_LR_soft_Unarmed",
"I_mas_cars_LR_soft_Med",
"I_mas_cars_LR_soft_TOW",
"B_mas_HMMWV_UNA",
"B_mas_HMMWV_MEV",
"B_mas_HMMWV_UNA_des",
"B_mas_HMMWV_MEV_des",
"B_mas_cars_Hilux_MG",
"B_mas_cars_Hilux_AGS30",
"I_mas_cars_LR_soft_Stinger",
"I_mas_cars_LR_soft_SPG9",
"I_mas_cars_LR_soft_M2",
"I_mas_cars_LR_soft_Mk19",
"B_mas_cars_LR_M2",
"B_mas_cars_LR_Mk19",
"B_mas_cars_LR_Stinger",
"B_mas_cars_LR_SPG9",
"B_mas_HMMWV_M2",
"B_mas_HMMWV_M2_des",
"B_mas_HMMWV_SOV_M134",
"B_mas_HMMWV_M134",
"B_mas_cars_Hilux_SPG9",
"B_mas_cars_Hilux_RKTS",
"B_mas_cars_Hilux_M2",
"I_mas_BRDM2",
"O_mas_BRDM2",
"I_mas_BTR60",
"I_mas_BMP2_AAF_01",
"O_mas_BTR60",
"I_mas_cars_Ural",
"I_mas_cars_Ural_open",
"I_mas_cars_Ural_repair",
"I_mas_cars_Ural_fuel",
"I_mas_cars_Ural_BM21",
"I_mas_cars_Ural_ZU23",
"O_mas_cars_Ural",
"O_mas_cars_Ural_open",
"O_mas_cars_Ural_repair",
"O_mas_cars_Ural_fuel",
"O_mas_cars_Ural_BM21",
"O_mas_cars_Ural_ZU23",
"I_mas_BMP2_Ambul_01",
"O_mas_BMP2_Ambul_01",
"I_mas_T72_AAF_01",
"I_mas_T72B_Early_AAF_01",
"I_mas_T72B_AAF_01",
"I_mas_T72BM_AAF_01",
"I_mas_T55_AAF_01",
"I_mas_T34_AAF_01",
"I_mas_ZSU_AAF_01",
"O_mas_T72_OPF_01",
"O_mas_T72B_Early_OPF_01",
"O_mas_T72B_OPF_01",
"O_mas_T72BM_OPF_01",
"O_mas_ZSU_OPF_01",
"O_mas_T55_OPF_01"

];


/****** LOAD IN VEHICLE / CHARGER DANS LE VEHICULE ******/

/*
 * This section uses a numeric quantification of capacity and cost of the objets.
 * For example, in a vehicle has a capacity of 100, we will be able to load in 5 objects costing 20 capacity units.
 * The capacity doesn't represent a real volume or weight, but a choice made for gameplay.
 *
 * Note : the priority of a declaration of cost/capacity to another one corresponds to the inverse order in the tables.
 *   It means that the most generic classes should be listed before the less generic classes.
 *   For example : the "Truck_F" class is a child of the "Car_F" class (see http://madbull.arma.free.fr/A3_stable_1.20.124746_CfgVehicles_tree.html).
 *   If "Car_F" is declared before "Truck_F" with a capacity of 40, and "Truck_F" is declared after with a capacity of 140,
 *   Then all the child classes of "Truck_F" will have a capacity of 140.
 *   And all the derived classes of "Car_F", not in "Truck_F", will have a capacity of 40.
 *
 *
 * Cette section utilise une quantification numérique de la capacité et du coût des objets.
 * Par exemple, dans un véhicule d'une capacité de 100, nous pouvons charger 5 objets coûtant 20 unités de capacité.
 * La capacité ne représente ni un poids, ni un volume, mais un choix fait pour la jouabilité.
 *
 * Note : la priorité d'une déclaration de coût/capacité sur une autre correspond à l'ordre inverse dans les tableaux.
 *   Cela implique que les classes les plus génériques doivent être listées avant les classes moins gnériques.
 *   Par exemple : la classe "Truck_F" est une classe dérviée de "Car_F" (voir http://madbull.arma.free.fr/A3_stable_1.20.124746_CfgVehicles_tree.html).
 *   Si "Car_F" est déclaré avant "Truck_F" avec une capacité de 40, et que "Truck_F" est déclaré après avec une capacité de 140,
 *   Alors toutes les classes dérivées de "Truck_F" auront une capacité de 140.
 *   Et toutes les classes dans "Car_F", non présentes dans "Truck_F", auront une capacité de 40.
 */

/**
 * List of class names of vehicles or cargo objects which can transport objects.
 * The second element of the nested arrays is the load capacity (in relation with the capacity cost of the objects).
 *
 * Liste des noms de classes des véhicules ou "objets contenant" pouvant transporter des objets.
 * Le deuxième élément des sous-tableaux est la capacité de chargement (en relation avec le coût de capacité des objets).
 */
R3F_LOG_CFG_can_transport_cargo = R3F_LOG_CFG_can_transport_cargo +
[
["I_mas_cars_UAZ_Unarmed", 60],
["I_mas_cars_UAZ_Med", 60],
["O_mas_cars_UAZ_Unarmed", 60],
["O_mas_cars_UAZ_Med", 60],
["B_mas_cars_Hilux_Unarmed", 60],
["B_mas_cars_Hilux_Med", 60],
["B_mas_cars_LR_Unarmed", 60],
["B_mas_cars_LR_Med", 60],
["B_mas_cars_LR_TOW", 60],
["I_mas_cars_LR_soft_Unarmed", 60],
["I_mas_cars_LR_soft_Med", 60],
["I_mas_cars_LR_soft_TOW", 60],
["B_mas_HMMWV_UNA", 60],
["B_mas_HMMWV_MEV", 60],
["B_mas_HMMWV_UNA_des", 60],
["B_mas_HMMWV_MEV_des", 60],
["B_mas_cars_Hilux_MG", 60],
["B_mas_cars_Hilux_AGS30", 60],
["I_mas_cars_LR_soft_Stinger", 60],
["I_mas_cars_LR_soft_SPG9", 60],
["I_mas_cars_LR_soft_M2", 60],
["I_mas_cars_LR_soft_Mk19", 60],
["B_mas_cars_LR_M2", 60],
["B_mas_cars_LR_Mk19", 60],
["B_mas_cars_LR_Stinger", 60],
["B_mas_cars_LR_SPG9", 60],
["B_mas_HMMWV_M2", 60],
["B_mas_HMMWV_M2_des", 60],
["B_mas_HMMWV_SOV_M134", 60],
["B_mas_HMMWV_M134", 60],
["B_mas_cars_Hilux_SPG9", 60],
["B_mas_cars_Hilux_RKTS", 60],
["B_mas_cars_Hilux_M2", 60],
["I_mas_BRDM2", 60],
["O_mas_BRDM2", 60],
["I_mas_BTR60", 60],
["I_mas_BMP2_AAF_01", 60],
["O_mas_BTR60", 60],
["I_mas_cars_Ural", 60],
["I_mas_cars_Ural_open", 60],
["I_mas_cars_Ural_repair", 60],
["I_mas_cars_Ural_fuel", 60],
["I_mas_cars_Ural_BM21", 60],
["I_mas_cars_Ural_ZU23", 60],
["O_mas_cars_Ural", 60],
["O_mas_cars_Ural_open", 60],
["O_mas_cars_Ural_repair", 60],
["O_mas_cars_Ural_fuel", 60],
["O_mas_cars_Ural_BM21", 60],
["O_mas_cars_Ural_ZU23", 60],
["I_mas_BMP2_Ambul_01", 60],
["O_mas_BMP2_Ambul_01", 60],
["I_mas_T72_AAF_01", 60],
["I_mas_T72B_Early_AAF_01", 60],
["I_mas_T72B_AAF_01", 60],
["I_mas_T72BM_AAF_01", 60],
["I_mas_T55_AAF_01", 60],
["I_mas_T34_AAF_01", 60],
["I_mas_ZSU_AAF_01", 60],
["O_mas_T72_OPF_01", 60],
["O_mas_T72B_Early_OPF_01", 60],
["O_mas_T72B_OPF_01", 60],
["O_mas_T72BM_OPF_01", 60],
["O_mas_ZSU_OPF_01", 60],
["O_mas_T55_OPF_01", 60],
    ["B_mas_CH_47F", 60],
    ["B_mas_UH1Y_F", 60],
    ["B_mas_UH1Y_UNA_F", 60],
    ["B_mas_UH1Y_MEV_F", 60],
    ["B_mas_UH60M", 60],
    ["B_mas_UH60M_SF", 60],
    ["B_mas_UH60M_MEV", 60],
    ["I_mas_MI8", 60],
    ["I_mas_MI8MTV", 60],
    ["O_mas_MI8", 60],
    ["O_mas_MI8MTV", 60],
    ["I_mas_MI24V", 60],
    ["O_mas_MI24V", 60]
];

/**
 * List of class names of objects which can be loaded in transport vehicle/cargo.
 * The second element of the nested arrays is the cost capacity (in relation with the capacity of the vehicles).
 *
 * Liste des noms de classes des objets transportables.
 * Le deuxième élément des sous-tableaux est le coût de capacité (en relation avec la capacité des véhicules).
 */
R3F_LOG_CFG_can_be_transported_cargo = R3F_LOG_CFG_can_be_transported_cargo +
[
	// e.g. : ["MyTransportableObjectClassName1", itsCost], ["MyTransportableObjectClassName2", itsCost]
];

/****** MOVABLE-BY-PLAYER OBJECTS / OBJETS DEPLACABLES PAR LE JOUEUR ******/

/**
 * List of class names of objects which can be carried and moved by a player.
 * Liste des noms de classes des objets qui peuvent être portés et déplacés par le joueur.
 */
R3F_LOG_CFG_can_be_moved_by_player = R3F_LOG_CFG_can_be_moved_by_player +
[
	// e.g. : "MyMovableObjectClassName1", "MyMovableObjectClassName2"
];

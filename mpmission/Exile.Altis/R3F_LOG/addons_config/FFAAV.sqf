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
			"ffaa_et_leopardo",
			"ffaa_et_pizarro_mauser",
			"ffaa_et_rg31_samson",
			"ffaa_et_toa_ambulancia",
			"ffaa_et_toa_m2",
			"ffaa_et_toa_mando",
			"ffaa_et_toa_spike",
			"ffaa_et_toa_zapador",
			"ffaa_et_vamtac_cardom",
			"ffaa_et_vamtac_crows",
			"ffaa_et_vamtac_lag40",
			"ffaa_et_vamtac_m2",
			"ffaa_et_vamtac_mistral",
			"ffaa_et_vamtac_tow",
			"ffaa_et_vamtac_ume",
			"ffaa_et_anibal",
			"ffaa_et_m250_carga_blin",
			"ffaa_et_m250_carga_lona_blin",
			"ffaa_et_m250_combustible_blin",
			"ffaa_et_m250_municion_blin",
			"ffaa_et_m250_municion_blin",
			"ffaa_et_m250_recuperacion_blin",
			"ffaa_et_m250_repara_municion_blin",
			"ffaa_et_pegaso_carga",
			"ffaa_et_pegaso_carga_lona",
			"ffaa_et_pegaso_combustible",
			"ffaa_et_pegaso_municion",
			"ffaa_et_pegaso_repara_municion",
			"ffaa_et_vamtac_trans",
			"ffaa_et_vamtac_trans_blind"
];

/**
 * List of class names of objects which can be towed.
 * Liste des noms de classes des objets remorquables.
 */
R3F_LOG_CFG_can_be_towed = R3F_LOG_CFG_can_be_towed +
[
			"ffaa_et_leopardo",
			"ffaa_et_pizarro_mauser",
			"ffaa_et_rg31_samson",
			"ffaa_et_toa_ambulancia",
			"ffaa_et_toa_m2",
			"ffaa_et_toa_mando",
			"ffaa_et_toa_spike",
			"ffaa_et_toa_zapador",
			"ffaa_et_vamtac_cardom",
			"ffaa_et_vamtac_crows",
			"ffaa_et_vamtac_lag40",
			"ffaa_et_vamtac_m2",
			"ffaa_et_vamtac_mistral",
			"ffaa_et_vamtac_tow",
			"ffaa_et_vamtac_ume",
			"ffaa_et_anibal",
			"ffaa_et_m250_carga_blin",
			"ffaa_et_m250_carga_lona_blin",
			"ffaa_et_m250_combustible_blin",
			"ffaa_et_m250_municion_blin",
			"ffaa_et_m250_municion_blin",
			"ffaa_et_m250_recuperacion_blin",
			"ffaa_et_m250_repara_municion_blin",
			"ffaa_et_pegaso_carga",
			"ffaa_et_pegaso_carga_lona",
			"ffaa_et_pegaso_combustible",
			"ffaa_et_pegaso_municion",
			"ffaa_et_pegaso_repara_municion",
			"ffaa_et_vamtac_trans",
			"ffaa_et_vamtac_trans_blind"
];


/****** LIFT WITH VEHICLE / HELIPORTER AVEC VEHICULE ******/

/**
 * List of class names of helicopters which can lift objects.
 * Liste des noms de classes des hélicoptères pouvant héliporter des objets.
 */
R3F_LOG_CFG_can_lift = R3F_LOG_CFG_can_lift +
[
			"ffaa_famet_ch47_des_mg",
			"ffaa_famet_ch47_mg",
			"ffaa_famet_cougar",
			"ffaa_famet_cougar_olive",
			"ffaa_famet_tigre_aa",
			"ffaa_famet_tigre_at",
			"ffaa_famet_tigre_cas",
			"ffaa_nh90_tth_armed",
			"ffaa_nh90_tth_transport",
			"ffaa_nh90_tth_cargo",
			"ffaa_nh90_nfh_transport"

];

/**
 * List of class names of objects which can be lifted.
 * Liste des noms de classes des objets héliportables.
 */
R3F_LOG_CFG_can_be_lifted = R3F_LOG_CFG_can_be_lifted +
[
			"ffaa_et_leopardo",
			"ffaa_et_pizarro_mauser",
			"ffaa_et_rg31_samson",
			"ffaa_et_toa_ambulancia",
			"ffaa_et_toa_m2",
			"ffaa_et_toa_mando",
			"ffaa_et_toa_spike",
			"ffaa_et_toa_zapador",
			"ffaa_et_vamtac_cardom",
			"ffaa_et_vamtac_crows",
			"ffaa_et_vamtac_lag40",
			"ffaa_et_vamtac_m2",
			"ffaa_et_vamtac_mistral",
			"ffaa_et_vamtac_tow",
			"ffaa_et_vamtac_ume",
			"ffaa_et_anibal",
			"ffaa_et_m250_carga_blin",
			"ffaa_et_m250_carga_lona_blin",
			"ffaa_et_m250_combustible_blin",
			"ffaa_et_m250_municion_blin",
			"ffaa_et_m250_municion_blin",
			"ffaa_et_m250_recuperacion_blin",
			"ffaa_et_m250_repara_municion_blin",
			"ffaa_et_pegaso_carga",
			"ffaa_et_pegaso_carga_lona",
			"ffaa_et_pegaso_combustible",
			"ffaa_et_pegaso_municion",
			"ffaa_et_pegaso_repara_municion",
			"ffaa_et_vamtac_trans",
			"ffaa_et_vamtac_trans_blind",
			"ffaa_ar_lcm",
			"ffaa_ar_supercat",
			"ffaa_ar_zodiac_hurricane",
			"ffaa_ar_zodiac_hurricane_long"
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
	// e.g. : ["MyTransporterClassName1", itsCapacity], ["MyTransporterClassName2", itsCapacity]

			
			
			["ffaa_famet_ch47_des_mg", 60],
			["ffaa_famet_ch47_mg", 60],
			["ffaa_famet_cougar", 60],
			["ffaa_famet_cougar_olive", 60],
			["ffaa_famet_tigre_aa", 60],
			["ffaa_famet_tigre_at", 60],
			["ffaa_famet_tigre_cas", 60],
			["ffaa_ar_lcm", 60],
			["ffaa_ar_supercat", 60],
			["ffaa_ar_zodiac_hurricane", 60],
			["ffaa_ar_zodiac_hurricane_long", 60],
			["ffaa_ea_hercules_camo", 60],
			["ffaa_ea_hercules", 60],
			["ffaa_ar_harrier_cap", 60],
			["ffaa_ar_harrier_cas", 60],
			["ffaa_ar_harrier_gbu", 60],
			["ffaa_ar_harrier_mr", 60],
			["ffaa_et_leopardo", 60],
			["ffaa_et_pizarro_mauser", 60],
			["ffaa_et_rg31_samson", 60],
			["ffaa_et_toa_ambulancia", 60],
			["ffaa_et_toa_m2", 60],
			["ffaa_et_toa_mando", 60],
			["ffaa_et_toa_spike", 60],
			["ffaa_et_toa_zapador", 60],
			["ffaa_et_vamtac_cardom", 60],
			["ffaa_et_vamtac_crows", 60],
			["ffaa_et_vamtac_lag40", 60],
			["ffaa_et_vamtac_m2", 60],
			["ffaa_et_vamtac_mistral", 60],
			["ffaa_et_vamtac_tow", 60],
			["ffaa_et_vamtac_ume", 60],
			["ffaa_et_anibal", 60],
			["ffaa_et_m250_carga_blin", 60],
			["ffaa_et_m250_carga_lona_blin", 60],
			["ffaa_et_m250_combustible_blin", 60],
			["ffaa_et_m250_municion_blin", 60],
			["ffaa_et_m250_municion_blin", 60],
			["ffaa_et_m250_recuperacion_blin", 60],
			["ffaa_et_m250_repara_municion_blin", 60],
			["ffaa_et_pegaso_carga", 60],
			["ffaa_et_pegaso_carga_lona", 60],
			["ffaa_et_pegaso_combustible", 60],
			["ffaa_et_pegaso_municion", 60],
			["ffaa_et_pegaso_repara_municion", 60],
			["ffaa_et_vamtac_trans", 60],
			["ffaa_et_vamtac_trans_blind", 60],
			["ffaa_nh90_tth_armed", 60],
			["ffaa_nh90_tth_transport", 60],
			["ffaa_nh90_tth_cargo", 60],
			["ffaa_nh90_nfh_transport", 60]
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

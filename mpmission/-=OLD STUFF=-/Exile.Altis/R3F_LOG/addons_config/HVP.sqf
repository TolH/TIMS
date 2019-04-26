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
	"SIG_Roadrunner",
		"SIG_Hubcaps",
		"SIG_Magnums",
		"SIG_Hcode",
		"SIG_Superbee",
		"SIG_SuperbeeY",
		"SIG_SuperbeeB",
		"SIG_SuperbeeL",
		"SIG_SuperbeeM",
		"SIG_SuperbeeG",
		"Mr_Own_buggy_bleufonce",
"Mr_Own_buggy_grise",
"Mr_Own_buggy_jaune",
"Mr_Own_buggy_noir",
"Mr_Own_buggy_orange",
"Mr_Own_buggy_rose",
"Mr_Own_buggy_rouge",
"Mr_Own_buggy_violet",
"Mr_Own_dodge15_civ",
"Mr_Own_dodge15_civ_bleufonce",
"Mr_Own_dodge15_civ_grise",
"Mr_Own_dodge15_civ_jaune",
"Mr_Own_dodge15_civ_noir",
"Mr_Own_dodge15_civ_orange",
"Mr_Own_dodge15_civ_rose",
"Mr_Own_dodge15_civ_rouge",
"Mr_Own_dodge15_civ_violet",
"Mr_Own_hummer_civ_noir",
"Mr_Own_hummer_civ_bleufonce",
"Mr_Own_hummer_civ_grise",
"Mr_Own_hummer_civ_jaune",
"Mr_Own_hummer_civ_orange",
"Mr_Own_hummer_civ_rose",
"Mr_Own_hummer_civ_violet",
"Mr_Own_hummer_civ_rouge",
"shounka_buggy_bleufonce",
"shounka_buggy_grise",
"shounka_buggy_jaune",
"shounka_buggy_noir",
"shounka_buggy_orange",
"shounka_buggy_rose",
"shounka_buggy_rouge",
"shounka_buggy_violet",
"shounka_avalanche_bleufonce",
"shounka_avalanche_grise",
"shounka_avalanche_jaune",
"shounka_avalanche_noir",
"shounka_avalanche_orange",
"shounka_avalanche_rose",
"shounka_avalanche_rouge",
"shounka_avalanche_violet",
"shounka_monsteur_bleufonce",
"shounka_monsteur_grise",
"shounka_monsteur_jaune",
"shounka_monsteur_noir",
"shounka_monsteur_orange",
"shounka_monsteur_rose",
"shounka_monsteur_rouge",
"shounka_monsteur_violet",
"Mrshounka_Vandura_civ",
"Mrshounka_Vandura_civ_bleufonce",
"Mrshounka_Vandura_civ_grise",
"Mrshounka_Vandura_civ_jaune",
"Mrshounka_Vandura_civ_noir",
"Mrshounka_Vandura_civ_orange",
"Mrshounka_Vandura_civ_rose",
"Mrshounka_Vandura_civ_rouge",
"Mrshounka_Vandura_civ_violet",
"Mrshounka_corbillard_c",
"Mrshounka_corbillard_c_bleufonce",
"Mrshounka_corbillard_c_grise",
"Mrshounka_corbillard_c_jaune",
"Mrshounka_corbillard_c_noir",
"Mrshounka_corbillard_c_orange",
"Mrshounka_corbillard_c_rose",
"Mrshounka_corbillard_c_rouge",
"Mrshounka_corbillard_c_violet",
"shounka_a3_dafxf_euro6_f",
"shounka_f430_spider_bleufonce",
"shounka_f430_spider_grise",
"shounka_f430_spider_jaune",
"shounka_f430_spider_noir",
"shounka_f430_spider_orange",
"shounka_f430_spider_rose",
"shounka_f430_spider_rouge",
"shounka_f430_spider_violet",
"shounka_ivceco_bleufonce",
"shounka_ivceco_grise",
"shounka_ivceco_jaune",
"shounka_ivceco_noir",
"shounka_ivceco_orange",
"shounka_ivceco_rose",
"shounka_ivceco_rouge",
"shounka_ivceco_violet",
"shounka_limo_civ_bleufonce",
"shounka_limo_civ_grise",
"shounka_limo_civ_jaune",
"shounka_limo_civ_noir",
"shounka_limo_civ_orange",
"shounka_limo_civ_rose",
"shounka_limo_civ_violet",
"Mrshounka_lykan_c_bleufonce",
"Mrshounka_lykan_c_grise",
"Mrshounka_lykan_c_jaune",
"Mrshounka_lykan_c_noir",
"Mrshounka_lykan_c_orange",
"Mrshounka_lykan_c_rose",
"Mrshounka_lykan_c_rouge",
"Mrshounka_lykan_c_violet",
"Mrshounka_a3_308_civ_bleufonce",
"Mrshounka_a3_308_civ_grise",
"Mrshounka_a3_308_civ_jaune",
"Mrshounka_a3_308_civ_noir",
"Mrshounka_a3_308_civ_orange",
"Mrshounka_a3_308_civ_rose",
"Mrshounka_a3_308_civ_rouge",
"Mrshounka_a3_308_civ_violet"
];

/**
 * List of class names of objects which can be towed.
 * Liste des noms de classes des objets remorquables.
 */
R3F_LOG_CFG_can_be_towed = R3F_LOG_CFG_can_be_towed +
[
	"SIG_Roadrunner",
		"SIG_Hubcaps",
		"SIG_Magnums",
		"SIG_Hcode",
		"SIG_Superbee",
		"SIG_SuperbeeY",
		"SIG_SuperbeeB",
		"SIG_SuperbeeL",
		"SIG_SuperbeeM",
		"SIG_SuperbeeG",
		"Mr_Own_buggy_bleufonce",
"Mr_Own_buggy_grise",
"Mr_Own_buggy_jaune",
"Mr_Own_buggy_noir",
"Mr_Own_buggy_orange",
"Mr_Own_buggy_rose",
"Mr_Own_buggy_rouge",
"Mr_Own_buggy_violet",
"Mr_Own_dodge15_civ",
"Mr_Own_dodge15_civ_bleufonce",
"Mr_Own_dodge15_civ_grise",
"Mr_Own_dodge15_civ_jaune",
"Mr_Own_dodge15_civ_noir",
"Mr_Own_dodge15_civ_orange",
"Mr_Own_dodge15_civ_rose",
"Mr_Own_dodge15_civ_rouge",
"Mr_Own_dodge15_civ_violet",
"Mr_Own_hummer_civ_noir",
"Mr_Own_hummer_civ_bleufonce",
"Mr_Own_hummer_civ_grise",
"Mr_Own_hummer_civ_jaune",
"Mr_Own_hummer_civ_orange",
"Mr_Own_hummer_civ_rose",
"Mr_Own_hummer_civ_violet",
"Mr_Own_hummer_civ_rouge",
"shounka_buggy_bleufonce",
"shounka_buggy_grise",
"shounka_buggy_jaune",
"shounka_buggy_noir",
"shounka_buggy_orange",
"shounka_buggy_rose",
"shounka_buggy_rouge",
"shounka_buggy_violet",
"shounka_avalanche_bleufonce",
"shounka_avalanche_grise",
"shounka_avalanche_jaune",
"shounka_avalanche_noir",
"shounka_avalanche_orange",
"shounka_avalanche_rose",
"shounka_avalanche_rouge",
"shounka_avalanche_violet",
"shounka_monsteur_bleufonce",
"shounka_monsteur_grise",
"shounka_monsteur_jaune",
"shounka_monsteur_noir",
"shounka_monsteur_orange",
"shounka_monsteur_rose",
"shounka_monsteur_rouge",
"shounka_monsteur_violet",
"Mrshounka_Vandura_civ",
"Mrshounka_Vandura_civ_bleufonce",
"Mrshounka_Vandura_civ_grise",
"Mrshounka_Vandura_civ_jaune",
"Mrshounka_Vandura_civ_noir",
"Mrshounka_Vandura_civ_orange",
"Mrshounka_Vandura_civ_rose",
"Mrshounka_Vandura_civ_rouge",
"Mrshounka_Vandura_civ_violet",
"Mrshounka_corbillard_c",
"Mrshounka_corbillard_c_bleufonce",
"Mrshounka_corbillard_c_grise",
"Mrshounka_corbillard_c_jaune",
"Mrshounka_corbillard_c_noir",
"Mrshounka_corbillard_c_orange",
"Mrshounka_corbillard_c_rose",
"Mrshounka_corbillard_c_rouge",
"Mrshounka_corbillard_c_violet",
"shounka_a3_dafxf_euro6_f",
"shounka_f430_spider_bleufonce",
"shounka_f430_spider_grise",
"shounka_f430_spider_jaune",
"shounka_f430_spider_noir",
"shounka_f430_spider_orange",
"shounka_f430_spider_rose",
"shounka_f430_spider_rouge",
"shounka_f430_spider_violet",
"shounka_ivceco_bleufonce",
"shounka_ivceco_grise",
"shounka_ivceco_jaune",
"shounka_ivceco_noir",
"shounka_ivceco_orange",
"shounka_ivceco_rose",
"shounka_ivceco_rouge",
"shounka_ivceco_violet",
"shounka_limo_civ_bleufonce",
"shounka_limo_civ_grise",
"shounka_limo_civ_jaune",
"shounka_limo_civ_noir",
"shounka_limo_civ_orange",
"shounka_limo_civ_rose",
"shounka_limo_civ_violet",
"Mrshounka_lykan_c_bleufonce",
"Mrshounka_lykan_c_grise",
"Mrshounka_lykan_c_jaune",
"Mrshounka_lykan_c_noir",
"Mrshounka_lykan_c_orange",
"Mrshounka_lykan_c_rose",
"Mrshounka_lykan_c_rouge",
"Mrshounka_lykan_c_violet",
"Mrshounka_a3_308_civ_bleufonce",
"Mrshounka_a3_308_civ_grise",
"Mrshounka_a3_308_civ_jaune",
"Mrshounka_a3_308_civ_noir",
"Mrshounka_a3_308_civ_orange",
"Mrshounka_a3_308_civ_rose",
"Mrshounka_a3_308_civ_rouge",
"Mrshounka_a3_308_civ_violet"
];


/****** LIFT WITH VEHICLE / HELIPORTER AVEC VEHICULE ******/

/**
 * List of class names of helicopters which can lift objects.
 * Liste des noms de classes des hélicoptères pouvant héliporter des objets.
 */
R3F_LOG_CFG_can_lift = R3F_LOG_CFG_can_lift +
[
	"MV22"
];

/**
 * List of class names of objects which can be lifted.
 * Liste des noms de classes des objets héliportables.
 */
R3F_LOG_CFG_can_be_lifted = R3F_LOG_CFG_can_be_lifted +
[
	"SIG_Roadrunner",
		"SIG_Hubcaps",
		"SIG_Magnums",
		"SIG_Hcode",
		"SIG_Superbee",
		"SIG_SuperbeeY",
		"SIG_SuperbeeB",
		"SIG_SuperbeeL",
		"SIG_SuperbeeM",
		"SIG_SuperbeeG",
		"Mr_Own_buggy_bleufonce",
"Mr_Own_buggy_grise",
"Mr_Own_buggy_jaune",
"Mr_Own_buggy_noir",
"Mr_Own_buggy_orange",
"Mr_Own_buggy_rose",
"Mr_Own_buggy_rouge",
"Mr_Own_buggy_violet",
"Mr_Own_dodge15_civ",
"Mr_Own_dodge15_civ_bleufonce",
"Mr_Own_dodge15_civ_grise",
"Mr_Own_dodge15_civ_jaune",
"Mr_Own_dodge15_civ_noir",
"Mr_Own_dodge15_civ_orange",
"Mr_Own_dodge15_civ_rose",
"Mr_Own_dodge15_civ_rouge",
"Mr_Own_dodge15_civ_violet",
"Mr_Own_hummer_civ_noir",
"Mr_Own_hummer_civ_bleufonce",
"Mr_Own_hummer_civ_grise",
"Mr_Own_hummer_civ_jaune",
"Mr_Own_hummer_civ_orange",
"Mr_Own_hummer_civ_rose",
"Mr_Own_hummer_civ_violet",
"Mr_Own_hummer_civ_rouge",
"shounka_buggy_bleufonce",
"shounka_buggy_grise",
"shounka_buggy_jaune",
"shounka_buggy_noir",
"shounka_buggy_orange",
"shounka_buggy_rose",
"shounka_buggy_rouge",
"shounka_buggy_violet",
"shounka_avalanche_bleufonce",
"shounka_avalanche_grise",
"shounka_avalanche_jaune",
"shounka_avalanche_noir",
"shounka_avalanche_orange",
"shounka_avalanche_rose",
"shounka_avalanche_rouge",
"shounka_avalanche_violet",
"shounka_monsteur_bleufonce",
"shounka_monsteur_grise",
"shounka_monsteur_jaune",
"shounka_monsteur_noir",
"shounka_monsteur_orange",
"shounka_monsteur_rose",
"shounka_monsteur_rouge",
"shounka_monsteur_violet",
"Mrshounka_Vandura_civ",
"Mrshounka_Vandura_civ_bleufonce",
"Mrshounka_Vandura_civ_grise",
"Mrshounka_Vandura_civ_jaune",
"Mrshounka_Vandura_civ_noir",
"Mrshounka_Vandura_civ_orange",
"Mrshounka_Vandura_civ_rose",
"Mrshounka_Vandura_civ_rouge",
"Mrshounka_Vandura_civ_violet",
"Mrshounka_corbillard_c",
"Mrshounka_corbillard_c_bleufonce",
"Mrshounka_corbillard_c_grise",
"Mrshounka_corbillard_c_jaune",
"Mrshounka_corbillard_c_noir",
"Mrshounka_corbillard_c_orange",
"Mrshounka_corbillard_c_rose",
"Mrshounka_corbillard_c_rouge",
"Mrshounka_corbillard_c_violet",
"shounka_a3_dafxf_euro6_f",
"shounka_f430_spider_bleufonce",
"shounka_f430_spider_grise",
"shounka_f430_spider_jaune",
"shounka_f430_spider_noir",
"shounka_f430_spider_orange",
"shounka_f430_spider_rose",
"shounka_f430_spider_rouge",
"shounka_f430_spider_violet",
"shounka_ivceco_bleufonce",
"shounka_ivceco_grise",
"shounka_ivceco_jaune",
"shounka_ivceco_noir",
"shounka_ivceco_orange",
"shounka_ivceco_rose",
"shounka_ivceco_rouge",
"shounka_ivceco_violet",
"shounka_limo_civ_bleufonce",
"shounka_limo_civ_grise",
"shounka_limo_civ_jaune",
"shounka_limo_civ_noir",
"shounka_limo_civ_orange",
"shounka_limo_civ_rose",
"shounka_limo_civ_violet",
"Mrshounka_lykan_c_bleufonce",
"Mrshounka_lykan_c_grise",
"Mrshounka_lykan_c_jaune",
"Mrshounka_lykan_c_noir",
"Mrshounka_lykan_c_orange",
"Mrshounka_lykan_c_rose",
"Mrshounka_lykan_c_rouge",
"Mrshounka_lykan_c_violet",
"Mrshounka_a3_308_civ_bleufonce",
"Mrshounka_a3_308_civ_grise",
"Mrshounka_a3_308_civ_jaune",
"Mrshounka_a3_308_civ_noir",
"Mrshounka_a3_308_civ_orange",
"Mrshounka_a3_308_civ_rose",
"Mrshounka_a3_308_civ_rouge",
"Mrshounka_a3_308_civ_violet"
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

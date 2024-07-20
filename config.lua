Config = Config or {}

Config.policeCall = true 
Config.boxDistance = 1.5 
Config.requiredCopsCount = 0 
Config.searchTime = 5000 
Config.cooldownTimer = 1000 * 60 * 60 
Config.requiredItem = "WEAPON_GOLFCLUB" 

Config.jewelVitrines = {
    vitrine1 = { 
        coords = vec3(-627.00183105469,-235.13592529297,38.216156005859), 
        name = "vitrine1",
        target_icon = "fas fa-sack-dollar",
        target_label = "locales.vitine_target_label",
        heading = 250, 
        length = 1.5, 
        width = 1, 
        items = { 
            {
                minChance = 1,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "diamond_ring",
            },
            {
                minChance = 41,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "goldchain",
            },
        }
    },
    vitrine2 = {
        coords = vec3(-625.94036865234,-234.36180114746,38.157852172852),
        name = "vitrine2",
        target_icon = "fas fa-sack-dollar",
        target_label = "locales.vitine_target_label",
        heading = 70,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "diamond_ring",
            },
            {
                minChance = 41,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "goldchain",
            },
        }
    },
    vitrine3 = {
        coords = vec3(-627.75787353516,-234.09294128418,38.06217956543),
        name = "vitrine3",
        target_icon = "fas fa-sack-dollar",
        target_label = "locales.vitine_target_label",
        heading = 340,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "diamond_ring",
            },
            {
                minChance = 41,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "goldchain",
            },
        }
    },
    vitrine4 = {
        coords = vec3(-626.75286865234,-233.36277770996,38.071933746338),
        name = "vitrine4",
        target_icon = "fas fa-sack-dollar",
        target_label = "locales.vitine_target_label",
        heading = 25,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "diamond_ring",
            },
            {
                minChance = 41,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "goldchain",
            },
        }
    },
    vitrine5 = {
        coords = vec3(-626.54522705078,-238.81713867188,38.103492736816),
        name = "vitrine5",
        target_icon = "fas fa-sack-dollar",
        target_label = "locales.vitine_target_label",
        heading = 340,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "diamond_ring",
            },
            {
                minChance = 41,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "goldchain",
            },
        }
    },
    vitrine6 = {
        coords = vec3(-625.46319580078,-238.03102111816,38.083721160889),
        name = "vitrine6",
        target_icon = "fas fa-sack-dollar",
        target_label = "locales.vitine_target_label",
        heading = 340,
        length = 1.5,
        width = 1,
        items = {
            {
                minChance = 1,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "diamond_ring",
            },
            {
                minChance = 41,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "goldchain",
            },
        }
    },
    vitrine7 = {
        coords = vec3(-622.88244628906,-232.73223876953,38.042789459229),
        name = "vitrine7",
        target_icon = "fas fa-sack-dollar",
        target_label = "locales.vitine_target_label",
        heading = 70,
        length = 1.5,
        width = 0.5,
        items = {
            {
                minChance = 1,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "diamond_ring",
            },
            {
                minChance = 41,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "goldchain",
            },
        }
    },
    vitrine8 = {
        coords = vec3(-624.20092773438,-230.92683410645,38.041831970215),
        name = "vitrine8",
        target_icon = "fas fa-sack-dollar",
        target_label = "locales.vitine_target_label",
        heading = 70,
        length = 1.5,
        width = 0.5,
        items = {
            {
                minChance = 1,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "diamond_ring",
            },
            {
                minChance = 41,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "goldchain",
            },
        }
    },
    vitrine9 = {
        coords = vec3(-620.10980224609,-234.70994567871,38.193733215332),
        name = "vitrine9",
        target_icon = "fas fa-sack-dollar",
        target_label = "locales.vitine_target_label",
        heading = 70,
        length = 1.5,
        width = 0.5,
        items = {
            {
                minChance = 1,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "diamond_ring",
            },
            {
                minChance = 41,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "goldchain",
            },
        }
    },
    vitrine10 = {
        coords = vec3(-619.0,-233.90362548828,38.174964904785),
        name = "vitrine10",
        target_icon = "fas fa-sack-dollar",
        target_label = "locales.vitine_target_label",
        heading = 70,
        length = 1.5,
        width = 0.5,
        items = {
            {
                minChance = 1,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "diamond_ring",
            },
            {
                minChance = 41,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "goldchain",
            },
        }
    },
    vitrine11 = {
        coords = vec3(-625.19659423828,-227.66656494141,38.163681030273),
        name = "vitrine11",
        target_icon = "fas fa-sack-dollar",
        target_label = "locales.vitine_target_label",
        heading = 70,
        length = 1.5,
        width = 0.5,
        items = {
            {
                minChance = 1,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "diamond_ring",
            },
            {
                minChance = 41,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "goldchain",
            },
        }
    },
    vitrine12 = {
        coords = vec3(-624.12255859375,-226.88330078125,38.200351715088),
        name = "vitrine12",
        target_icon = "fas fa-sack-dollar",
        target_label = "locales.vitine_target_label",
        heading = 70,
        length = 1.5,
        width = 0.5,
        items = {
            {
                minChance = 1,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "diamond_ring",
            },
            {
                minChance = 41,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "goldchain",
            },
        }
    },
    vitrine13 = {
        coords = vec3(-623.65191650391,-228.33247375488,38.218727111816),
        name = "vitrine13",
        target_icon = "fas fa-sack-dollar",
        target_label = "locales.vitine_target_label",
        heading = 70,
        length = 1.5,
        width = 0.5,
        items = {
            {
                minChance = 1,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "diamond_ring",
            },
            {
                minChance = 41,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "goldchain",
            },
        }
    },
    vitrine14 = {
        coords = vec3(-620.24884033203,-226.35159301758,38.095230102539),
        name = "vitrine14",
        target_icon = "fas fa-sack-dollar",
        target_label = "locales.vitine_target_label",
        heading = 70,
        length = 1.5,
        width = 0.5,
        items = {
            {
                minChance = 1,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "diamond_ring",
            },
            {
                minChance = 41,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "goldchain",
            },
        }
    },
    vitrine15 = {
        coords = vec3(-619.46417236328,-227.43165588379,38.164520263672),
        name = "vitrine15",
        target_icon = "fas fa-sack-dollar",
        target_label = "locales.vitine_target_label",
        heading = 70,
        length = 1.5,
        width = 0.5,
        items = {
            {
                minChance = 1,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "diamond_ring",
            },
            {
                minChance = 41,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "goldchain",
            },
        }
    },
    vitrine16 = {
        coords = vec3(-621.44982910156,-228.74932861328,38.223594665527),
        name = "vitrine16",
        target_icon = "fas fa-sack-dollar",
        target_label = "locales.vitine_target_label",
        heading = 70,
        length = 1.5,
        width = 0.5,
        items = {
            {
                minChance = 1,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "diamond_ring",
            },
            {
                minChance = 41,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "goldchain",
            },
        }
    },
    vitrine17 = {
        coords = vec3(-620.33258056641,-230.75331115723,37.782596588135),
        name = "vitrine17",
        target_icon = "fas fa-sack-dollar",
        target_label = "locales.vitine_target_label",
        heading = 70,
        length = 1.5,
        width = 0.5,
        items = {
            {
                minChance = 1,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "diamond_ring",
            },
            {
                minChance = 41,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "goldchain",
            },
        }
    },
    vitrine18 = {
        coords = vec3(-618.1044921875,-229.30303955078,38.208236694336),
        name = "vitrine18",
        target_icon = "fas fa-sack-dollar",
        target_label = "locales.vitine_target_label",
        heading = 70,
        length = 1.5,
        width = 0.5,
        items = {
            {
                minChance = 1,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "diamond_ring",
            },
            {
                minChance = 41,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "goldchain",
            },
        }
    },
    vitrine19 = {
        coords = vec3(-617.30230712891,-230.4072265625,38.122673034668),
        name = "vitrine19",
        target_icon = "fas fa-sack-dollar",
        target_label = "locales.vitine_target_label",
        heading = 70,
        length = 1.5,
        width = 0.5,
        items = {
            {
                minChance = 1,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "diamond_ring",
            },
            {
                minChance = 41,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "goldchain",
            },
        }
    },
    vitrine20 = {
        coords = vec3(-620.30682373047,-232.98602294922,38.21842956543),
        name = "vitrine20",
        target_icon = "fas fa-sack-dollar",
        target_label = "locales.vitine_target_label",
        heading = 70,
        length = 1.5,
        width = 0.5,
        items = {
            {
                minChance = 1,
                maxChance = 40,
                minQuantity = 1,
                maxQuantity = 1,
                item = "diamond_ring",
            },
            {
                minChance = 41,
                maxChance = 90,
                minQuantity = 1,
                maxQuantity = 1,
                item = "goldchain",
            },
        }
    },
}

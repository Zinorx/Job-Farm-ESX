Config = {}

---ORANGE---

Config.Recolte = {
    coords = vector3(2330.7, 5020.3, 42.7),
    item = 'orange',
    amount = 1,
    time = 3000
}

Config.Traitement = {
    coords = vector3(2741.3, 4412.1, 48.6),
    itemRemove = 'orange',
    itemAdd = 'jus_orange',
    removeAmount = 3,
    addAmount = 1,
    time = 5000
}

Config.Vente = {
    coords = vector3(416.8, 6520.5, 27.6),
    item = 'jus_orange',
    price = 25
}

Config.Blips = {
    Recolte = {
        label = "Récolte d'oranges",
        sprite = 1,
        color = 47,
        scale = 0.8
    },
    Traitement = {
        label = "Traitement des oranges",
        sprite = 1,
        color = 47,
        scale = 0.8
    },
    Vente = {
        label = "Vente de jus d'orange",
        sprite = 1,
        color = 47,
        scale = 0.8
    }
}

---Bois---

Config.RecolteBois = {
    coords = vector3(-545.7, 5385.5, 70.3),
    item = 'bois',
    amount = 1,
    time = 3000
}

Config.TraitementBois = {
    coords = vector3(-554.0, 5371.5, 70.3),
    itemRemove = 'bois',
    itemAdd = 'planche_bois',
    removeAmount = 3,
    addAmount = 1,
    time = 5000
}

Config.VenteBois = {
    coords = vector3(-560.6, 5357.4, 70.2),
    item = 'planche_bois',
    price = 25
}




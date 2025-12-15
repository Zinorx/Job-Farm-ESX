local ox_inventory = exports.ox_inventory

-----Orange-----

RegisterNetEvent('orange:recolte', function()
    local src = source
    ox_inventory:AddItem(src, Config.Recolte.item, Config.Recolte.amount)
end)

RegisterNetEvent('orange:traitement', function()
    local src = source
    local count = ox_inventory:Search(src, 'count', Config.Traitement.itemRemove)

    if count >= Config.Traitement.removeAmount then
        ox_inventory:RemoveItem(src, Config.Traitement.itemRemove, Config.Traitement.removeAmount)
        ox_inventory:AddItem(src, Config.Traitement.itemAdd, Config.Traitement.addAmount)
    else
        TriggerClientEvent('esx:showNotification', src, "Pas assez d'oranges")
    end
end)

RegisterNetEvent('orange:vente', function()
    local src = source

    local itemCount = exports.ox_inventory:Search(src, 'count', Config.Vente.item)
    

    if itemCount and itemCount > 0 then
        local total = itemCount * Config.Vente.price
        local removed = exports.ox_inventory:RemoveItem(src, Config.Vente.item, itemCount)
        

    if removed then
            exports.ox_inventory:AddItem(src, 'money', total)
            TriggerClientEvent('esx:showNotification', src,
                ('Vente effectuée : %s$'):format(total)
            )
        end
    else
        TriggerClientEvent('esx:showNotification', src, 'Rien à vendre')
    end
end)

-----Bois-----

RegisterNetEvent('bois:recolte', function()
    local src = source
    ox_inventory:AddItem(src, Config.RecolteBois.item, Config.RecolteBois.amount)
end)

RegisterNetEvent('bois:traitement', function()
    local src = source
    local count = ox_inventory:Search(src, 'count', Config.TraitementBois.itemRemove)

    if count >= Config.TraitementBois.removeAmount then
        ox_inventory:RemoveItem(src, Config.TraitementBois.itemRemove, Config.Traitement.removeAmount)
        ox_inventory:AddItem(src, Config.TraitementBois.itemAdd, Config.TraitementBois.addAmount)
    else
        TriggerClientEvent('esx:showNotification', src, "Pas assez de bois")
    end
end)

RegisterNetEvent('bois:vente', function()
    local src = source

    local itemCount = exports.ox_inventory:Search(src, 'count', Config.VenteBois.item)
    

    if itemCount and itemCount > 0 then
        local total = itemCount * Config.VenteBois.price
        local removed = exports.ox_inventory:RemoveItem(src, Config.VenteBois.item, itemCount)
        

    if removed then
            exports.ox_inventory:AddItem(src, 'money', total)
            TriggerClientEvent('esx:showNotification', src,
                ('Vente effectuée : %s$'):format(total)
            )
        end
    else
        TriggerClientEvent('esx:showNotification', src, 'Rien à vendre')
    end
end)


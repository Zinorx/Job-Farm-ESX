local ESX = exports['es_extended']:getSharedObject()

local function Progress(action, time, event)
    lib.progressCircle({
        duration = time,
        position = 'bottom',
        label = action,
        useWhileDead = false,
        canCancel = false,
        disable = { car = true, move = true }
    })
    TriggerServerEvent(event)
end

-----Orange------

CreateThread(function()
    while true do
        Wait(0)
        local ped = PlayerPedId()
        local coords = GetEntityCoords(ped)

        -- Récolte
        if #(coords - Config.Recolte.coords) < 2.0 then
            ESX.ShowHelpNotification("Appuyez sur ~INPUT_CONTEXT~ pour récolter des oranges")
            if IsControlJustPressed(0, 38) then
                Progress("Récolte d'oranges...", Config.Recolte.time, 'orange:recolte')
            end
        end

        -- Traitement
        if #(coords - Config.Traitement.coords) < 2.0 then
            ESX.ShowHelpNotification("Appuyez sur ~INPUT_CONTEXT~ pour traiter les oranges")
            if IsControlJustPressed(0, 38) then
                Progress("Traitement en cours...", Config.Traitement.time, 'orange:traitement')
            end
        end

        -- Vente
        if #(coords - Config.Vente.coords) < 2.0 then
            ESX.ShowHelpNotification("Appuyez sur ~INPUT_CONTEXT~ pour vendre le jus")
            if IsControlJustPressed(0, 38) then
                TriggerServerEvent('orange:vente')
            end
        end
    end
end)

CreateThread(function()
    local blips = {
        { coords = Config.Recolte.coords, label = "Oranges - Récolte" },
        { coords = Config.Traitement.coords, label = "Oranges - Traitement" },
        { coords = Config.Vente.coords, label = "Oranges - Vente" }
    }

    for _, data in pairs(blips) do
        local blip = AddBlipForCoord(data.coords)

        SetBlipSprite(blip, 1)      -- Rond
        SetBlipColour(blip, 47)     -- Orange
        SetBlipScale(blip, 0.8)
        SetBlipAsShortRange(blip, true)

        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(data.label)
        EndTextCommandSetBlipName(blip)
    end
end)

-----Bois-----

CreateThread(function()
    while true do
        Wait(0)
        local ped = PlayerPedId()
        local coords = GetEntityCoords(ped)

        -- Récolte
        if #(coords - Config.RecolteBois.coords) < 2.0 then
            ESX.ShowHelpNotification("Appuyez sur ~INPUT_CONTEXT~ pour récolter du bois")
            if IsControlJustPressed(0, 38) then
                Progress("Récolte de bois...", Config.RecolteBois.time, 'bois:recolte')
            end
        end

        -- Traitement
        if #(coords - Config.TraitementBois.coords) < 2.0 then
            ESX.ShowHelpNotification("Appuyez sur ~INPUT_CONTEXT~ pour traiter le bois")
            if IsControlJustPressed(0, 38) then
                Progress("Traitement en cours...", Config.Traitement.time, 'bois:traitement')
            end
        end

        -- Vente
        if #(coords - Config.VenteBois.coords) < 2.0 then
            ESX.ShowHelpNotification("Appuyez sur ~INPUT_CONTEXT~ pour vendre les planches")
            if IsControlJustPressed(0, 38) then
                TriggerServerEvent('bois:vente')
            end
        end
    end
end)

CreateThread(function()
    local blips = {
        { coords = Config.RecolteBois.coords, label = "Bois - Récolte" },
        { coords = Config.TraitementBois.coords, label = "Bois - Traitement" },
        { coords = Config.VenteBois.coords, label = "Bois - Vente" }
    }

    for _, data in pairs(blips) do
        local blip = AddBlipForCoord(data.coords)

        SetBlipSprite(blip, 1)      -- Rond
        SetBlipColour(blip, 10)     -- Orange
        SetBlipScale(blip, 0.8)
        SetBlipAsShortRange(blip, true)

        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(data.label)
        EndTextCommandSetBlipName(blip)
    end
end)

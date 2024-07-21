local QBCore = exports['qb-core']:GetCoreObject()
local Cooldown = {}

RegisterServerEvent('l1-jewelheist:server:getVitrineItems', function(vitrineKey) 
    local src = source
    local Player  = QBCore.Functions.GetPlayer(src)
    local prob = math.random(1, 100)
    local vitrine = Config.jewelVitrines[vitrineKey]
    local itemFound = false
    for i = 1, #vitrine.items do
        if(prob <= vitrine.items[i].maxChance and prob >= vitrine.items[i].minChance) then
            itemFound = true
            local quantity = math.random(vitrine.items[i].minQuantity, vitrine.items[i].maxQuantity)
            if Player.Functions.AddItem(vitrine.items[i].item, quantity) then
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[vitrine.items[i].item], 'add')
            else
                TriggerClientEvent('ox_lib:notify', src, {type = "error", position = "center-left", description = "Çantan ağzına kadar dolu..."})
            end  
        end
    end

    if not itemFound then
        TriggerClientEvent('ox_lib:notify', src, {type = "error", position = "center-left", description = "Burası Boş.."})
    end
end)

-- Cooldown
RegisterServerEvent('l1-jewelheist:Server:CooldownVitrines')
AddEventHandler('l1-jewelheist:Server:CooldownVitrines', function(vitrineKey)
    if not Cooldown[vitrineKey] then
        Cooldown[vitrineKey] = true
        CreateThread(function()
            Wait(Config.cooldownTimer)
            Cooldown[vitrineKey] = false
        end)
    end
end)

QBCore.Functions.CreateCallback("l1-jewelheist:CooldownVitrines",function(source, cb, vitrineKey)
    cb(Cooldown[vitrineKey])
end)


local vitrineLocks = {}

RegisterNetEvent('l1-jewelheist:server:lockVitrine')
AddEventHandler('l1-jewelheist:server:lockVitrine', function(vitrineKey, state)
    vitrineLocks[vitrineKey] = state
    TriggerClientEvent('l1-jewelheist:client:updateVitrineLock', -1, vitrineKey, state)
end)

QBCore.Functions.CreateCallback('l1-jewelheist:isVitrineLocked', function(source, cb, vitrineKey)
    cb(vitrineLocks[vitrineKey] or false)
end)

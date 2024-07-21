local QBCore = exports['qb-core']:GetCoreObject()
local CurrentCops = 0
local smashing = false

local function loadParticle()
	if not HasNamedPtfxAssetLoaded("scr_jewelheist") then
		RequestNamedPtfxAsset("scr_jewelheist")
    end
end    

local function loadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Wait(3)
    end
end

RegisterNetEvent('police:SetCopCount')
AddEventHandler('police:SetCopCount', function(amount)
    CurrentCops = amount
end)


local vitrineLocks = {}

RegisterNetEvent('l1-jewelheist:client:startStealing')
AddEventHandler("l1-jewelheist:client:startStealing", function(vitrineKey, entity)
    local pos = GetEntityCoords(PlayerPedId())
    local plyCoords = GetOffsetFromEntityInWorldCoords(ped, 0, 0.6, 0)
    local hasItem = QBCore.Functions.HasItem(Config.requiredItem)

    if hasItem then
        QBCore.Functions.TriggerCallback('l1-jewelheist:isVitrineLocked', function(locked)
            if not locked then
                QBCore.Functions.TriggerCallback("l1-jewelheist:CooldownVitrines", function(cooldown)
                    if not cooldown and CurrentCops >= Config.requiredCopsCount then
                        smashing = true
                        TriggerServerEvent('l1-jewelheist:server:lockVitrine', vitrineKey, true)
                        CreateThread(function()
                            while smashing do
                                loadAnimDict("missheist_jewel")
                                TaskPlayAnim(PlayerPedId(), "missheist_jewel", "smash_case", 3.0, 3.0, -1, 2, 0, 0, 0, 0)
                                Wait(500)
                                TriggerServerEvent("InteractSound_SV:PlayOnSource", "breaking_vitrine_glass", 0.25)
                                loadParticle()
                                StartParticleFxLoopedAtCoord("scr_jewel_cab_smash", plyCoords.x, plyCoords.y, plyCoords.z, 0.0, 0.0, 0.0, 1.0, false, false, false, false)
                                Wait(2500)
                            end
                        end)
                        QBCore.Functions.Progressbar("vitrine", Lang:t("locales.animation_searching"), Config.searchTime, false, true, {
                            disableMovement = true,
                            disableCarMovement = true,
                            disableMouse = false,
                            disableCombat = true,
                        }, {}, {}, {}, function()
                            local playerPed = PlayerPedId()
                            local success = exports['boii_minigames']:skill_circle({
                                style = 'default',
                                icon = 'fa-solid fa-paw',
                                area_size = 4,
                                speed = 0.02,
                            }, function(success)
                                if success == 'perfect' then
                                    exports['ps-dispatch']:VangelicoRobbery(camId)
                                    smashing = false
                                    TriggerServerEvent("l1-jewelheist:server:getVitrineItems", vitrineKey)
                                    TriggerServerEvent('l1-jewelheist:Server:CooldownVitrines', vitrineKey)
                                    TriggerServerEvent('ak4y-blackmarket:taskCountAdd', 8, 1)
                                    StopAnimTask(ped, dict, "machinic_loop_mechandplayer", 1.0)
                                    ClearPedTasks(playerPed)
                                else
                                    smashing = false
                                    lib.notify({description = Lang:t("locales.error_failed"), type = "error", position = "center-left"})
                                    ClearPedTasks(playerPed)
                                end
                                TriggerServerEvent('l1-jewelheist:server:lockVitrine', vitrineKey, false)
                            end, 2, 20)
                        end)
                    elseif cooldown then
                        lib.notify({description = Lang:t("locales.error_cooldown"), type = "error", position = "center-left"})
                    else
                        lib.notify({description = Lang:t("locales.error_no_police"), type = "error", position = "center-left"})
                    end
                end, vitrineKey)
            else
                lib.notify({description = Lang:t("locales.error_locked"), type = "error", position = "center-left"})
            end
        end, vitrineKey)
    else
        lib.notify({description = Lang:t("locales.no_item"), type = "error", position = "center-left"})
    end
end)

RegisterNetEvent('l1-jewelheist:client:updateVitrineLock')
AddEventHandler('l1-jewelheist:client:updateVitrineLock', function(vitrineKey, state)
    vitrineLocks[vitrineKey] = state
end)

Citizen.CreateThread(function ()
    for vitrineKey, vitrine in pairs(Config.jewelVitrines) do
        exports['qb-target']:AddBoxZone(vitrine.name, vitrine.coords, vitrine.length, vitrine.width, {
            name = vitrine.name,
            heading = vitrine.heading,
        }, {
            options = {
                {
                    type = "client",
                    action = function(entity)
                        if IsPedAPlayer(entity) then return false end
                        TriggerEvent("l1-jewelheist:client:startStealing", vitrineKey, entity)
                    end,              
                    icon = vitrine.target_icon,
                    label = Lang:t(vitrine.target_label)
                },
            },
            distance = Config.boxDistance
        })
    end
end)

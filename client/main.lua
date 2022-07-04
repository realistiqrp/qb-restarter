local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('qb-restarter:sound:Alert', function()
    if Config.RestartSound then
	    TriggerServerEvent("InteractSound_SV:PlayOnAll", "AlertSound", 0.1)
    else
        return
    end
end)

RegisterNetEvent('qb-restarter:SavePlayer', function(src)
    if Config.SavePlayer then
        TriggerServerEvent('QBCore:UpdatePlayer', src)
    else
        return
    end
end)

RegisterNetEvent('qb-restarter:effect:Shake', function(src)
    if Config.Shake then
        local startStamina = 30
        while startStamina > 0 do 
            Wait(1000)
            startStamina = startStamina - 1
            RestorePlayerStamina(PlayerId(), 1.0)
            if math.random(1, 100) < 9 then
                if not IsPedRagdoll(PlayerPedId()) and IsPedOnFoot(PlayerPedId()) and not IsPedSwimming(PlayerPedId()) then
                    ShakeGameplayCam(Config.ShakeType, Config.IntensityShake)
                    SetPedToRagdollWithFall(PlayerPedId(), 0, 0, 1, GetEntityForwardVector(PlayerPedId()), 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
                end
            end
        end
        startStamina = 0
    else
        return
    end
end)

RegisterNetEvent('qb-restarter:effect:Rain', function()
    if Config.Rain then
        TriggerServerEvent('qb-weathersync:server:setWeather', "rain")
        Wait(5000)
        TriggerServerEvent('qb-weathersync:server:toggleBlackout')
    else
        return
    end
end)

RegisterNetEvent('qb-restarter:effect:Thunder', function()
    if Config.Rain then
        TriggerServerEvent('qb-weathersync:server:setWeather', "thunder")
    else 
        return
    end
end)
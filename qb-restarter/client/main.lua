local QBCore = exports['qb-core']:GetCoreObject()


RegisterNetEvent('qb-restarter:geluid:Alert', function()
    if Config.RestartSound == true then
	    TriggerServerEvent("InteractSound_SV:PlayOnSource", "AlertSound", 0.1)
    end
end)

RegisterNetEvent('qb-restarter:SavePlayer', function()
    if Config.SavePlayer == true then
        TriggerServerEvent('QBCore:UpdatePlayer')
    end
end)

RegisterNetEvent('qb-restarter:effect:Shake', function()
    if Config.Shake == true then
        ShakeGameplayCam(Config.ShakeType, Config.ItensityShake) -- change this float to increase/decrease camera shake
    end
end)
local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Commands.Add("testrestart", "Test Server Restart System (Admin Only)", {}, false, function(source)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

	TriggerClientEvent("QBCore:Notify", src, "Dit is een test melding voor Server Restarts!", "restart", 2000)
	Wait(2500)
	TriggerClientEvent("QBCore:Notify", src, "Dit is een test melding voor Server Restarts met geluid!", "restart", 2000)
    
	TriggerClientEvent('qb-restarter:sound:Alert', src)

	-- ShakeGameplayCam(Config.ShakeType, Config.ItensityShake) -- change this float to increase/decrease camera shake
	TriggerClientEvent('qb-restarter:effect:Shake', src)
end)

AddEventHandler('txAdmin:events:scheduledRestart', function(eventData)
	if eventData.secondsRemaining == 3 then
		CreateThread(function()
			Wait(50)
			TriggerClientEvent('qb-restarter:effect:Shake', -1)
		end)
	elseif eventData.secondsRemaining == 5 then
		CreateThread(function()
			Wait(450)
			TriggerClientEvent("QBCore:Notify", -1, Lang:t("notify.restart_5sec"), "restart", 5000)
			TriggerClientEvent("QBCore:Notify", -1, Lang:t("notify.restart_leavesrv"), "restart", 1000)
		end)
	elseif eventData.secondsRemaining == 60 then
        CreateThread(function()
            Wait(450)
			TriggerClientEvent("QBCore:Notify", -1, Lang:t("notify.restart_1"), "restart", 30000)
            TriggerClientEvent('qb-restarter:sound:Alert', -1)
            TriggerClientEvent('qb-restarter:SavePlayer', -1)

			Wait(30000)
        end)
	elseif eventData.secondsRemaining == 120 then
        CreateThread(function()
            Wait(450)
			TriggerClientEvent("QBCore:Notify", -1, Lang:t("notify.restart_2"), "restart", 30000)
        end)
	elseif eventData.secondsRemaining == 180 then
        CreateThread(function()
            Wait(450)
			TriggerClientEvent("QBCore:Notify", -1, Lang:t("notify.restart_3"), "restart", 30000)
			TriggerClientEvent('qb-restarter:effect:Rain', -1)
		end)
	elseif eventData.secondsRemaining == 240 then
        CreateThread(function()
            Wait(450)
			TriggerClientEvent("QBCore:Notify", -1, Lang:t("notify.restart_4"), "restart", 30000)
        end)
	elseif eventData.secondsRemaining == 300 then
        CreateThread(function()
            Wait(450)
			TriggerClientEvent("QBCore:Notify", -1, Lang:t("notify.restart_5"), "restart", 30000)
			TriggerClientEvent('qb-restarter:effect:Shake', -1)
        end)
	elseif eventData.secondsRemaining == 600 then
        CreateThread(function()
            Wait(450)
			TriggerClientEvent("QBCore:Notify", -1, Lang:t("notify.restart_10"), "restart", 30000)
        end)
	elseif eventData.secondsRemaining == 900 then
        CreateThread(function()
            Wait(450)
			TriggerClientEvent("QBCore:Notify", -1, Lang:t("notify.restart_15"), "restart", 30000)
			TriggerClientEvent('qb-restarter:effect:Shake', -1)
        end)
	elseif eventData.secondsRemaining == 1800 then
        CreateThread(function()
            Wait(450)
			TriggerClientEvent("QBCore:Notify", -1, Lang:t("notify.restart_30"), "restart", 30000)
        end)
    end
end)
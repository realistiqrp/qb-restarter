local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Commands.Add("testrestart", "Test Server Restart System (Admin Only)", {}, false, function(source)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

	QBCore.Functions.Notify("Dit is een test melding voor Server Restarts!", 30000, "restart")
	Wait(30500)
	TriggerClientEvent("QBCore:Notify", src, "Dit is een test melding voor Server Restarts met geluid!", 30000, "restart")
    TriggerClientEvent('qb-restarter:geluid:Alarm')
end)

AddEventHandler('txAdmin:events:scheduledRestart', function(eventData)
	if eventData.secondsRemaining == 3 then
		CreateThread(function()
			Wait(50)
			TriggerClientEvent('qb-restarter:effect:Shake')
		end)
	elseif eventData.secondsRemaining == 5 then
		CreateThread(function()
			Wait(450)
			TriggerClientEvent("QBCore:Notify", src, Lang:t("notify.restart_5sec"), 5000, "restart")
			TriggerClientEvent("QBCore:Notify", src, Lang:t("notify.restart_leavesrv"), 1000, "restart")
		end)
	elseif eventData.secondsRemaining == 60 then
        CreateThread(function()
            Wait(450)
			TriggerClientEvent("QBCore:Notify", src, Lang:t("notify.restart_1"), 30000, "restart")
            TriggerClientEvent('qb-restarter:geluid:Alarm')
            TriggerClientEvent('qb-restarter:SavePlayer')

			Wait(30000)
			TriggerClientEvent('qb-restarter:effect:Shake')
        end)
	elseif eventData.secondsRemaining == 120 then
        CreateThread(function()
            Wait(450)
			TriggerClientEvent("QBCore:Notify", src, Lang:t("notify.restart_2"), 30000, "restart")
        end)
	elseif eventData.secondsRemaining == 180 then
        CreateThread(function()
            Wait(450)
			TriggerClientEvent("QBCore:Notify", src, Lang:t("notify.restart_3"), 30000, "restart")
			TriggerClientEvent('qb-restarter:effect:Shake')
        end)
	elseif eventData.secondsRemaining == 240 then
        CreateThread(function()
            Wait(450)
			TriggerClientEvent("QBCore:Notify", src, Lang:t("notify.restart_4"), 30000, "restart")
        end)
	elseif eventData.secondsRemaining == 300 then
        CreateThread(function()
            Wait(450)
			TriggerClientEvent("QBCore:Notify", src, Lang:t("notify.restart_5"), 30000, "restart")
        end)
	elseif eventData.secondsRemaining == 600 then
        CreateThread(function()
            Wait(450)
			TriggerClientEvent("QBCore:Notify", src, Lang:t("notify.restart_10"), 30000, "restart")
        end)
	elseif eventData.secondsRemaining == 900 then
        CreateThread(function()
            Wait(450)
			TriggerClientEvent("QBCore:Notify", src, Lang:t("notify.restart_15"), 30000, "restart")
        end)
	elseif eventData.secondsRemaining == 1800 then
        CreateThread(function()
            Wait(450)
			TriggerClientEvent("QBCore:Notify", src, Lang:t("notify.restart_30"), 30000, "restart")
        end)
    end
end)
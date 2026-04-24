print("[MONEY-ALL SCRIPT] loaded successfully!")

local QBCore = exports["qb-core"]:GetCoreObject()

RegisterCommand('moneyall', function(source, args)
    local valor = tonumber(args[1]) or 1000

    local players = QBCore.Functions.GetPlayers()

    for _, playerId in ipairs(players) do
        local Player = QBCore.Functions.GetPlayer(playerId)
        
        if Player then
            Player.Functions.AddMoney('cash', valor)
            
            TriggerClientEvent("moneyall:notify", playerId, 
                'Você recebeu $'..valor, 'success')
        end

        Wait(100)
    end
end, false)
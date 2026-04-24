local QBCore = exports["qb-core"]:GetCoreObject()

RegisterNetEvent('moneyall:notify', function(msg, tipo)
    QBCore.Functions.Notify(msg, tipo or 'primary')
end)
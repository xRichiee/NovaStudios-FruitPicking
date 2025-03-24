local QBCore = exports['qb-core']:GetCoreObject()

lib.callback.register('qbx_orangepick:checkShears', function(source)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player then
        return Player.Functions.GetItemByName(Config.RequiredItem) ~= nil
    end
    return false
end)

RegisterServerEvent('qbx_orangepick:giveOrange', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end

    local amount = math.random(Config.OrangeAmount.min, Config.OrangeAmount.max)
    Player.Functions.AddItem(Config.OrangeItem, amount)

    TriggerClientEvent('QBCore:Notify', src, 'You picked ' .. amount .. ' orange(s)!', 'success')
end)

RegisterServerEvent('qbx_orangepick:giveApple', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end

    local amount = math.random(Config.AppleAmount.min, Config.AppleAmount.max)
    Player.Functions.AddItem(Config.AppleItem, amount)

    TriggerClientEvent('QBCore:Notify', src, 'You picked ' .. amount .. ' apple(s)!', 'success')
end)

RegisterServerEvent('qbx_orangepick:givePear', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end

    local amount = math.random(Config.PearAmount.min, Config.PearAmount.max)
    Player.Functions.AddItem(Config.PearItem, amount)

    TriggerClientEvent('QBCore:Notify', src, 'You picked ' .. amount .. ' pear(s)!', 'success')
end)
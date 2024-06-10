local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    -- Trigger headshot capture after the player has loaded their character
    TriggerEvent('qb_headshot:takeHeadshot')
end)

RegisterNetEvent('qb_headshot:takeHeadshot', function()
    local playerPed = PlayerPedId()
    local mugshotStr = exports['MugShotBase64']:GetMugShotBase64(playerPed, true)
    
    if mugshotStr then
        TriggerServerEvent('qb_headshot:saveHeadshot', mugshotStr)
    end
end)

exports('TakePlayerHeadshot', function()
    TriggerEvent('qb_headshot:takeHeadshot')
end)

local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('qb_headshot:saveHeadshot')
AddEventHandler('qb_headshot:saveHeadshot', function(mugshotStr)
    -- print(mugshotStr)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    
    if Player then
        local citizenid = Player.PlayerData.citizenid
        
        exports.oxmysql:execute('UPDATE players SET headshot = ? WHERE citizenid = ?', {mugshotStr, citizenid}, function(result)
            if result.affectedRows > 0 then
                print("Headshot updated successfully for citizenid: " .. citizenid)
            else
                print("Failed to update headshot for citizenid: " .. citizenid)
            end
        end)
    else
        print("Failed to retrieve player data for source: " .. tostring(src))
    end
end)

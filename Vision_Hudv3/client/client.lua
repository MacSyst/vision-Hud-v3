-- Made By Benni (Vision-Service) with <3 for the Community.

Debug = false



RegisterNetEvent('esx:playerLoaded',function(xPlayer, isNew, skin)
    TriggerEvent('esx_status:getStatus', 'thirst', function(status)
        thirst = status.val / 10000
    end)
    TriggerEvent('esx_status:getStatus', 'hunger', function(status)
        hunger = status.val / 10000
    end)

    ESX.TriggerServerCallback('vision_hudv2:getaccounts', function(accounts)    
        SendNUIMessage({
            id = GetPlayerServerId(PlayerId()),
            job = ESX.PlayerData.job.name:gsub("^%l", string.upper),
            rank = ESX.PlayerData.job.grade_name:gsub("^%l", string.upper),
            -- hunger = math.floor(hunger),
            -- thirst = math.floor(thirst),
            accounts = accounts,
        })
    end)
end)

RegisterNetEvent('esx_status:onTick', function(status)
    TriggerEvent('esx_status:getStatus', 'thirst', function(status)
        thirst = status.val / 10000
    end)
    TriggerEvent('esx_status:getStatus', 'hunger', function(status)
        hunger = status.val / 10000
    end)

    ESX.TriggerServerCallback('vision_hudv2:getaccounts', function(accounts)    
        SendNUIMessage({
            id = GetPlayerServerId(PlayerId()),
            job = ESX.PlayerData.job.name:gsub("^%l", string.upper),
            rank = ESX.PlayerData.job.grade_name:gsub("^%l", string.upper),
            -- hunger = math.floor(hunger),
            -- thirst = math.floor(thirst),
            accounts = accounts,
        })
    end)
end)

if Debug then
    RegisterCommand("update", function(source, args, rawCommand)
        TriggerEvent('esx_status:getStatus', 'thirst', function(status)
            thirst = status.val / 10000
        end)
        TriggerEvent('esx_status:getStatus', 'hunger', function(status)
            hunger = status.val / 10000
        end)

        ESX.TriggerServerCallback('vision_hudv2:getaccounts', function(accounts)    
            SendNUIMessage({
                id = GetPlayerServerId(PlayerId()),
                job = ESX.PlayerData.job.name:gsub("^%l", string.upper),
                rank = ESX.PlayerData.job.grade_name:gsub("^%l", string.upper),
                hunger = math.floor(hunger),
                thirst = math.floor(thirst),
                accounts = accounts,
            })
        end)
    end, false)
end

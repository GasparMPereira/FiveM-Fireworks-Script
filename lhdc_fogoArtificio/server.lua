Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)
        local year, month, day, hours, minutes, seconds = os.date("%Y"), os.date("%m"), os.date("%d"), os.date("%H"), os.date("%M"), os.date("%S")
        if((month == '01') and (day == '01') and (hours == '00') and (minutes == '00') and (seconds == '00'))then
            print('Started Fireworks')
            for _, playerId in ipairs(GetPlayers()) do
                TriggerClientEvent("lhdc_fogoArtificio:start", playerId)
            end
        end
        if((month == '01') and (day == '01') and (hours == '00') and (minutes == Config.FireworksTime) and (seconds == '00'))then
            print('Stoped Fireworks')
            for _, playerId in ipairs(GetPlayers()) do
                TriggerClientEvent("lhdc_fogoArtificio:stop", playerId)
            end
        end
    end
end)
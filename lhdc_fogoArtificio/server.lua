Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)
        local year, month, day, hours, minutes, seconds = os.date("%Y"), os.date("%m"), os.date("%d"), os.date("%H"), os.date("%M"), os.date("%S")
        if((month == '01') and (day == '01') and (hours == '00') and (minutes == '00') and (seconds == '00'))then
            print('Started Fireworks')
            TriggerClientEvent("lhdc_fogoArtificio:start", -1)
        end
        if((month == '01') and (day == '01') and (hours == '00') and (minutes == Config.FireworksTime) and (seconds == '00'))then
            print('Stoped Fireworks')
            TriggerClientEvent("lhdc_fogoArtificio:stop", -1)
        end
    end
end)

RegisterCommand("stopfw", function(source, args, rawCommand)
    -- If the source is > 0, then that means it must be a player.
    if (source > 0) then
           print('Stoped Fireworks')
           TriggerClientEvent("lhdc_fogoArtificio:stop", -1)
    -- If it's not a player, then it must be RCON, a resource, or the server console directly.
    else
        print("This command was executed by the server console, RCON client, or a resource.")
    end
end, false --[[this command is not restricted, everyone can use this.]])


RegisterCommand("startfw", function(source, args, rawCommand)
    -- If the source is > 0, then that means it must be a player.
    if (source > 0) then
            print('Started Fireworks')
            TriggerClientEvent("lhdc_fogoArtificio:start", -1)
    -- If it's not a player, then it must be RCON, a resource, or the server console directly.
    else
        print("This command was executed by the server console, RCON client, or a resource.")
    end
end, false --[[this command is not restricted, everyone can use this.]])

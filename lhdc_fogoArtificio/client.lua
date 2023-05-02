local fireworking = false
Citizen.CreateThread(function()
	local pos = {-74.61, -818.97, 326.18} -- Maze Bank

    local pos1 = {215.0, -921.61, 60.0} -- Center Park
	-- local pos1 = {-439.01, 1075.44, 352.44} -- Galileo

    local pos2 = {711.36, 1197.95, 348.51} -- PT Logo
    -- local pos2 = {751.12, 1260.17, 360.3} -- Vinewood Sign
	
	local delay = 400

    local asset1 = "proj_indep_firework"
    RequestNamedPtfxAsset(asset1)
    while not HasNamedPtfxAssetLoaded(asset1) do
        Citizen.Wait(1)
    end
    local asset2 = "proj_indep_firework_v2"
    RequestNamedPtfxAsset(asset2)
	while not HasNamedPtfxAssetLoaded(asset2) do
        Citizen.Wait(1)
    end
	local asset3 = "scr_indep_fireworks"
    RequestNamedPtfxAsset(asset3)
	while not HasNamedPtfxAssetLoaded(asset3) do
        Citizen.Wait(1)
    end
    local asset4 = "proj_xmas_firework"
    RequestNamedPtfxAsset(asset4)
    while not HasNamedPtfxAssetLoaded(asset4) do
        Citizen.Wait(1)
    end

    while true do
        if(fireworking)then
            Citizen.Wait(delay)
            if(Config.SpawnFireworksInMazebankTower)then
                UseParticleFxAssetNextCall(asset1)
                local part = StartParticleFxNonLoopedAtCoord("scr_indep_firework_air_burst", pos[1] + math.random(-100, 100), pos[2] + math.random(-100, 100), pos[3] + 25 + math.random(100, 150), 0.0, 0.0, 0.0, 2.0, false, false, false, false)
            end
            if(Config.SpawnFireworksInCenterPark)then
                UseParticleFxAssetNextCall(asset1)
                local part = StartParticleFxNonLoopedAtCoord("scr_indep_firework_air_burst", pos1[1] + math.random(-50, 50), pos1[2] + math.random(-100, 100), pos1[3] + 25 + math.random(100, 150), 0.0, 0.0, 0.0, 2.0, false, false, false, false)
            end
            if(Config.SpawnFireworksInVinewoodLogo)then
                UseParticleFxAssetNextCall(asset1)
                local part = StartParticleFxNonLoopedAtCoord("scr_indep_firework_air_burst", pos2[1] + math.random(-100, 100), pos2[2] + math.random(-100, 100), pos2[3] + 25 + math.random(100, 150), 0.0, 0.0, 0.0, 2.0, false, false, false, false)
            end

            Citizen.Wait(delay)
            if(Config.SpawnFireworksInMazebankTower)then
                UseParticleFxAssetNextCall(asset2)
                local part = StartParticleFxNonLoopedAtCoord("scr_firework_indep_spiral_burst_rwb", pos[1] + math.random(-200, 200), pos[2] + math.random(-200, 200), pos[3] + 25 + math.random(100, 200), 0.0, 0.0, 0.0, 5.0, false, false, false, false)
            end
            if(Config.SpawnFireworksInCenterPark)then
                UseParticleFxAssetNextCall(asset2)
                local part = StartParticleFxNonLoopedAtCoord("scr_firework_indep_spiral_burst_rwb", pos1[1] + math.random(-100, 100), pos1[2] + math.random(-200, 200), pos1[3] + 25 + math.random(100, 200), 0.0, 0.0, 0.0, 5.0, false, false, false, false)
            end
            if(Config.SpawnFireworksInVinewoodLogo)then
                UseParticleFxAssetNextCall(asset2)
                local part = StartParticleFxNonLoopedAtCoord("scr_firework_indep_spiral_burst_rwb", pos2[1] + math.random(-200, 200), pos2[2] + math.random(-200, 200), pos2[3] + 25 + math.random(100, 200), 0.0, 0.0, 0.0, 5.0, false, false, false, false)
            end

            Citizen.Wait(delay)
            if(Config.SpawnFireworksInMazebankTower)then
                UseParticleFxAssetNextCall(asset2)
                local part = StartParticleFxNonLoopedAtCoord("scr_firework_indep_repeat_burst_rwb", pos[1] + math.random(-100, 100), pos[2] + math.random(-100, 100), pos[3] + 25 + math.random(100, 200), 0.0, 0.0, 0.0, 5.0, false, false, false, false)
            end
            if(Config.SpawnFireworksInCenterPark)then
                UseParticleFxAssetNextCall(asset2)
                local part = StartParticleFxNonLoopedAtCoord("scr_firework_indep_repeat_burst_rwb", pos1[1] + math.random(-50, 50), pos1[2] + math.random(-100, 100), pos1[3] + 25 + math.random(100, 200), 0.0, 0.0, 0.0, 5.0, false, false, false, false)
            end
            if(Config.SpawnFireworksInVinewoodLogo)then
                UseParticleFxAssetNextCall(asset2)
                local part = StartParticleFxNonLoopedAtCoord("scr_firework_indep_repeat_burst_rwb", pos2[1] + math.random(-100, 100), pos2[2] + math.random(-100, 100), pos2[3] + 25 + math.random(100, 200), 0.0, 0.0, 0.0, 5.0, false, false, false, false)
            end

            Citizen.Wait(delay)
            if(Config.SpawnFireworksInMazebankTower)then
                UseParticleFxAssetNextCall(asset3)
                local part = StartParticleFxNonLoopedAtCoord("scr_indep_firework_starburst", pos[1] + math.random(-100, 100), pos[2] + math.random(-100, 100), pos[3] + 25 + math.random(50, 100), 0.0, 0.0, 0.0, 5.0, false, false, false, false)
            end
            if(Config.SpawnFireworksInCenterPark)then
                UseParticleFxAssetNextCall(asset3)
                local part = StartParticleFxNonLoopedAtCoord("scr_indep_firework_starburst", pos1[1] + math.random(-50, 50), pos1[2] + math.random(-100, 100), pos1[3] + 25 + math.random(50, 100), 0.0, 0.0, 0.0, 5.0, false, false, false, false)
            end
            if(Config.SpawnFireworksInVinewoodLogo)then
                UseParticleFxAssetNextCall(asset3)
                local part = StartParticleFxNonLoopedAtCoord("scr_indep_firework_starburst", pos2[1] + math.random(-100, 100), pos2[2] + math.random(-100, 100), pos2[3] + 25 + math.random(50, 100), 0.0, 0.0, 0.0, 5.0, false, false, false, false)
            end

            Citizen.Wait(delay)
            if(Config.SpawnFireworksInMazebankTower)then
                UseParticleFxAssetNextCall(asset3)
                local part = StartParticleFxNonLoopedAtCoord("scr_indep_firework_shotburst", pos[1] + math.random(-100, 100), pos[2] + math.random(-100, 100), pos[3] + 25 + math.random(50, 200), 0.0, 0.0, 0.0, 5.0, false, false, false, false)
            end
            if(Config.SpawnFireworksInCenterPark)then
                UseParticleFxAssetNextCall(asset3)
                local part = StartParticleFxNonLoopedAtCoord("scr_indep_firework_shotburst", pos1[1] + math.random(-50, 50), pos1[2] + math.random(-100, 100), pos1[3] + 25 + math.random(50, 200), 0.0, 0.0, 0.0, 5.0, false, false, false, false)
            end
            if(Config.SpawnFireworksInVinewoodLogo)then
                UseParticleFxAssetNextCall(asset3)
                local part = StartParticleFxNonLoopedAtCoord("scr_indep_firework_shotburst", pos2[1] + math.random(-100, 100), pos2[2] + math.random(-100, 100), pos2[3] + 25 + math.random(50, 200), 0.0, 0.0, 0.0, 5.0, false, false, false, false)
            end

            Citizen.Wait(delay)
            if(Config.SpawnFireworksInMazebankTower)then
                UseParticleFxAssetNextCall(asset3)
                local part = StartParticleFxNonLoopedAtCoord("scr_indep_firework_fountain", pos[1], pos[2], pos[3], 0.0, 0.0, 0.0, 5.0, false, false, false, false)
            end
            if(Config.SpawnFireworksInCenterPark)then
                UseParticleFxAssetNextCall(asset3)
                local part = StartParticleFxNonLoopedAtCoord("scr_indep_firework_fountain", pos1[1], pos1[2], pos1[3], 0.0, 0.0, 0.0, 5.0, false, false, false, false)
            end
            if(Config.SpawnFireworksInVinewoodLogo)then
                UseParticleFxAssetNextCall(asset3)
                local part = StartParticleFxNonLoopedAtCoord("scr_indep_firework_fountain", pos2[1], pos2[2], pos2[3], 0.0, 0.0, 0.0, 5.0, false, false, false, false)
            end
        
            Citizen.Wait(delay)
            if(Config.SpawnFireworksInMazebankTower)then
                UseParticleFxAssetNextCall(asset4)
                local part = StartParticleFxNonLoopedAtCoord("scr_firework_xmas_repeat_burst_rgw", pos[1] + math.random(-100, 100), pos[2] + math.random(-100, 100), pos[3] + 25 + math.random(50, 200), 0.0, 0.0, 0.0, 5.0, false, false, false, false)
            end
            if(Config.SpawnFireworksInCenterPark)then
                UseParticleFxAssetNextCall(asset4)
                local part = StartParticleFxNonLoopedAtCoord("scr_firework_xmas_repeat_burst_rgw", pos1[1] + math.random(-50, 50), pos1[2] + math.random(-100, 100), pos1[3] + 25 + math.random(50, 200), 0.0, 0.0, 0.0, 5.0, false, false, false, false)
            end
            if(Config.SpawnFireworksInVinewoodLogo)then
                UseParticleFxAssetNextCall(asset4)
                local part = StartParticleFxNonLoopedAtCoord("scr_firework_xmas_repeat_burst_rgw", pos2[1] + math.random(-100, 100), pos2[2] + math.random(-100, 100), pos2[3] + 25 + math.random(50, 200), 0.0, 0.0, 0.0, 5.0, false, false, false, false)
            end

            Citizen.Wait(delay)
            if(Config.SpawnFireworksInMazebankTower)then
                UseParticleFxAssetNextCall(asset2)
                local part = StartParticleFxNonLoopedAtCoord("scr_firework_indep_ring_burst_rwb", pos[1] + math.random(-100, 100), pos[2] + math.random(-100, 100), pos[3] + 25 + math.random(50, 200), 0.0, 0.0, 0.0, 5.0, false, false, false, false)
            end
            if(Config.SpawnFireworksInCenterPark)then
                UseParticleFxAssetNextCall(asset2)
                local part = StartParticleFxNonLoopedAtCoord("scr_firework_indep_ring_burst_rwb", pos1[1] + math.random(-50, 50), pos1[2] + math.random(-100, 100), pos1[3] + 25 + math.random(50, 200), 0.0, 0.0, 0.0, 5.0, false, false, false, false)
            end
            if(Config.SpawnFireworksInVinewoodLogo)then
                UseParticleFxAssetNextCall(asset2)
                local part = StartParticleFxNonLoopedAtCoord("scr_firework_indep_ring_burst_rwb", pos2[1] + math.random(-100, 100), pos2[2] + math.random(-100, 100), pos2[3] + 25 + math.random(50, 200), 0.0, 0.0, 0.0, 5.0, false, false, false, false)
            end
                
            Citizen.Wait(delay)
            if(Config.SpawnFireworksInMazebankTower)then
                UseParticleFxAssetNextCall(asset2)
                local part = StartParticleFxNonLoopedAtCoord("scr_xmas_firework_burst_fizzle", pos[1] + math.random(-100, 100), pos[2] + math.random(-100, 100), pos[3] + 25 + math.random(50, 200), 0.0, 0.0, 0.0, 5.0, false, false, false, false)
            end
            if(Config.SpawnFireworksInCenterPark)then
                UseParticleFxAssetNextCall(asset2)
                local part = StartParticleFxNonLoopedAtCoord("scr_xmas_firework_burst_fizzle", pos1[1] + math.random(-50, 50), pos1[2] + math.random(-100, 100), pos1[3] + 25 + math.random(50, 200), 0.0, 0.0, 0.0, 5.0, false, false, false, false)
            end
            if(Config.SpawnFireworksInVinewoodLogo)then
                UseParticleFxAssetNextCall(asset2)
                local part = StartParticleFxNonLoopedAtCoord("scr_xmas_firework_burst_fizzle", pos2[1] + math.random(-100, 100), pos2[2] + math.random(-100, 100), pos2[3] + 25 + math.random(50, 200), 0.0, 0.0, 0.0, 5.0, false, false, false, false)
            end
        else
            Citizen.Wait(1100)
        end
    end
end)

RegisterNetEvent("lhdc_fogoArtificio:start")
AddEventHandler("lhdc_fogoArtificio:start", function()
    fireworking = true
    if(Config.TurnCityLightsOff)then
        SetArtificialLightsState(true)
    end
end)
RegisterNetEvent("lhdc_fogoArtificio:stop")
AddEventHandler("lhdc_fogoArtificio:stop", function()
    fireworking = false
    if(Config.TurnCityLightsOff)then
        SetArtificialLightsState(false)
    end
end)
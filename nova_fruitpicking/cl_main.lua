local inZone = false


-- Create Orange Grove Blip
CreateThread(function()
    if Config.OrangeBlip.enabled then
        local blip = AddBlipForCoord(Config.OrangeBlip.coords)
        SetBlipSprite(blip, Config.OrangeBlip.sprite)
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, Config.OrangeBlip.scale)
        SetBlipColour(blip, Config.OrangeBlip.colour)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentString(Config.OrangeBlip.name)
        EndTextCommandSetBlipName(blip)
    end
        -- Create Apple Orchard Blip
    if Config.AppleBlip.enabled then
        local blip = AddBlipForCoord(Config.AppleBlip.coords)
        SetBlipSprite(blip, Config.AppleBlip.sprite)
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, Config.AppleBlip.scale)
        SetBlipColour(blip, Config.AppleBlip.colour)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentString(Config.AppleBlip.name)
        EndTextCommandSetBlipName(blip)
    end

    -- Create Pear Tree Blip
    if Config.PearBlip.enabled then
        local blip = AddBlipForCoord(Config.PearBlip.coords)
        SetBlipSprite(blip, Config.PearBlip.sprite)
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, Config.PearBlip.scale)
        SetBlipColour(blip, Config.PearBlip.colour)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentString(Config.PearBlip.name)
        EndTextCommandSetBlipName(blip)
    end
    
end)

-- Setup ox_target interactions for trees
CreateThread(function()
    for _, coords in pairs(Config.OrangeTrees) do
        exports.ox_target:addBoxZone({
            coords = coords + vec3(0, 0, 2.0), -- Raised to middle of tree
            size = vec3(2, 2, 2),
            rotation = 0,
            debug = false,
            options = {
                {
                    name = 'pick_orange',
                    icon = 'fas fa-apple-alt',
                    label = 'Pick Orange',
                    distance = 2.0,
                    onSelect = function()
                        local hasItem = lib.callback.await('qbx_orangepick:checkShears', false)
                        if not hasItem then
                            lib.notify({
                                title = 'Missing Item',
                                description = 'You need shears to pick oranges!',
                                type = 'error'
                            })
                            return
                        end

                        -- Play animation & show ox_lib progress bar
                        lib.requestAnimDict('amb@world_human_gardener_plant@male@enter')
                        TaskPlayAnim(cache.ped, 'amb@world_human_gardener_plant@male@enter', 'enter', 8.0, -8.0, -1, 1, 0, false, false, false)

                        local success = lib.progressCircle({
                            duration = 3500,
                            label = 'Picking Orange...',
                            position = 'bottom',
                            useWhileDead = false,
                            canCancel = false,
                            disable = {
                                move = true,
                                car = true,
                                combat = true,
                            },
                        })

                        ClearPedTasks(cache.ped)

                        if success then
                            TriggerServerEvent('qbx_orangepick:giveOrange')
                        end
                    end
                }
            }
        })
    end
end)

-- Setup ox_target interactions for apple trees
CreateThread(function()
    for _, coords in pairs(Config.AppleTrees) do
        exports.ox_target:addBoxZone({
            coords = coords + vec3(0, 0, 2.0),
            size = vec3(2, 2, 2),
            rotation = 0,
            debug = false,
            options = {
                {
                    name = 'pick_apple',
                    icon = 'fas fa-apple-alt',
                    label = 'Pick Apple',
                    distance = 2.0,
                    onSelect = function()
                        local hasItem = lib.callback.await('qbx_orangepick:checkShears', false)
                        if not hasItem then
                            lib.notify({
                                title = 'Missing Item',
                                description = 'You need shears to pick apples!',
                                type = 'error'
                            })
                            return
                        end

                        lib.requestAnimDict('amb@world_human_gardener_plant@male@enter')
                        TaskPlayAnim(cache.ped, 'amb@world_human_gardener_plant@male@enter', 'enter', 8.0, -8.0, -1, 1, 0, false, false, false)

                        local success = lib.progressCircle({
                            duration = 3500,
                            label = 'Picking Apple...',
                            position = 'bottom',
                            useWhileDead = false,
                            canCancel = false,
                            disable = {
                                move = true,
                                car = true,
                                combat = true,
                            },
                        })

                        ClearPedTasks(cache.ped)

                        if success then
                            TriggerServerEvent('qbx_orangepick:giveApple')
                        end
                    end
                }
            }
        })
    end
end)

-- Setup ox_target interactions for pear trees
CreateThread(function()
    for _, coords in pairs(Config.PearTrees) do
        exports.ox_target:addBoxZone({
            coords = coords + vec3(0, 0, 2.0),
            size = vec3(2, 2, 2),
            rotation = 0,
            debug = false,
            options = {
                {
                    name = 'pick_pear',
                    icon = 'fas fa-apple-alt',
                    label = 'Pick Pear',
                    distance = 2.0,
                    onSelect = function()
                        local hasItem = lib.callback.await('qbx_orangepick:checkShears', false)
                        if not hasItem then
                            lib.notify({
                                title = 'Missing Item',
                                description = 'You need shears to pick pears!',
                                type = 'error'
                            })
                            return
                        end

                        lib.requestAnimDict('amb@world_human_gardener_plant@male@enter')
                        TaskPlayAnim(cache.ped, 'amb@world_human_gardener_plant@male@enter', 'enter', 8.0, -8.0, -1, 1, 0, false, false, false)

                        local success = lib.progressCircle({
                            duration = 3500,
                            label = 'Picking Pear...',
                            position = 'bottom',
                            useWhileDead = false,
                            canCancel = false,
                            disable = {
                                move = true,
                                car = true,
                                combat = true,
                            },
                        })

                        ClearPedTasks(cache.ped)

                        if success then
                            TriggerServerEvent('qbx_orangepick:givePear')
                        end
                    end
                }
            }
        })
    end
end)

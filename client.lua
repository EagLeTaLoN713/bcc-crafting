local iscrafting = false
local playerjob
local propinfo
local loctitle
local type = 0


keys = Config.keys

function whenKeyJustPressed(key)
    if Citizen.InvokeNative(0x580417101DDB492F, 0, key) then
        return true
    else
        return false
    end
end

local keyopen = false
local craftingx = Config.crafting
function contains(table, element)
    if table ~= 0 then
        for k, v in pairs(table) do
            if v == element then
                return true
            end
        end
    end
    return false
end

function OpenCraftMenu()
    WarMenu.OpenMenu('craftmenu')
end

Citizen.CreateThread(function()
    WarMenu.CreateMenu('Craft', "Craft")
    WarMenu.SetSubTitle('Craft', 'Crafting Menu')

    local _source = source
    while true do

        local ped = GetPlayerPed(-1)
        local coords = GetEntityCoords(PlayerPedId())

        if WarMenu.IsMenuOpened('Craft') then
            if WarMenu.MenuButton('Start Items Craft', "Craft") then
                OpenCraftMenu()
                type = 0
            end
            if WarMenu.MenuButton('Start Items Cook', "Craft") then
                OpenCraftMenu()
                type = 1
            end
            WarMenu.Display()
        end
        Citizen.Wait(0)
    end
end)

Citizen.CreateThread(function()
    WarMenu.CreateMenu('craftmenu', 'craft menu')
    repeat
        if WarMenu.IsMenuOpened('craftmenu') then
            if type == 0 then
                for i = 1, #craftingx do
                    if loctitle ~= 0 then

                        if contains(craftingx[i]['Location'], loctitle) and craftingx[i]['Type'] == 0 then
                            if contains(craftingx[i]['Job'], playerjob) or craftingx[i]['Job'] == 0 then
                                if WarMenu.Button(craftingx[i]['SubText'], craftingx[i]['Text'], craftingx[i]['Desc']) then
                                    TriggerEvent("vorpinputs:getInput", "Confirm", "Amount", function(cb)
                                        local count = tonumber(cb)
                                        if count ~= nil and count ~= 'close' and count ~= '' and count ~= 0 then
                                            TriggerServerEvent('bcc:craftingalg', craftingx[i], count)
                                        else
                                            TriggerEvent("vorp:TipBottom", "Invalid Amount", 4000)
                                        end
                                    end)
                                    WarMenu.CloseMenu()
                                end
                            end
                        end
                    else
                        if craftingx[i]['Location'] == 0 and craftingx[i]['Type'] == 0 then
                            if contains(craftingx[i]['Prop'], propinfo) or craftingx[i]['Prop'] == 0 then
                                if contains(craftingx[i]['Job'], playerjob) or craftingx[i]['Job'] == 0 then
                                    if WarMenu.Button(craftingx[i]['Text'], craftingx[i]['SubText'],
                                        craftingx[i]['Desc']) then
                                        TriggerEvent("vorpinputs:getInput", "Confirm", "Amount", function(cb)
                                            local count = tonumber(cb)
                                            if count ~= nil and count ~= 'close' and count ~= '' and count ~= 0 then
                                                TriggerServerEvent('bcc:craftingalg', craftingx[i], count)
                                            else
                                                TriggerEvent("vorp:TipBottom", "Invalid Amount", 4000)
                                            end
                                        end)
                                        WarMenu.CloseMenu()
                                    end
                                end
                            end
                        end
                    end
                end

            elseif type == 1 then
                for i = 1, #craftingx do
                    if loctitle ~= 0 then

                        if contains(craftingx[i]['Location'], loctitle) and craftingx[i]['Type'] == 1 then
                            if contains(craftingx[i]['Job'], playerjob) or craftingx[i]['Job'] == 0 then
                                if WarMenu.Button(craftingx[i]['Text'], craftingx[i]['SubText'], craftingx[i]['Desc']) then
                                    TriggerEvent("vorpinputs:getInput", "Confirm", "Amount", function(cb)
                                        local count = tonumber(cb)
                                        if count ~= nil and count ~= 'close' and count ~= '' and count ~= 0 then
                                            TriggerServerEvent('bcc:craftingalg', craftingx[i], count)
                                        else
                                            TriggerEvent("vorp:TipBottom", "Invalid Amount", 4000)
                                        end
                                    end)
                                    WarMenu.CloseMenu()
                                end
                            end
                        end
                    else
                        if craftingx[i]['Location'] == 0 and craftingx[i]['Type'] == 1 then
                            if contains(craftingx[i]['Prop'], propinfo) or craftingx[i]['Prop'] == 0 then
                                if contains(craftingx[i]['Job'], playerjob) or craftingx[i]['Job'] ==
                                    0 then
                                    if WarMenu.Button(craftingx[i]['Text'], craftingx[i]['SubText'],
                                        craftingx[i]['Desc']) then
                                        TriggerEvent("vorpinputs:getInput", "Confirm", "Amount", function(cb)
                                            local count = tonumber(cb)
                                            if count ~= nil and count ~= 'close' and count ~= '' and count ~= 0 then
                                                TriggerServerEvent('bcc:craftingalg', craftingx[i], count)
                                            else
                                                TriggerEvent("vorp:TipBottom", "Invalid Amount", 4000)
                                            end
                                        end)
                                        WarMenu.CloseMenu()
                                    end
                                end
                            end
                        end
                    end

                end

            end
            WarMenu.Display()
        end
        Citizen.Wait(0)
    until false
end)

function DrawTxt(str, x, y, w, h, enableShadow, col1, col2, col3, a, centre)
    local str = CreateVarString(10, "LITERAL_STRING", str)
    SetTextScale(w, h)
    SetTextColor(math.floor(col1), math.floor(col2), math.floor(col3), math.floor(a))
    SetTextCentre(centre)
    SetTextFontForCurrentCommand(15)
    if enableShadow then
        SetTextDropshadow(1, 0, 0, 0, 255)
    end
    DisplayText(str, x, y)
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        local player = PlayerPedId()
        local Coords = GetEntityCoords(player)
        for k, v in pairs(Config.craftingProps) do
            local campfire = DoesObjectOfTypeExistAtCoords(Coords.x, Coords.y, Coords.z, 1.5, GetHashKey(v), 0) -- prop required to interact
            if campfire ~= false and iscrafting == false then
                DrawTxt("Press [~e~G~q~] to Craft", 0.50, 0.95, 0.7, 0.5, true, 255, 255, 255, 255, true)
                if whenKeyJustPressed(keys["G"]) then
                    TriggerServerEvent('bcc:findjob')
                    Wait(500)
                    if keyopen == false then
                        propinfo = v
                        loctitle = 0
                        WarMenu.OpenMenu('Craft')
                    else
                    end
                end
            end
        end
        for k, v in pairs(Config.locations) do
            local dist = GetDistanceBetweenCoords(v.x, v.y, v.z, Coords.x, Coords.y, Coords.z, 0)
            if 2.5 > dist then
                DrawTxt("Press [~e~G~q~] to Craft", 0.50, 0.95, 0.7, 0.5, true, 255, 255, 255, 255, true)
                if whenKeyJustPressed(keys["G"]) then
                    TriggerServerEvent('bcc:findjob')
                    Wait(500)
                    if keyopen == false then
                        loctitle = k
                        WarMenu.OpenMenu('Craft')
                    else
                    end
                end
            end
        end
    end
end)

RegisterNetEvent("bcc_crafting:sendjob")
AddEventHandler("bcc_crafting:sendjob", function(job)
    playerjob = job
end)

RegisterNetEvent("bcc:crafting")
AddEventHandler("bcc:crafting", function()
    local playerPed = PlayerPedId()
    iscrafting = true
    TaskStartScenarioInPlace(playerPed, GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), 15000, true, false, false, false)
    exports['progressBars']:startUI(15000, "Crafting...")
    Citizen.Wait(15000)
    keyopen = false
    iscrafting = false
end)

if Config.commands.campfire == true then
    RegisterCommand("campfire", function(source, args, rawCommand)
        local player = PlayerPedId()
        local v = GetEntityCoords(player)
    
        local model = 'P_CAMPFIRECOMBINED01X'
    
        local r = RequestModel(model)
        local storage = CreateObject(r, v.x + 5.0, v.y + 0.0, v.z + 0.0, true, false, true);
        PlaceObjectOnGroundProperly(storage)
    end, false) 
end

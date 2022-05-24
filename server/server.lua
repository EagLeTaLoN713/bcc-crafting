-- Made by Blue & Dungeon for bcc County RP
-- Credits to malik & the creator of kcrp_boats_vorp

TriggerEvent("getCore",function(core)
    VorpCore = core
end)

VorpInv = exports.vorp_inventory:vorp_inventoryApi()

RegisterServerEvent('bcc:findjob')
AddEventHandler( 'bcc:findjob', function ()
    local _source = source
    local Character = VorpCore.getUser(_source).getUsedCharacter
    local job = Character.job
    TriggerClientEvent("bcc_crafting:sendjob",_source,job)
end)


RegisterServerEvent('bcc:craftingalg')
AddEventHandler( 'bcc:craftingalg', function (crafting, countz)
    local _source = source
    local Character = VorpCore.getUser(_source).getUsedCharacter
    local job2 = Character.job
    local job       = crafting['Job']
    local craft = false
    


    if job == 0 then 
        craft = true
    end
    if job ~=0 then
        for k,v in pairs(job) do  
            if v == job2 then 
                craft = true 
            end
        end
    end
    if craft then 
        -- Check that the user has all crafting items available
        local reward = crafting['Reward']

        local craftcheck = true
        for index, item in pairs(crafting.Items) do  
            local pcount = VorpInv.getItemCount(source, item.name)
            local icount = item.count * countz

            if pcount < icount then
                craftcheck = false
                break
            end
        end

        if craftcheck == true then
            TriggerClientEvent("bcc:crafting", source)
            
            -- Loop through and remove each item
            for index, item in pairs(crafting.Items) do  
                VorpInv.subItem(source, item.name, item.count * countz)
            end
            
            -- Give crafted item(s) to player
            for k,v in pairs(reward) do
                local countx = v.count * countz
                VorpInv.addItem(source, v.name, countx)
            end
            TriggerClientEvent("vorp:TipRight", source, "You finished crafting", 3000)
        else
            TriggerClientEvent("vorp:TipRight", source, "Not enough material for this recipe", 3000)
        end
    else
        TriggerClientEvent("vorp:TipRight", source, "You dont have the required job "..job, 3000)
    end

end)
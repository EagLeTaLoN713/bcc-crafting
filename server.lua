-- Made by Blue & Dungeon for Syn County RP
-- Credits to malik & the creator of kcrp_boats_vorp

TriggerEvent("getCore",function(core)
    VorpCore = core
end)

VorpInv = exports.vorp_inventory:vorp_inventoryApi()

RegisterServerEvent('syn:findjob')
AddEventHandler( 'syn:findjob', function ()
    local _source = source
    local Character = VorpCore.getUser(_source).getUsedCharacter
    local job = Character.job
    TriggerClientEvent("syn_crafting:sendjob",_source,job)
end)


RegisterServerEvent('syn:craftingalg')
AddEventHandler( 'syn:craftingalg', function (crafting, countz)
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
            TriggerClientEvent("syn:crafting", source)
            
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



        -- if min >= count then
        --     if count2 == min6 then 
        --         VorpInv.subItem(source, item, count)
        --         TriggerClientEvent("syn:crafting", source)
        --         for k,v in pairs(reward) do
        --             local countx = v.count * countz
        --             VorpInv.addItem(source, v.name, countx)
        --         end
        --         TriggerClientEvent("vorp:TipRight", source, "You finished crafting", 3000)
        --     elseif min2 > min6 then 
        --         if count3 == min6 then
        --             if min2 >= count2 then
        --                 VorpInv.subItem(source, item, count)
        --                 VorpInv.subItem(source, item2, count2)
        --                 TriggerClientEvent("syn:crafting", source)
        --                 for k,v in pairs(reward) do
        --                     local countx = v.count * countz
        --                     VorpInv.addItem(source, v.name, countx)
        --                 end
        --                 TriggerClientEvent("vorp:TipRight", source, "You finished crafting", 3000)
        --             else
        --                 TriggerClientEvent("vorp:TipRight", source, "Not enough material for this recipe", 3000)
        --             end
        --         elseif min3> min6 then
        --             if min3 >= count3 then
        --                 VorpInv.subItem(source, item, count)
        --                 VorpInv.subItem(source, item2, count2)
        --                 VorpInv.subItem(source, item3, count3)
        --                 TriggerClientEvent("syn:crafting", source)
        --                 for k,v in pairs(reward) do
        --                     local countx = v.count * countz
        --                     VorpInv.addItem(source, v.name, countx)
        --                 end
        --                 TriggerClientEvent("vorp:TipRight", source, "You finished crafting", 3000)
        --             else
        --                 TriggerClientEvent("vorp:TipRight", source, "Not enough material for this recipe", 3000)
        --             end
        --         elseif min4> min6 then
        --             if min4 >= count4 then
        --                 VorpInv.subItem(source, item, count)
        --                 VorpInv.subItem(source, item2, count2)
        --                 VorpInv.subItem(source, item3, count3)
        --                 VorpInv.subItem(source, item4, count4)
        --                 TriggerClientEvent("syn:crafting", source)
        --                 for k,v in pairs(reward) do
        --                     local countx = v.count * countz
        --                     VorpInv.addItem(source, v.name, countx)
        --                 end
        --                 TriggerClientEvent("vorp:TipRight", source, "You finished crafting", 3000)
        --             else
        --                 TriggerClientEvent("vorp:TipRight", source, "Not enough material for this recipe", 3000)
        --             end
        --         elseif min5> min6 then
        --             if min5 >= count5 then
        --                 VorpInv.subItem(source, item, count)
        --                 VorpInv.subItem(source, item2, count2)
        --                 VorpInv.subItem(source, item3, count3)
        --                 VorpInv.subItem(source, item4, count4)
        --                 VorpInv.subItem(source, item5, count5)
        --                 TriggerClientEvent("syn:crafting", source)
        --                 for k,v in pairs(reward) do
        --                     local countx = v.count * countz
        --                     VorpInv.addItem(source, v.name, countx)
        --                 end
        --                 TriggerClientEvent("vorp:TipRight", source, "You finished crafting", 3000)
        --             else
        --                 TriggerClientEvent("vorp:TipRight", source, "Not enough material for this recipe", 3000)
        --             end
        --         else
        --             TriggerClientEvent("vorp:TipRight", source, "Not enough material for this recipe", 3000)
        --         end
        --     else 
        --         TriggerClientEvent("vorp:TipRight", source, "Not enough material for this recipe", 3000)
        --     end
        -- else
        -- TriggerClientEvent("vorp:TipRight", source, "Not enough material for this recipe", 3000)
        -- end
    else
        TriggerClientEvent("vorp:TipRight", source, "You dont have the required job "..job, 3000)
    end

end)
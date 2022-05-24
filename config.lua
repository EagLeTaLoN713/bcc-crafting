Config = {}


Config.interactiondist = 2.5 -- distance to interact with Location

Config.locations = { -- list of all crafting Locations
    --["Location1"] = {x = 499.64,y = 677.99,z =117.45},
   -- ["Location2"] = {x = 2266.73,y = -767.57,z =42.32},
}

Config.keys = {
    G = 0x760A9C6F
}

Config.commands = {
    campfire = false
}

Config.craftingProps = {"P_CAMPFIRECOMBINED01X","p_campfirefresh01x","p_fireplacelogs01x","p_woodstove01x","p_stove04x","p_campfire04x","p_campfire05x","p_campfire02x","p_campfirecombined02x","p_campfirecombined03x","p_kettle03x","p_campfirecombined04x", "P_CAMPFIRECOOK02X","P_CAMPFIRE_WIN2_01X","P_CRAFTINGPOT01X"}

Config.crafting = {
    {
        Text = "Seasoned Small Game ",
        SubText = "InvMax = 10",
        Desc = "Recipe: 1 x SGM, 1 x Salt",
        Items = {
            {
                name = "consumable_game",
                count = 1
            },
            {
                name = "salt",
                count = 1
            }
        },
        Reward ={
            {
                name = "cookedsmallgame",
                count = 2
            }
        },
        Job = 0, -- the job required
        Prop = 0, -- 0 means any
        Location = 0, -- keep 0 to allow crafting from any marked Location
        Type = 1,
    }, 
    {
        Text = "Apple Pie ", -- name of item to craft on list
        SubText = "InvMax = 10",
        Desc = "Recipe: 1x Apple, 1x Water, 1x Sugar, 1x Egg, 1x Flour",
        Items = {
            {
                name = "apple",
                count = 1
            },
            {
                name = "water",
                count = 1
            },
            {
                name = "sugar",
                count = 1
            },
            {
                name = "flour",
                count = 1
            },
            {
                name = "eggs",
                count = 1
            }
        },
        Reward = {
            {
                name = "consumable_applepie",
                count = 1
            }
        },
        Job = 0, 
        Prop = 0, -- will only show in those 2 Props 
        Location = 0, -- this item can only be crafted in Location 1 and 2 
        Type = 1

    },
    {
        Text = "Steak ", -- name of item to craft on list
        SubText = "InvMax = 10",
        Desc = "Recipe: 1x Meat",
        Items = {
            {
                name = "meat",
                count = 1
            }
        },
        Reward = {
            {
                name = "steak",
                count = 1
            }
        },
        Job = 0, 
        Prop = 0, -- will only show in those 2 Props 
        Location = 0, -- this item can only be crafted in Location 1 and 2 
        Type = 1
    },
    {
        Text = "Breakfast ", -- name of item to craft on list
        SubText = "InvMax = 5",
        Desc = "Recipe: 1x Pork, 2x Eggs",
        Items = {
            {
                name = "Pork",
                count = 1
            },
            {
                name = "eggs",
                count = 2
            }
        }, 
        Reward = {
            {
                name = "consumable_breakfast",
                count = 1
            }
        },
        Job = 0, 
        Prop = 0, -- will only show in those 2 Props 
        Location = 0, -- this item can only be crafted in Location 1 and 2 
        Type = 1
    },
    {
        Text = "Blueberry Pie ", -- name of item to craft on list
        SubText = "InvMax = 10",
        Desc = "Recipe: 6x BlueBerry, 1 x Water, 1x Sugar, 1x Egg, 1x Flour",
        Items = {
            {
                name = "blueberry",
                count = 6
            },
            {
                name = "water",
                count = 1
            },
            {
                name = "sugar",
                count = 1
            },
            {
                name = "eggs",
                count = 1
            },
            {
                name = "flour",
                count = 1
            }
        }, 
        Reward = {
            {
                name = "consumable_blueberrypie",
                count = 1
            }
        },
        Job = 0, 
        Prop = 0, -- will only show in those 2 Props 
        Location = 0, -- this item can only be crafted in Location 1 and 2 
        Type = 1
    },
    {
        Text = "Seasoned Porkchop", -- name of item to craft on list
        SubText = "InvMax = 10 ",
        Desc = "Recipe: 1x Pork, 1x Salt",
        Items = {
            {
                name = "Pork",
                count = 1
            },
            {
                name = "salt",
                count = 1
            }
        },
        Reward ={
            {
                name = "saltedcookedpork",
                count = 1
            }
        },
        Job = 0, 
        Prop = 0, -- will only show in those 2 Props 
        Location = 0, -- this item can only be crafted in Location 1 and 2 
        Type = 1
    },
    {
        Text = "Seasoned Big Game", -- name of item to craft on list
        SubText = "InvMax = 10",
        Desc = "Recipe 1x Big Game Meat, 1x Salt",
        Items = {
            {
                name = "BigGameMeat",
                count = 1
            },
            {
                name = "salt",
                count = 1
            }
        },
        Reward = {
            {
                name = "SaltedCookedBigGameMeat",
                count = 1
            }
        },
        Job = 0, 
        Prop = 0, -- will only show in those 2 Props 
        Location = 0, -- this item can only be crafted in Location 1 and 2 
        Type = 1
    },
    {
        Text = "Plain Big Game Meat", -- name of item to craft on list
        SubText = "InvMax = 10",
        Desc = "Recipe: 1x Big Game Meat",
        Items = {
            {
                name = "BigGameMeat",
                count = 1
            }
        },
        Reward = {
            {
                name = "CookedBigGameMeat",
                count = 1
            }
        },
        Job = 0, 
        Prop = 0, -- will only show in those 2 Props 
        Location = 0, -- this item can only be crafted in Location 1 and 2 
        Type = 1
    },
    {
        Text = "PorkChop ", -- name of item to craft on list
        SubText = "InvMax = 10",
        Desc = "Recipe: 1x Pork",
        Items = {
            {
                name = "Pork",
                count = 1
            }
        },
        Reward = {
            {
                name = "cookedpork",
                count = 1
            }
        },
        Job = 0, 
        Prop = 0, -- will only show in those 2 Props 
        Location = 0, -- this item can only be crafted in Location 1 and 2 
        Type = 1
    },
    {
        Text = "PickAxe ", -- name of item to craft on list
        SubText = "InvMax = 5",
        Desc = "Recipe: 10x Iron, 2x Wood",
        Items = {
            {
                name = "iron",
                count = 10
            },
            {
                name = "wood",
                count = 2
            }
        },
        Reward = {
            {
                name = "pickaxe",
                count = 1
            }
        },
        Job = 0, 
        Prop = 0, -- will only show in those 2 Props 
        Location = 0, -- this item can only be crafted in Location 1 and 2 
        Type = 0
    },
    {
        Text = "Axe ", -- name of item to craft on list
        SubText = "InvMax = 5",
        Desc = "Recipe: 10x Iron, 2x Wood",
        Items = {
            {
                name = "iron",
                count = 10
            },
            {
                name = "wood",
                count = 2
            }
        },
        Reward ={
            {
                name = "Axe",
                count = 1
            }
        },
        Job = 0, 
        Prop = 0, -- will only show in those 2 Props 
        Location = 0, -- this item can only be crafted in Location 1 and 2 
        Type = 0
    },
    {
        Text = "Campfire ", -- name of item to craft on list
        SubText = "InvMax = 5",
        Desc = "Recipe: 10x Rock, 5x Wood, 4x Coal",
        Items = {
            {
                name = "rock",
                count = 10
            },
            {
                name = "wood",
                count = 5
            },
            {
                name = "coal",
                count = 4
            }
        },
        Reward ={
            {
                name = "campfire",
                count = 1
            }
        },
        Job = 0, 
        Prop = 0, -- will only show in those 2 Props 
        Location = 0, -- this item can only be crafted in Location 1 and 2  
        Type = 0
    },
    {
        Text = "Plain Cooked Bird ", -- name of item to craft on list
        SubText = "InvMax = 10",
        Desc = "Recipe: 1x Raw Bird Meat",
        Items = {
            {
                name = "rawbirdmeat",
                count = 1
            }
        },
        Reward ={
            {
                name = "cookedbird",
                count = 1
            }
        },
        Job = 0, 
        Prop = 0, -- will only show in those 2 Props 
        Location = 0, -- this item can only be crafted in Location 1 and 2 
        Type = 1
    },
    {
        Text = "Refined Gold Ore ", -- name of item to craft on list
        SubText = "InvMax = 15",
        Desc = "Recipe: 1x Gold Ore",
        Items = {
            {
                name = "gold",
                count = 1
            }
        },
        Reward ={
            {
                name = "golden_nugget",
                count = 1
            }
        },
        Job = 0, 
        Prop = 0, -- will only show in those 2 Props 
        Location = 0, -- this item can only be crafted in Location 1 and 2 
        Type = 0
    },
    {
        Text = "Plain Small Game ", -- name of item to craft on list
        SubText = "InvMax = 10 ",
        Desc = "Recipe: 1x Small Game Meat",
        Items = {
            {
                name = "consumable_game",
                count = 1
            }
        },
        Reward ={
            {
                name = "plainsmallgame",
                count = 1
            }
        },
        Job = 0, 
        Prop = 0, -- will only show in those 2 Props 
        Location = 0, -- this item can only be crafted in Location 1 and 2 
        Type = 1
    },
    {
        Text = "Rope ", -- name of item to craft on list
        SubText = "InvMax = 10",
        Desc = "Recipe: 10x Fibers",
        Items = {
            {
                name = "fibers",
                count = 10
            }
        },
        Reward ={
            {
                name = "rope",
                count = 1
            }
        },
        Job = 0, 
        Prop = 0, -- will only show in those 2 Props 
        Location = 0, -- this item can only be crafted in Location 1 and 2 
        Type = 0
    },
    {
        Text = "Cloth ", -- name of item to craft on list
        SubText = "InvMax = 10",
        Desc = "Recipe: 10x Wool",
        Items = {
            {
                name = "wool",
                count = 10
            }
        },
        Reward ={
            {
                name = "cloth",
                count = 1
            }
        },
        Job = 0, 
        Prop = 0, -- will only show in those 2 Props 
        Location = 0, -- this item can only be crafted in Location 1 and 2 
        Type = 0
    },
    {
        Text = "Tent ", -- name of item to craft on list
        SubText = "InvMax = 5 ",
        Desc = "Recipe: 4x Cloth, 3x Rope, 2x Wood",
        Items = {
            {
                name = "cloth",
                count = 4
            },
            {
                name = "rope",
                count = 3
            },
            {
                name = "wood",
                count = 2
            }
        },
        Reward ={
            {
                name = "tent",
                count = 1
            }
        },
        Job = 0, 
        Prop = 0, -- will only show in those 2 Props 
        Location = 0, -- this item can only be crafted in Location 1 and 2 
        Type = 0
    },
    {
        Text = "Bedroll ", -- name of item to craft on list
        SubText = "InvMax = 5",
        Desc = "Recipe: 4x Pelt, 1x Cloth, 2x Wood",
        Items = {
            {
                name = "pelt",
                count = 4
            },
            {
                name = "cloth",
                count = 1
            },
            {
                name = "wood",
                count = 2
            }
        },
        Reward ={
            {
                name = "bedroll",
                count = 1
            }
        },
        Job = 0, 
        Prop = 0, -- will only show in those 2 Props 
        Location = 0, -- this item can only be crafted in Location 1 and 2 
        Type = 0
    }, 
    {
        Text = "Cigar", -- name of item to craft on list
        SubText = "InvMax = 20",
        Desc = "Recipe: 1x Indian Tobacco, 1x Fiber",
        Items = {
            {
                name = "Indian_Tobbaco",
                count = 1
            },
            {
                name = "fibers",
                count = 1
            }
        },
        Reward ={
            {
                name = "cigar",
                count = 1
            }
        },
        Job = 0, 
        Prop = 0, -- will only show in those 2 Props 
        Location = 0, -- this item can only be crafted in Location 1 and 2 
        Type = 0
    },
    {
        Text = "Cigarette ", -- name of item to craft on list
        SubText = "InvMax = 20",
        Desc = "Recipe: 1x Indian Tobacco, 1x Fiber",
        Items = {
            {
                name = "Indian_Tobbaco",
                count = 1
            },
            {
                name = "fibers",
                count = 1
            }
        },
        Reward ={
            {
                name = "cigarette",
                count = 1
            }
        },
        Job = 0, 
        Prop = 0, -- will only show in those 2 Props 
        Location = 0, -- this item can only be crafted in Location 1 and 2 
        Type = 0
    }, 
    {
        Text = "Steak n' Eggs ", -- name of item to craft on list
        SubText = "InvMax = 10",
        Desc = "Recipe: 2x Meat, 2x Eggs, 2x potatoes",
        Items = {
            {
                name = "meat",
                count = 2
            },
            {
                name = "eggs",
                count = 2
            },
            {
                name = "potato",
                count = 2
            }
        },
        Reward ={
            {
                name = "steakeggs",
                count = 1
            }
        },
        Job = 0, 
        Prop = 0, -- will only show in those 2 Props 
        Location = 0, -- this item can only be crafted in Location 1 and 2 
        Type = 1
    }, 
    {
        Text = "Veggie Stew ", -- name of item to craft on list
        SubText = "InvMax = 10",
        Desc = "Recipe: 2x Carrots, 2x Corn, 2x Potatoes, 1xwater, 2x Salt",
        Items = {
            {
                name = "carrot",
                count = 2
            },
            {
                name = "corn",
                count = 2
            },
            {
                name = "potato",
                count = 2
            },
            {
                name = "water",
                count = 1
            },
            {
                name = "salt",
                count = 2
            }
        },
        Reward ={
            {
                name = "vegstew",
                count = 1
            }
        },
        Job = 0, 
        Prop = 0, -- will only show in those 2 Props 
        Location = 0, -- this item can only be crafted in Location 1 and 2 
        Type = 1
    },   
    {
        Text = "Porkchops and Applesauce ", -- name of item to craft on list
        SubText = "InvMax = 10",
        Desc = "Recipe: 1x Pork, 2x Apples",
        Items = {
            {
                name = "Pork",
                count = 1
            },
            {
                name = "apple",
                count = 2
            }
        },
        Reward ={
            {
                name = "porknapples",
                count = 1
            }
        },
        Job = 0, 
        Prop = 0, -- will only show in those 2 Props 
        Location = 0, -- this item can only be crafted in Location 1 and 2 
        Type = 1
    },
    {
        Text = "Bird Stew ", -- name of item to craft on list
        SubText = "InvMax = 10",
        Desc = "Recipe: 2x Raw Bird, 2x Carrots, 1x Corn, 2x Water, 2x Salt",
        Items = {
            {
                name = "rawbirdmeat",
                count = 2
            },
            {
                name = "carrot",
                count = 2
            },
            {
                name = "corn",
                count = 1
            },
            {
                name = "water",
                count = 2
            },
            {
                name = "salt",
                count = 2
            }
        },
        Reward ={
            {
                name = "birdstew",
                count = 1
            }
        },
        Job = 0, 
        Prop = 0, -- will only show in those 2 Props 
        Location = 0, -- this item can only be crafted in Location 1 and 2 
        Type = 1
    }
}

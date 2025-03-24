Config = {}

-- Item required to pick
Config.RequiredItem = 'shears'


-- Trees that can be picked
Config.OrangeTrees = {
    vector3(2344.51, 5007.94, 41.68),
    vector3(2330.3395996094, 5021.84375, 41.856414794922),
    vector3(2357.2041015625, 5020.552734375, 42.761165618896),
    vector3(2343.6789550781, 5022.6142578125, 42.483375549316),
    vector3(2341.8439941406, 5035.0043945312, 43.328105926514),
    vector3(2329.3649902344, 5037.109375, 43.454818725586)
}

-- Item reward
Config.OrangeItem = 'orange'

-- Orange reward range
Config.OrangeAmount = {
    min = 1,
    max = 3
}

-- Blip Settings
Config.OrangeBlip = {
    enabled = true,
    coords = vector3(2340.77, 5027.51, 43.69),
    sprite = 128, -- You can change the sprite
    scale = 0.8,
    colour = 47, -- Orange-like
    name = 'Orange Farm'
}







Config.AppleTrees = {
    vector3(2376.4990234375, 5016.8139648438, 44.363220214844),
    vector3(2369.2373046875, 5010.9477539062, 43.146064758301),
    vector3(2377.5402832031, 5003.986328125, 43.550628662109),
    vector3(2390.13, 5004.4, 45.75),
    vector3(2390.5, 4992.33, 45.23),
    vector3(2360.45, 5002.51, 43.41),
    vector3(vector3(2373.78, 4989.45, 44.0))
}


Config.AppleItem = 'apple'

Config.AppleAmount = { 
    min = 1, 
    max = 3 
}

Config.AppleBlip = {
    enabled = true,
    coords = vector3(2375.35, 5001.69, 44.31),
    sprite = 128,
    scale = 0.8,
    colour = 75, -- Greenish red apple 🍏🍎
    name = 'Apple Farm'
}






-- Pear trees
Config.PearTrees = {
    vector3(2304.32, 4997.08, 42.34),
    vector3(2317.35, 4984.76, 41.81),
    vector3(2316.67, 4993.81, 42.06),
    vector3(2316.88, 5008.39, 42.51),
    vector3(2331.06, 4996.55, 42.13),
    vector3(2330.82, 5007.23, 42.34)
}

-- Pear reward
Config.PearItem = 'pear'

-- Pear reward range
Config.PearAmount = { min = 1, max = 3 }

-- Pear blip
Config.PearBlip = {
    enabled = true,
    coords = vector3(2319.42, 5002.38, 42.27),
    sprite = 128,
    scale = 0.8,
    colour = 46, -- Light greenish
    name = 'Pear Farm'
}
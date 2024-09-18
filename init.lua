local path = minetest.get_modpath(minetest.get_current_modname())

ethereal_bosses = {}

ethereal_bosses.S = minetest.get_translator(minetest.get_current_modname())

ethereal_bosses.custom_spawn = false
local input = io.open(path .. "/spawn.lua", "r")

if input then
	ethereal_bosses.custom_spawn = true
	input:close()
	input = nil
end

-- CONFIG
dofile(path .. "/0_config.lua")

-- MONSTERS
dofile(path .. "/crazymushroom.lua")

if ethereal_bosses.custom_spawn then
	dofile(path .. "/spawn.lua")
end

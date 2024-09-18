-- HEIGHTS
ethereal_bosses.height = {
	min = -31000,
	max = 31000,
}

if minetest.get_modpath("nether") then
	ethereal_bosses.height.min = nether.DEPTH_CEILING
end

if minetest.get_modpath("cloudlands") then
	ethereal_bosses.height.max = tonumber(minetest.settings:get("cloudlands_altitude")) or 200
end

if minetest.get_mapgen_setting("mg_name") == "v7" then
	local mgv7_spflags = minetest.get_mapgen_setting("mgv7_spflags")
	local captures_float = string.match(mgv7_spflags, "floatlands")
	local captures_nofloat = string.match(mgv7_spflags, "nofloatlands")

	if not captures_nofloat and captures_float and ethereal_bosses.height.max > 1280 then
		ethereal_bosses.height.max = 1280
	end
end

-- SPAWNS
ethereal_bosses.spawns = {
	crazymushroom = {
		name = "ethereal_bosses:crazymushroom",
		nodes = {"group:soil", "group:dirt"},
		neighbors = {"group:tree"},
		max_light = 7,
		interval = 60,
		chance = 40000,
		active_object_count = 1,
		min_height = 0,
		max_height = ethereal_bosses.height.max,
	},
	depthseye = {
		name = "ethereal_bosses:depthseye",
		nodes = {"group:water", "default:river_water_source", "default:water_source", "ebiomes:swamp_water_source", "swamp:swamp_water_source"},
		neighbors = {"default:coral_brown", "default:coral_cyan", "default:coral_green", "default:coral_orange", "default:coral_pink", "default:sand_with_kelp", "decorations_sea:coral_01", "decorations_sea:coral_02", "decorations_sea:coral_03", "decorations_sea:coral_04", "decorations_sea:coral_05", "decorations_sea:coral_06", "decorations_sea:coral_07", "decorations_sea:coral_08", "decorations_sea:coral_plantlike_01", "decorations_sea:coral_plantlike_02", "decorations_sea:coral_plantlike_03", "decorations_sea:coral_plantlike_04", "decorations_sea:coral_plantlike_05", "decorations_sea:sea_pickle", "decorations_sea:seagrass_01", "decorations_sea:seagrass_02", "decorations_sea:seagrass_03", "decorations_sea:seagrass_04", "decorations_sea:seagrass_05", "decorations_sea:seagrass_06", "xocean:brain_block", "xocean:bubble", "xocean:bubble_block", "xocean:fire", "xocean:horn", "xocean:kelp_block", "xocean:ocean_stone", "xocean:pickle", "xocean:seagrass", "xocean:tube_block", "xocean:brain_skeleton", "xocean:bubble_skeleton", "xocean:fire_skeleton", "xocean:skeleton_brain", "xocean:skeleton_bubble", "xocean:skeleton_fire", "xocean:horn_skeleton", "xocean:skeleton_horn", "xocean:skeleton_tube", "xocean:tube_skeleton", "marinara:coastrock", "marinara:coastrock_alage", "marinara:coastrock_with_brownalage", "marinara:hardcoral", "marinara:hardcoral_blue", "marinara:hardcoral_brown", "marinara:hardcoral_green", "marinara:hardcoral_pink", "marinara:hardcoral_red", "marinara:hardcoral_violet", "marinara:hardcoral_yellow", "marinara:mussels", "marinara:oisterbank", "marinara:reed", "marinara:reed_root", "marinara:sand_with_alage", "marinara:sand_with_kelp", "marinara:sand_with_seagrass", "marinara:sand_with_seagrass2", "marinara:sand_with_seashells", "marinara:sand_with_seashells_broken", "marinara:sand_with_seashells_brown", "marinara:sand_with_seashells_orange", "marinara:sand_with_seashells_pink", "marinara:sand_with_seashells_white", "marinara:sand_with_seashells_yellow", "marinara:seaanemone_tentacle", "marinara:seaanemone_tentacle2", "marinara:seaanemone_tentacle3", "marinara:seaanemone_tentacle4", "marinara:seapocks", "marinara:seaworm", "marinara:seaworm2", "marinara:seaworm3", "marinara:softcoral", "marinara:softcoral_brown", "marinara:softcoral_green", "marinara:softcoral_red", "marinara:softcoral_white", "marinara:softcoral_yellow", "aqua_farming:alga_wild", "aqua_farming:sea_anemone_wild", "aqua_farming:sea_cucumber_wild", "aqua_farming:sea_grass_wild", "aqua_farming:sea_strawberry_wild", "aqua_farming:sponge_wild"},
		max_light = 7,
		interval = 60,
		chance = 20000,
		active_object_count = 1,
		min_height = 0,
		max_height = ethereal_bosses.height.max,
	},
}

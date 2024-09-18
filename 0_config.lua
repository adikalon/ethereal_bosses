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
		chance = 20000,
		active_object_count = 1,
		min_height = 0,
		max_height = ethereal_bosses.height.max,
	},
}

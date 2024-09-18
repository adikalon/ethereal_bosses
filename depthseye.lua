
mobs:register_mob("ethereal_bosses:depthseye", {
	type = "monster",
	passive = false,
	attack_animals = false,
	attack_npcs = true,
	attack_type = "dogfight",
	pathfinding = true,
	reach = 2,
	damage = 3,
	hp_min = 20,
	hp_max = 20,
	armor = 80,
	collisionbox = {-0.4, -0.1, -0.4, 0.4, 0.9, 0.4},
	visual = "mesh",
	mesh = "zoio_de_lula.b3d",
	visual_size = {x = 10, y = 10},
	textures = {
		{"zoio_de_lula.png"},
	},
	makes_footstep_sound = false,
	sounds = {
		random = "zoiodelulasound",
	},
	fly = true ,
	fly_in = {"group:water", "default:river_water_source", "default:water_source", "ebiomes:swamp_water_source", "swamp:swamp_water_source"},
	walk_velocity = 1,
	run_velocity = 4,
	jump_height = 1,
	stepheight = 1.1,
	floats = 0,
	view_range = 15,
	drops = {
		{name = "dye:blue", chance = 1, min = 1, max = 1},
	},
	lava_damage = 4,
	light_damage = 2,
	water_damage = 0,
	fall_damage = true,
	animation = {
		speed_run = 15,
		stand_start = 1,
		stand_end =40,
		walk_start = 60,
		walk_end = 80,
		run_start = 60,
		run_end = 80,
	},
})

mobs:register_egg("ethereal_bosses:depthseye", ethereal_bosses.S("Depths Eye"), "zoi_de_lula_egg.png", 1)

if not ethereal_bosses.custom_spawn and ethereal_bosses.spawns.depthseye then
	mobs:spawn(ethereal_bosses.spawns.depthseye)
end

mobs:register_mob("ethereal_bosses:crazymushroom", {
	type = "monster",
	passive = false,
	attack_animals = false,
	attack_npcs = true,
	attack_type = "dogfight",
	pathfinding = true,
	reach = 8,
	damage = 18,
	hp_min = 250,
	hp_max = 300,
	armor = 80,
	collisionbox = {-0.7, -0.7, -0.7, 0.7,3.5, 0.7},
	visual = "mesh",
	visual_size = {x = 13, y = 13},
	mesh = "crazymushroom2.b3d",
	textures = {
		{"crazymushrrom2.png"},
	},
	makes_footstep_sound = true,
	sounds = {
		random = "crazyman",
	},
	walk_velocity = 2,
	run_velocity = 4,
	jump_height = 5,
	stepheight = 3.0,
	floats = 0,
	view_range = 35,
	drops = {
		{name = "flowers:mushroom_brown", chance = 1, min = 20, max = 35},
	},
	lava_damage = 4,
	light_damage = 20,
	water_damage = 0.01,
	fall_damage = true,
	animation = {
		speed_normal = 20,
		speed_run = 20,
		stand_start = 0,
		stand_end = 0,
		walk_start = 20,
		walk_end = 60,
		run_start = 70,
		run_end = 90,
		punch_start = 100,
		punch_end = 120,
	},
})

mobs:register_egg("ethereal_bosses:crazymushroom", ethereal_bosses.S("Crazy Mushroom"), "ethereal_bosses_inv_glove_glove.png", 0)

if not ethereal_bosses.custom_spawn and ethereal_bosses.spawns.crazymushroom then
	mobs:spawn(ethereal_bosses.spawns.crazymushroom)
end

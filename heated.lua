-- SOUND :
-- https://freesound.org/people/NicknameLarry/sounds/489901/ (CC0)

mobs:register_mob("ethereal_bosses:heated", {
	--nametag = "Heated Boss",
	type = "monster",
	passive = false,
	attack_animals = false,
	attack_npcs = true,
	attack_type = "dogfight",
	pathfinding = true,
	reach = 8,
	damage = 20,
	hp_min = 200,
	hp_max = 250,
	armor = 80,
	friendly_fire = true,
	collisionbox = {-1.0, -0.5, -1.0, 1.0, 2.0, 1.0},
	visual = "mesh",
	visual_size = {x = 10, y = 10},
	mesh = "heated2.b3d",
	textures = {
		{"heated2.png"},
	},
	glow = 8,
	blood_texture = "default_obsidian_shard.png",
	makes_footstep_sound = true,
	sounds = {
		random = "monsterhot",
	},
	fly = true,
	fly_in = {"air"},
	walk_velocity = 2,
	run_velocity = 4,
	jump_height = 2,
	stepheight = 3.0,
	floats = 0,
	view_range = 35,
	drops = {
		{name = "default:lava_source", chance = 1, min = 5, max = 15},
	},
	lava_damage = 0,
	light_damage = 20,
	water_damage = 4,
	fall_damage = false,
	animation = {
		speed_normal = 15,
		speed_run = 30,
		speed_punch = 50,
		stand_start = 1,
		stand_end = 20,
		walk_start = 30,
		walk_end = 70,
		run_start = 80,
		run_end = 100,
		punch_start = 110,
		punch_end = 124,
	},
})

mobs:register_egg("ethereal_bosses:heated", ethereal_bosses.S("Heated"), "eggsheated.png", 1)

if not ethereal_bosses.custom_spawn and ethereal_bosses.spawns.heated then
	mobs:spawn(ethereal_bosses.spawns.heated)
end


mobs:register_mob("ethereal_bosses:icemonster", {
	type = "monster",
	passive = false,
	attack_animals = false,
	attack_npcs = true,
	attack_type = "dogfight",
	pathfinding = true,
	reach = 3,
	damage = 15,
	hp_min = 80,
	hp_max = 80,
	armor = 80,
	collisionbox = {-0.4, -0.8, -0.4, 0.4,1.0, 0.4},
	visual = "mesh",
	visual_size = {x = 16, y = 16},
	mesh = "ice_monster_guardian.b3d",
	textures = {
		{"ice_monster_guardian.png"},
	},
	blood_texture = "default_ice.png",
	makes_footstep_sound = true,
	walk_velocity = 1,
	run_velocity = 5,
	jump_height = 2,
	stepheight = 1.1,
	floats = 0,
	view_range = 45,
	drops = {
		{name = "default:snowblock", chance = 15, min = 5, max = 10},
		{name = "default:ice", chance = 15, min = 5, max = 10},
	},
	lava_damage = 4,
	light_damage = 4,
	water_damage = 2,
	fall_damage = false,
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 0,
		walk_start = 20,
		walk_end = 60,
		run_start = 70,
		run_end = 90,
		punch_start = 100,
		punch_end = 139,
	},
})

mobs:register_egg("ethereal_bosses:icemonster", ethereal_bosses.S("Ice Monster"), "ice_castle_blue.png", 1)

if not ethereal_bosses.custom_spawn and ethereal_bosses.spawns.icemonster then
	mobs:spawn(ethereal_bosses.spawns.icemonster)
end

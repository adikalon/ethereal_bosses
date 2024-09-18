
mobs:register_mob("ethereal_bosses:nature_guardian", {
	type = "monster",
	passive = false,
	attack_animals = false,
	attack_npcs = true,
	attack_type = "dogfight",
	pathfinding = true,
	reach = 4,
	damage = 8,
	hp_min = 80,
	hp_max = 80,
	armor = 80,
	collisionbox = {-0.4, -0.5, -0.4, 0.4, 2.0, 0.4},
	visual = "mesh",
	mesh = "natureguardian.b3d",
	visual_size = {x = 9, y = 9},
	textures = {
		{"roots_monster.png"},
	},
	makes_footstep_sound = true,
	walk_velocity = 1,
	run_velocity = 5,
	jump_height = 2,
	stepheight = 1.1,
	floats = 0,
	view_range = 45,
	drops = {
		{name = "default:flint", chance = 1, min = 5, max = 10},
	},
	lava_damage = 4,
	light_damage = 2,
	water_damage = 0.01,
	fall_damage = false,
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 20,
		walk_start = 30,
		walk_end = 50,
		run_start = 80,
		run_end = 100,
		punch_start = 110,
		punch_end = 15920,
	},
})

mobs:register_egg("ethereal_bosses:nature_guardian", ethereal_bosses.S("Nature Guardian"), "natureguardian_egg.png", 1)

if not ethereal_bosses.custom_spawn and ethereal_bosses.spawns.nature_guardian then
	mobs:spawn(ethereal_bosses.spawns.nature_guardian)
end

mobs:register_mob("ethereal_bosses:frostyqueen", {
	type = "monster",
	passive = false,
	attack_animals = false,
	attack_npcs = true,
	attack_type = "dogshoot",
	dogshoot_switch = 1,
	dogshoot_count_max = 2,
	dogshoot_count2_max = 2,
	shoot_interval = 15,
	shoot_offset = 1.5,
	arrow = "ethereal_bosses:spectrum_arrow",
	pathfinding = true,
	reach = 3,
	damage = 8,
	hp_min = 100,
	hp_max = 150,
	armor = 80,
	collisionbox = {-0.4, -0.2, -0.4, 0.4, 1.5, 0.4},
	visual = "mesh",
	visual_size = {x = 9, y = 9},
	mesh = "frostyqueen2.b3d",
	textures = {
		{"frosty_queen_2.png"},
	},
	blood_texture = "fqp.png",
	makes_footstep_sound = true,
	sounds = {
		random = "girlsmile",
		death = "gameover",
	},

	fly = true,
	fly_in = {"air"},
	walk_velocity = 1.6,
	run_velocity = 3.2,
	jump_height = 1,
	stepheight = 1.1,
	floats = 1,
	view_range = 35,
	knock_back = false,
	drops = {
		{name = "default:snowblock", chance = 10, min = 10, max = 20},
		{name = "default:ice", chance = 10, min = 10, max = 20},
	},
	lava_damage = 4,
	light_damage = 10,
	water_damage = 2,
	fall_damage = false,
	animation = {
		speed_run = 15,
		stand_start = 1,
		stand_end = 20,
		walk_start = 30,
		walk_end = 50,
		run_start = 30,
		run_end = 50,
		shoot_start =60,
		shoot_end = 90,
	},

	do_custom = function(self, dtime)
		local specpos = self.object:get_pos()
		local chanceOfParticle = math.random(0, 1)
		if chanceOfParticle == 1 then
			minetest.add_particle({
				pos = {
					x = specpos.x + math.random(-1, 1) * math.random() / 2,
					y = specpos.y + math.random(0, 3),
					z = specpos.z + math.random(-1, 1) * math.random() / 2
				},
				velocity = {
					x = math.random(-.25, .25),
					y = math.random(-.25, .25),
					z = math.random(-.25, .25)
				},
				acceleration = {
					x = math.random(-.5, .5),
					y = math.random(-.5, .5),
					z = math.random(-.5,.5)
				},
				expirationtime = 0.3,
				size = math.random(2,5),
				collisiondetection = true,
				vertical = false,
				texture = "fqp.png",
				glow = 8,
			})
		end
	end,
})

mobs:register_arrow("ethereal_bosses:spectrum_arrow", {
	visual = "sprite",
	visual_size = {x = 0.5, y = 0.5},
	velocity = 18,
	textures = {"fqp.png"},
	tail = 1,
	tail_texture = "fqp.png",
	tail_size = 10,
	glow = 5,
	expire = 0.1,
	hit_node = function(self, pos)
		local pos = {x = pos.x, z = pos.z, y =pos.y + 2}
		minetest.add_entity (pos , "ethereal_bosses:icemonster")
	end
})

mobs:register_egg("ethereal_bosses:frostyqueen", ethereal_bosses.S("Frosty Queen"), "eggsfrostyqueen.png", 1)

if not ethereal_bosses.custom_spawn and ethereal_bosses.spawns.frostyqueen then
	mobs:spawn(ethereal_bosses.spawns.frostyqueen)
end

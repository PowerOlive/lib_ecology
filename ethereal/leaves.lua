
local S = lib_ecology.intllib

-- set leaftype (value inside init.lua)
local leaftype = "plantlike"

if lib_ecology.leaftype ~= 0 then
	leaftype = "allfaces_optional"
end

-- default apple tree leaves
minetest.override_item("default:leaves", {
	drawtype = leaftype,
	visual_scale = 1.2,
	inventory_image = "default_leaves.png",
	wield_image = "default_leaves.png",
	walkable = lib_ecology.leafwalk,
})

-- default jungle tree leaves
minetest.override_item("default:jungleleaves", {
	drawtype = leaftype,
	visual_scale = 1.2,
	inventory_image = "default_jungleleaves.png",
	wield_image = "default_jungleleaves.png",
	walkable = lib_ecology.leafwalk,
})

-- default pine tree leaves
minetest.override_item("default:pine_needles", {
	drawtype = leaftype,
	visual_scale = 1.2,
	inventory_image = "default_pine_needles.png",
	wield_image = "default_pine_needles.png",
	walkable = lib_ecology.leafwalk,
	drop = {
		max_items = 1,
		items = {
			{items = {"default:pine_sapling"}, rarity = 20},
			{items = {"lib_ecology:pine_nuts"}, rarity = 5},
			{items = {"default:pine_needles"}}
		}
	},
})

-- default acacia tree leaves
minetest.override_item("default:acacia_leaves", {
	drawtype = leaftype,
--	tiles = {"moretrees_acacia_leaves.png"},
	inventory_image = "default_acacia_leaves.png",
	wield_image = "default_acacia_leaves.png",
	visual_scale = 1.2,
	walkable = lib_ecology.leafwalk,
})

-- default aspen tree leaves
minetest.override_item("default:aspen_leaves", {
	drawtype = leaftype,
	inventory_image = "default_aspen_leaves.png",
	wield_image = "default_aspen_leaves.png",
	visual_scale = 1.2,
	walkable = lib_ecology.leafwalk,
})

-- willow twig
minetest.register_node(":ethereal:willow_twig", {
	description = S("Willow Twig"),
	drawtype = "plantlike",
	tiles = {"willow_twig.png"},
	inventory_image = "willow_twig.png",
	wield_image = "willow_twig.png",
	paramtype = "light",
	walkable = lib_ecology.leafwalk,
	visual_scale = 1.2,
	waving = 1,
	groups = {snappy = 3, leafdecay = 3, leaves = 1, flammable = 2},
	drop = {
		max_items = 1,
		items = {
			{items = {"lib_ecology:willow_sapling"}, rarity = 50},
			{items = {"lib_ecology:willow_twig"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = default.after_place_leaves,
})

-- redwood leaves
minetest.register_node(":ethereal:redwood_leaves", {
	description = S("Redwood Leaves"),
	drawtype = leaftype,
	visual_scale = 1.2,
	tiles = {"redwood_leaves.png"},
	inventory_image = "redwood_leaves.png",
	wield_image = "redwood_leaves.png",
	paramtype = "light",
	walkable = lib_ecology.leafwalk,
	waving = 1,
	groups = {snappy = 3, leafdecay = 3, leaves = 1, flammable = 2},
	drop = {
		max_items = 1,
		items = {
			{items = {"lib_ecology:redwood_sapling"}, rarity = 50},
			{items = {"lib_ecology:redwood_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = default.after_place_leaves,
})

-- orange tree leaves
minetest.register_node("lib_ecology:orange_leaves", {
	description = S("Orange Leaves"),
	drawtype = leaftype,
	visual_scale = 1.2,
	tiles = {"orange_leaves.png"},
	inventory_image = "orange_leaves.png",
	wield_image = "orange_leaves.png",
	paramtype = "light",
	walkable = lib_ecology.leafwalk,
	waving = 1,
	groups = {snappy = 3, leafdecay = 3, leaves = 1, flammable = 2},
	drop = {
		max_items = 1,
		items = {
			{items = {"lib_ecology:orange_tree_sapling"}, rarity = 15},
			{items = {"lib_ecology:orange_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = default.after_place_leaves,
})

-- banana tree leaves
minetest.register_node("lib_ecology:bananaleaves", {
	description = S("Banana Leaves"),
	drawtype = leaftype,
	visual_scale = 1.2,
	tiles = {"banana_leaf.png"},
	inventory_image = "banana_leaf.png",
	wield_image = "banana_leaf.png",
	paramtype = "light",
	walkable = lib_ecology.leafwalk,
	waving = 1,
	groups = {snappy = 3, leafdecay = 3, leaves = 1, flammable = 2},
	drop = {
		max_items = 1,
		items = {
			{items = {"lib_ecology:banana_tree_sapling"}, rarity = 10},
			{items = {"lib_ecology:bananaleaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = default.after_place_leaves,
})

-- healing tree leaves
minetest.register_node(":ethereal:yellowleaves", {
	description = S("Healing Tree Leaves"),
	drawtype = leaftype,
	visual_scale = 1.2,
	tiles = {"yellow_leaves.png"},
	inventory_image = "yellow_leaves.png",
	wield_image = "yellow_leaves.png",
	paramtype = "light",
	walkable = lib_ecology.leafwalk,
	waving = 1,
	groups = {snappy = 3, leafdecay = 3, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"lib_ecology:yellow_tree_sapling"}, rarity = 50},
			{items = {"lib_ecology:yellowleaves"}}
		}
	},
	-- one leaf heals half a heart when eaten
	on_use = minetest.item_eat(1),
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = default.after_place_leaves,
	light_source = 9,
})

-- palm tree leaves
minetest.register_node(":ethereal:palmleaves", {
	description = S("Palm Leaves"),
	drawtype = leaftype,
	visual_scale = 1.2,
	tiles = {"moretrees_palm_leaves.png"},
	inventory_image = "moretrees_palm_leaves.png",
	wield_image = "moretrees_palm_leaves.png",
	paramtype = "light",
	walkable = lib_ecology.leafwalk,
	waving = 1,
	groups = {snappy = 3, leafdecay = 3, leaves = 1, flammable = 2},
	drop = {
		max_items = 1,
		items = {
			{items = {"lib_ecology:palm_sapling"}, rarity = 10},
			{items = {"lib_ecology:palmleaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = default.after_place_leaves,
})

-- birch tree leaves
minetest.register_node("lib_ecology:birch_leaves", {
	description = S("Birch Leaves"),
	drawtype = leaftype,
	visual_scale = 1.2,
	tiles = {"moretrees_birch_leaves.png"},
	inventory_image = "moretrees_birch_leaves.png",
	wield_image = "moretrees_birch_leaves.png",
	paramtype = "light",
	walkable = lib_ecology.leafwalk,
	waving = 1,
	groups = {snappy = 3, leafdecay = 3, leaves = 1, flammable = 2},
	drop = {
		max_items = 1,
		items = {
			{items = {"lib_ecology:birch_sapling"}, rarity = 20},
			{items = {"lib_ecology:birch_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = default.after_place_leaves,
})

-- frost tree leaves
minetest.register_node(":ethereal:frost_leaves", {
	description = S("Frost Leaves"),
	drawtype = leaftype,
	visual_scale = 1.2,
	tiles = {"ethereal_frost_leaves.png"},
	inventory_image = "ethereal_frost_leaves.png",
	wield_image = "ethereal_frost_leaves.png",
	paramtype = "light",
	walkable = lib_ecology.leafwalk,
	waving = 1,
	groups = {snappy = 3, leafdecay = 3, leaves = 1, puts_out_fire = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"lib_ecology:frost_tree_sapling"}, rarity = 15},
			{items = {"lib_ecology:frost_leaves"}}
		}
	},
	light_source = 9,
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = default.after_place_leaves,
})

-- bamboo stalk leaves
minetest.register_node("lib_ecology:bamboo_leaves", {
	description = S("Bamboo Leaves"),
	drawtype = leaftype,
	visual_scale = 1.2,
	tiles = {"bamboo_leaves.png"},
	inventory_image = "bamboo_leaves.png",
	wield_image = "bamboo_leaves.png",
	paramtype = "light",
	walkable = lib_ecology.leafwalk,
	waving = 1,
	groups = {snappy = 3, leafdecay = 3, leaves = 1, flammable = 2},
	drop = {
		max_items = 1,
		items = {
			{items = {"lib_ecology:bamboo_sprout"}, rarity = 10},
			{items = {"lib_ecology:bamboo_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = default.after_place_leaves,
})

-- mushroom tops
minetest.register_node(":ethereal:mushroom", {
	description = S("Mushroom Cap"),
	tiles = {"mushroom_block.png"},
	groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	drop = {
		max_items = 1,
		items = {
			{items = {"lib_ecology:mushroom_sapling"}, rarity = 20},
			{items = {"lib_ecology:mushroom"}}
		}
	},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	type = "fuel",
	recipe = "lib_ecology:mushroom",
	burntime = 10,
})

-- mushroom pore (spongelike material found inside giant shrooms)
minetest.register_node(":ethereal:mushroom_pore", {
	description = S("Mushroom Pore"),
	tiles = {"mushroom_pore.png"},
	groups = {
		snappy = 3, cracky = 3, choppy = 3, oddly_breakable_by_hand = 3,
		flammable = 2, disable_jump = 1, fall_damage_add_percent = -100
	},
	sounds = default.node_sound_dirt_defaults(),
})

-- hedge block
minetest.register_node("lib_ecology:bush", {
	description = S("Bush"),
	tiles = {"ethereal_bush.png"},
	walkable = true,
	groups = {snappy = 3, flammable = 2},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_craft({
	output = "lib_ecology:bush",
	recipe = {
		{"group:leaves", "group:leaves", "group:leaves"},
		{"group:leaves", "lib_ecology:bamboo_leaves", "group:leaves"},
		{"group:leaves", "group:leaves", "group:leaves"},
	}
})

-- bush block #2
minetest.register_node("lib_ecology:bush2", {
	drawtype = "allfaces_optional",
	description = S("Bush #2"),
	tiles = {"default_aspen_leaves.png"},
	paramtype = "light",
	walkable = true,
	groups = {snappy = 3, flammable = 2},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_craft({
	output = "lib_ecology:bush2",
	recipe = {
		{"group:leaves", "group:leaves", "group:leaves"},
		{"group:leaves", "default:aspen_leaves", "group:leaves"},
		{"group:leaves", "group:leaves", "group:leaves"},
	}
})

-- bush block #3
minetest.register_node("lib_ecology:bush3", {
	drawtype = "allfaces_optional",
	description = S("Bush #3"),
	tiles = {"default_pine_needles.png"},
	paramtype = "light",
	walkable = true,
	groups = {snappy = 3, flammable = 2},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_craft({
	output = "lib_ecology:bush3",
	recipe = {
		{"group:leaves", "group:leaves", "group:leaves"},
		{"group:leaves", "default:pine_needles", "group:leaves"},
		{"group:leaves", "group:leaves", "group:leaves"},
	}
})
-- Analysis of Spawn Functions
----------------------------------------
-- Function: init
-- Source: Not found in search results

-- Definition not found

----------------------------------------
-- Function: load_acidtank_left
-- Source: scripts\biomes\snowcave_petri.lua

function load_acidtank_left( x, y )
	load_random_pixel_scene( g_acidtank_left, x-252, y-12 )
end

----------------------------------------
-- Function: load_acidtank_right
-- Source: scripts\biomes\snowcave_petri.lua

function load_acidtank_right( x, y )
	load_random_pixel_scene( g_acidtank_right, x-12, y-12 )
end

----------------------------------------
-- Function: load_altar
-- Source: scripts\biomes\the_end.lua

function load_altar( x, y )
end

----------------------------------------
-- Function: load_background_panel_big
-- Source: scripts\biomes\liquidcave.lua

function load_background_panel_big( x, y )
	load_random_pixel_scene( g_background_panel_big, x, y )
end

----------------------------------------
-- Function: load_background_scene
-- Source: scripts\biomes\wizardcave.lua

function load_background_scene( x, y )
	--load_random_background_sprite( g_background_scenes, x+5, y )
end

----------------------------------------
-- Function: load_beam
-- Source: scripts\biomes\wizardcave.lua

function load_beam( x, y )
end

----------------------------------------
-- Function: load_building_stash
-- Source: scripts\biomes\pyramid_top.lua

function load_building_stash( x, y )
end

----------------------------------------
-- Function: load_bunk_with_surprise
-- Source: scripts\biomes\snowcastle.lua
-- XML: data/entities/props/furniture_bunk.xml
-- XML: data/entities/props/physics_propane_tank.xml
-- Image: data/props_gfx/furniture_bunk_bed.png
-- Image: data/props_gfx/furniture_bunk_leg_l.png
-- Image: data/props_gfx/furniture_bunk_leg_r.png
-- Image: data/props_gfx/propane_tank.png

function load_bunk_with_surprise( x,y )
	EntityLoad("data/entities/props/furniture_bunk.xml", x, y+5)
	EntityLoad("data/entities/props/physics_propane_tank.xml", x, y)
end

----------------------------------------
-- Function: load_catwalk
-- Source: scripts\biomes\vault.lua

function load_catwalk( x, y )
	-- randomize height a bit
	SetRandomSeed(x, y)
	y = rand(y, y+1)
	load_random_pixel_scene( g_catwalks, x, y-20 )
end

----------------------------------------
-- Function: load_cavein
-- Source: scripts\biomes\wizardcave.lua

function load_cavein( x, y )
end

----------------------------------------
-- Function: load_chamfer_bottom_l
-- Source: scripts\biomes\snowcastle.lua
-- Image: data/biome_impl/snowcastle/chamfer_bottom_l.png

function load_chamfer_bottom_l(x,y)
	if not safe(x,y) then return end
	LoadPixelScene( "data/biome_impl/snowcastle/chamfer_bottom_l.png", "", x-1, y-20, "", true )
end

----------------------------------------
-- Function: load_chamfer_bottom_r
-- Source: scripts\biomes\snowcastle.lua
-- Image: data/biome_impl/snowcastle/chamfer_bottom_r.png

function load_chamfer_bottom_r(x,y)
	if not safe(x,y) then return end
	LoadPixelScene( "data/biome_impl/snowcastle/chamfer_bottom_r.png", "", x-10, y-20, "", true )
end

----------------------------------------
-- Function: load_chamfer_inner_bottom_l
-- Source: scripts\biomes\snowcastle.lua
-- Image: data/biome_impl/snowcastle/chamfer_inner_bottom_l.png

function load_chamfer_inner_bottom_l(x,y)
	if not safe(x,y) then return end
	LoadPixelScene( "data/biome_impl/snowcastle/chamfer_inner_bottom_l.png", "", x, y-20, "", true )
end

----------------------------------------
-- Function: load_chamfer_inner_bottom_r
-- Source: scripts\biomes\snowcastle.lua
-- Image: data/biome_impl/snowcastle/chamfer_inner_bottom_r.png

function load_chamfer_inner_bottom_r(x,y)
	if not safe(x,y) then return end
	LoadPixelScene( "data/biome_impl/snowcastle/chamfer_inner_bottom_r.png", "", x-10, y-20, "", true )
end

----------------------------------------
-- Function: load_chamfer_inner_top_l
-- Source: scripts\biomes\snowcastle.lua
-- Image: data/biome_impl/snowcastle/chamfer_inner_top_l.png

function load_chamfer_inner_top_l(x,y)
	if not safe(x,y) then return end
	LoadPixelScene( "data/biome_impl/snowcastle/chamfer_inner_top_l.png", "", x, y, "", true )
end

----------------------------------------
-- Function: load_chamfer_inner_top_r
-- Source: scripts\biomes\snowcastle.lua
-- Image: data/biome_impl/snowcastle/chamfer_inner_top_r.png

function load_chamfer_inner_top_r(x,y)
	if not safe(x,y) then return end
	LoadPixelScene( "data/biome_impl/snowcastle/chamfer_inner_top_r.png", "", x-10, y, "", true )
end

----------------------------------------
-- Function: load_chamfer_top_l
-- Source: scripts\biomes\snowcastle.lua
-- Image: data/biome_impl/snowcastle/chamfer_top_l.png

function load_chamfer_top_l(x,y)
	if not safe(x,y) then return end
	LoadPixelScene( "data/biome_impl/snowcastle/chamfer_top_l.png", "", x-1, y, "", true )
end

----------------------------------------
-- Function: load_chamfer_top_r
-- Source: scripts\biomes\snowcastle.lua
-- Image: data/biome_impl/snowcastle/chamfer_top_r.png

function load_chamfer_top_r(x,y)
	if not safe(x,y) then return end
	LoadPixelScene( "data/biome_impl/snowcastle/chamfer_top_r.png", "", x-10, y, "", true )
end

----------------------------------------
-- Function: load_floor_rubble
-- Source: scripts\biomes\wandcave.lua

function load_floor_rubble( x, y )
	load_random_pixel_scene( g_floor_rubble, x-10, y-15 )
end

----------------------------------------
-- Function: load_floor_rubble_l
-- Source: scripts\biomes\wandcave.lua

function load_floor_rubble_l( x, y )
	load_random_pixel_scene( g_floor_rubble_l, x-10, y-15 )
end

----------------------------------------
-- Function: load_floor_rubble_r
-- Source: scripts\biomes\wandcave.lua

function load_floor_rubble_r( x, y )
	load_random_pixel_scene( g_floor_rubble_r, x-18, y-17 )
end

----------------------------------------
-- Function: load_furniture
-- Source: scripts\biomes\snowcastle.lua

function load_furniture( x, y )
	if ProceduralRandomf(x,y) < 0.002 then
		load_bunk_with_surprise(x,y)
	else
		spawn(g_furniture,x,y+5,0,0)
	end
end

----------------------------------------
-- Function: load_furniture_bunk
-- Source: scripts\biomes\snowcastle.lua
-- XML: data/entities/props/furniture_bunk.xml
-- Image: data/props_gfx/furniture_bunk_bed.png
-- Image: data/props_gfx/furniture_bunk_leg_l.png
-- Image: data/props_gfx/furniture_bunk_leg_r.png

function load_furniture_bunk( x, y )
	if ProceduralRandomf(x,y) < 0.02 then
		load_bunk_with_surprise(x,y)
	else
		EntityLoad("data/entities/props/furniture_bunk.xml", x, y+5)
	end
end

----------------------------------------
-- Function: load_gold_entity
-- Source: scripts\game_helpers.lua

function load_gold_entity( entity_filename, x, y, remove_timer )
	local gold_entity = EntityLoad( entity_filename, x, y )
	if( remove_timer ) then
		local lifetime_components = EntityGetComponent( gold_entity, "LifetimeComponent" )
		if( lifetime_components ~= nil ) then
			for i,lifetime_comp in ipairs(lifetime_components) do
				EntityRemoveComponent( gold_entity, lifetime_comp )
			end
		end
	end
	return gold_entity
end

----------------------------------------
-- Function: load_gunpowderpool_01
-- Source: scripts\biomes\excavationsite.lua

function load_gunpowderpool_01( x, y )
	load_random_pixel_scene( g_gunpowderpool_01, x, y )
end

----------------------------------------
-- Function: load_gunpowderpool_02
-- Source: scripts\biomes\excavationsite.lua

function load_gunpowderpool_02( x, y )
	load_random_pixel_scene( g_gunpowderpool_02, x, y )
end

----------------------------------------
-- Function: load_gunpowderpool_03
-- Source: scripts\biomes\excavationsite.lua

function load_gunpowderpool_03( x, y )
	load_random_pixel_scene( g_gunpowderpool_03, x-3, y+3 )
end

----------------------------------------
-- Function: load_gunpowderpool_04
-- Source: scripts\biomes\excavationsite.lua

function load_gunpowderpool_04( x, y )
	load_random_pixel_scene( g_gunpowderpool_04, x, y )
end

----------------------------------------
-- Function: load_i_structures
-- Source: scripts\biomes\the_end.lua

function load_i_structures( x, y )
end

----------------------------------------
-- Function: load_large_structures
-- Source: scripts\biomes\the_end.lua

function load_large_structures( x, y )
end

----------------------------------------
-- Function: load_oiltank
-- Source: scripts\biomes\the_end.lua

function load_oiltank( x, y )
end

----------------------------------------
-- Function: load_oiltank_alt
-- Source: scripts\biomes\the_end.lua

function load_oiltank_alt( x, y )
end

----------------------------------------
-- Function: load_panel_01
-- Source: scripts\biomes\snowcastle.lua

function load_panel_01(x, y)
	load_paneling(x-15,y-30,"01")
end

----------------------------------------
-- Function: load_panel_02
-- Source: scripts\biomes\snowcastle.lua

function load_panel_02(x, y)
	load_paneling(x-10,y-20,"02")
end

----------------------------------------
-- Function: load_panel_03
-- Source: scripts\biomes\snowcastle.lua

function load_panel_03(x, y)
	load_paneling(x-60,y-20,"03")
end

----------------------------------------
-- Function: load_panel_04
-- Source: scripts\biomes\snowcastle.lua

function load_panel_04(x, y)
	load_paneling(x-20,y-20,"04")
end

----------------------------------------
-- Function: load_panel_05
-- Source: scripts\biomes\snowcastle.lua

function load_panel_05(x, y)
	load_paneling(x-60,y-60,"05")
end

----------------------------------------
-- Function: load_panel_06
-- Source: scripts\biomes\snowcastle.lua

function load_panel_06(x, y)
	load_paneling(x-20,y-60,"06")
end

----------------------------------------
-- Function: load_panel_07
-- Source: scripts\biomes\snowcastle.lua

function load_panel_07(x, y)
	load_paneling(x-40,y-40,"07")
end

----------------------------------------
-- Function: load_panel_08
-- Source: scripts\biomes\snowcastle.lua

function load_panel_08(x, y)
	load_paneling(x-40,y-20,"08")
end

----------------------------------------
-- Function: load_panel_09
-- Source: scripts\biomes\snowcastle.lua

function load_panel_09(x, y)
	load_paneling(x-20,y-20,"09")
end

----------------------------------------
-- Function: load_paneling
-- Source: scripts\biomes\snowcastle.lua
-- Image: data/biome_impl/snowcastle/paneling_wall.png

function load_paneling(x,y,id)
	LoadPixelScene( "data/biome_impl/snowcastle/paneling_wall.png", "", x, y, "data/biome_impl/snowcastle/paneling_" .. id .. ".png", true, false, {}, 60 )
end

----------------------------------------
-- Function: load_pillar
-- Source: scripts\biomes\vault.lua

function load_pillar( x, y )
	load_random_background_sprite( g_pillars, x, y+3 )
end

----------------------------------------
-- Function: load_pillar_base
-- Source: scripts\biomes\vault.lua

function load_pillar_base( x, y )
	load_random_background_sprite( g_pillar_bases, x, y+3)
end

----------------------------------------
-- Function: load_pillar_filler
-- Source: scripts\biomes\snowcastle.lua
-- Image: data/biome_impl/snowcastle/pillar_filler_01.png

function load_pillar_filler(x,y)
	if not safe(x,y) then return end
	LoadPixelScene( "data/biome_impl/snowcastle/pillar_filler_01.png", "", x, y, "", true )
end

----------------------------------------
-- Function: load_pillar_filler_tall
-- Source: scripts\biomes\snowcastle.lua
-- Image: data/biome_impl/snowcastle/pillar_filler_tall_01.png

function load_pillar_filler_tall(x,y)
	if not safe(x,y) then return end
	LoadPixelScene( "data/biome_impl/snowcastle/pillar_filler_tall_01.png", "", x, y, "", true )
end

----------------------------------------
-- Function: load_pixel_scene
-- Source: scripts\biomes\wizardcave_entrance.lua

function load_pixel_scene( x, y ) end

----------------------------------------
-- Function: load_pixel_scene2
-- Source: scripts\biomes\wizardcave_entrance.lua

function load_pixel_scene2( x, y ) end

----------------------------------------
-- Function: load_pixel_scene3
-- Source: scripts\biomes\wizardcave.lua

function load_pixel_scene3( x, y )
end

----------------------------------------
-- Function: load_pixel_scene4
-- Source: scripts\biomes\wizardcave.lua

function load_pixel_scene4( x, y )
end

----------------------------------------
-- Function: load_pixel_scene4_alt
-- Source: scripts\biomes\excavationsite.lua

function load_pixel_scene4_alt( x, y )
	load_random_pixel_scene( g_pixel_scene_04_alt, x, y )
end

----------------------------------------
-- Function: load_pixel_scene5
-- Source: scripts\biomes\wizardcave.lua

function load_pixel_scene5( x, y )
end

----------------------------------------
-- Function: load_pixel_scene5b
-- Source: scripts\biomes\wizardcave.lua

function load_pixel_scene5b( x, y )
end

----------------------------------------
-- Function: load_pixel_scene_alt
-- Source: scripts\biomes\snowcave.lua

function load_pixel_scene_alt( x, y )
	load_random_pixel_scene( g_pixel_scene_01_alt, x, y )
end

----------------------------------------
-- Function: load_pixel_scene_tall
-- Source: scripts\biomes\vault.lua

function load_pixel_scene_tall( x,y )
	--print("loaded tall scene at " .. x .. ", " .. y)
	load_random_pixel_scene( g_pixel_scene_tall, x, y )
end

----------------------------------------
-- Function: load_pixel_scene_wide
-- Source: scripts\biomes\vault.lua

function load_pixel_scene_wide( x,y )
	--print("loaded wide scene at " .. x .. ", " .. y)
	load_random_pixel_scene( g_pixel_scene_wide, x, y )
end

----------------------------------------
-- Function: load_pod_large
-- Source: scripts\biomes\snowcastle.lua

function load_pod_large( x, y )
	if not safe(x,y-50) then return end
	load_random_pixel_scene(g_pods_large, x, y-50)
end

----------------------------------------
-- Function: load_pod_small_l
-- Source: scripts\biomes\snowcastle.lua

function load_pod_small_l( x, y )
	if not safe(x,y-40) then return end
	load_random_pixel_scene(g_pods_small_l, x-30, y-40)
end

----------------------------------------
-- Function: load_pod_small_r
-- Source: scripts\biomes\snowcastle.lua

function load_pod_small_r( x, y )
	if not safe(x,y-40) then return end
	load_random_pixel_scene(g_pods_small_r, x-10, y-40)
end

----------------------------------------
-- Function: load_puzzle_capsule
-- Source: scripts\biomes\snowcave.lua

function load_puzzle_capsule( x, y )
	--print("puzzle capsule spawned at " .. x .. ", " .. y)
	load_random_pixel_scene( g_puzzle_capsule, x, y )
end

----------------------------------------
-- Function: load_puzzle_capsule_b
-- Source: scripts\biomes\snowcave.lua

function load_puzzle_capsule_b( x, y )
	--print("puzzle capsule spawned at " .. x .. ", " .. y)
	load_random_pixel_scene( g_puzzle_capsule_b, x-50, y-230 )
end

----------------------------------------
-- Function: load_puzzleroom
-- Source: scripts\biomes\excavationsite.lua

function load_puzzleroom( x, y )
	load_random_pixel_scene( g_puzzleroom, x, y )
end

----------------------------------------
-- Function: load_random_background_sprite
-- Source: scripts\director_helpers.lua

function load_random_background_sprite( what, x, y )
	if( what.total_prob == 0 ) then
		init_total_prob( what, x )
	end

	local r = ProceduralRandom(x,y) * what.total_prob
	for i,v in ipairs(what) do
		if( v.prob ~= nil ) then
			if( v.prob ~= 0 and r <= v.prob ) then
				if( is_empty( v.sprite_file) ) then
					-- loading empty sprite, don't do anything
					return
				else
					-- LoadBackgroundSprite( string background_file, x, y, int background_z_index = 40 )
					local z_index = 40
					if( v.z_index ) then z_index = v.z_index end

					LoadBackgroundSprite( v.sprite_file, x, y, z_index, true )
					return
				end
			else
				r = r - v.prob
			end
		end
	end
	
	print_error( "ERROR " .. tostring(#what) .. ", " .. tostring(what[1]["sprite_file"]))
	print_error( "ERROR - director_helpers.lua - load_random_background_sprite() shouldn't reach here")
end

----------------------------------------
-- Function: load_random_pixel_scene
-- Source: scripts\director_helpers.lua

function load_random_pixel_scene( what, x, y )
	if( what.total_prob == 0 ) then
		init_total_prob( what, x )
	end

	local r = ProceduralRandom(x,y) * what.total_prob
	local last_element = nil
	for i,v in ipairs(what) do
		if( v.prob ~= nil ) then
			if( v.prob ~= 0 and r <= v.prob ) then
				if( is_empty( v.material_file ) and is_empty( v.visual_file ) and is_empty( v.background_file ) ) then
					-- loading empty pixelscene, don't do anything
					return
				else
					local color_material_table = {}
					-- Note( Petri ): I couldn't get this to work from lua... I don't know why. Lua is not really being all that helpful
					if( v.color_material ~= nil ) then
						SetRandomSeed( x + 11, y - 21 )

						for color,material in pairs(v.color_material) do
							if( is_table(material) ) then
								material = material[ math.ceil( ProceduralRandom( x + 11, y - 21 ) * (#material ) ) ]
							end 
							color_material_table[ color ] = material
						end
					end

					-- Lua_LoadPixelScene( string materials_filename, string colors_filename, x, y, string background_file, skip_biome_checks = false, skip_edge_textures = false, color_to_material_table = {} )";
					local z_index = 50
					if( v.z_index ) then z_index = v.z_index end

					LoadPixelScene( v.material_file, v.visual_file, x, y, v.background_file, false, false, color_material_table, z_index )
					if( v.is_unique == 1 ) then
						what[i].prob = 0
						init_total_prob( what, x )
					end
					return
				end
			else
				r = r - v.prob
				if( v.is_unique ~= 1 ) then
					last_element = v
				end
			end
		end
	end

	print_error( "ERROR " .. tostring(#what) .. ", " .. tostring(what[1]["visual_file"]))
	print_error( "ERROR - director_helpers.lua - load_random_pixel_scene() shouldn't reach here")

	if( last_element ~= nil ) then
		if( is_empty( last_element.material_file ) and is_empty( last_element.visual_file ) and is_empty( last_element.background_file ) ) then
			LoadPixelScene( last_element.material_file, last_element.visual_file, x, y )
		else
			print_error( "ERROR " .. #what )
			print_error( "ERROR - director_helpers.lua - load_random_pixel_scene() should it be loading a scene? ")
		end
	else
		print_error( "ERROR " .. #what )
		print_error( "ERROR - director_helpers.lua - load_random_pixel_scene() shouldn't reach here")
	end
end

----------------------------------------
-- Function: load_small_background_scene
-- Source: scripts\biomes\wizardcave.lua

function load_small_background_scene( x, y )
	load_random_background_sprite( g_background_scenes, x, y )
end

----------------------------------------
-- Function: load_structures
-- Source: scripts\biomes\the_end.lua

function load_structures( x, y )
end

----------------------------------------
-- Function: load_suspension_bridge
-- Source: scripts\biomes\snowcave_petri.lua
-- XML: data/entities/props/physics_spawners/physics_suspension_bridge_spawner.xml

function load_suspension_bridge( x, y )
	EntityLoad( "data/entities/props/physics_spawners/physics_suspension_bridge_spawner.xml", x, y )
end

----------------------------------------
-- Function: load_verlet_rope_with_one_joint
-- Source: scripts\lib\utilities.lua

function load_verlet_rope_with_one_joint( entity_filename, x1, y1 )
   -- print(entity_filename)
	local entity_id = EntityLoad( entity_filename, x1, y1 )

	if is_valid_entity( entity_id ) then
		EntityAddComponent( entity_id, "VerletWorldJointComponent" )
	end

	local verletphysics_comp_found = false

	edit_component( entity_id, "VerletPhysicsComponent", function(comp,vars)
		verletphysics_comp_found = true
	end)

	if verletphysics_comp_found then

		edit_component( entity_id, "VerletWorldJointComponent", function(comp,vars)
			ComponentSetValueVector2( comp, "world_position", x1, y1 )
		end)

	else
		------
		print( "load_verlet_rope_with_one_joint() called for an entity with no VerletPhysicsComponent, or invalid entity file(name).")
	end
end

----------------------------------------------------------------------------------------

function debug_start_trace()
	local trace = function(event, line)
	      local s = debug.getinfo(2).short_src
	      print(s .. ":" .. line)
	end
   
	debug.sethook(trace, "l")
end

----------------------------------------------------------------------------------------

function debug_print_table( table_to_print, table_depth, parent_table )
	local table_depth_ = table_depth or 1
	local parent_table_ = parent_table or "TABLE"
	local result = parent_table_ .. ": "
	
	if (table_depth_ > 1) then
		for i=1,table_depth_ - 1 do
			result = result .. " - "
		end
	end
	
	local subtables = {}
	
	if (table_to_print ~= nil) and (tostring(type(table_to_print)) == "table") then
		for i,v in pairs(table_to_print) do
			result = result .. tostring(i) .. "(" .. tostring(v) .. "), "
			
			if (tostring(type(v)) == "table") then
				table.insert(subtables, {i, v})
			end
		end
	end
	
	print( result )
	
	for i,v in ipairs( subtables ) do
		debug_print_table( v[2], table_depth_ + 1, "subtable " .. v[1] )
	end
end


-----------------------------------------------------------------------------------------

function debug_print_entity( entity )
	local comps = 
-- (Truncated/Parse Error)

----------------------------------------
-- Function: load_verlet_rope_with_two_joints
-- Source: scripts\lib\utilities.lua

function load_verlet_rope_with_two_joints( entity_filename, x1, y1, x2, y2 )
	local entity_id = EntityLoad( entity_filename, x1, y1 )

	if is_valid_entity( entity_id ) then
		EntityAddComponent( entity_id, "VerletWorldJointComponent" )
		EntityAddComponent( entity_id, "VerletWorldJointComponent" )
	end

	local verletphysics_comp_found = false
	local last_point_index = 0
	edit_component( entity_id, "VerletPhysicsComponent", function(comp,vars)
		verletphysics_comp_found = true
		last_point_index = ComponentGetValue( comp, "num_points" )
	end)

	if verletphysics_comp_found then
		------
		local index = 0

		edit_all_components( entity_id, "VerletWorldJointComponent", function(comp,vars)
			
			if index == 0 then
				ComponentSetValueVector2( comp, "world_position", x1, y1 )
			else
				ComponentSetValueVector2( comp, "world_position", x2, y2 )
				vars.verlet_point_index = last_point_index
			end

			index = index + 1
		end)

	else
		------
		print( "load_verlet_rope_with_two_joints() called for an entity with no VerletPhysicsComponent, or invalid entity file(name).")
	end
end

----------------------------------------------------------------------------------------

function load_verlet_rope_with_one_joint( entity_filename, x1, y1 )
   -- print(entity_filename)
	local entity_id = EntityLoad( entity_filename, x1, y1 )

	if is_valid_entity( entity_id ) then
		EntityAddComponent( entity_id, "VerletWorldJointComponent" )
	end

	local verletphysics_comp_found = false

	edit_component( entity_id, "VerletPhysicsComponent", function(comp,vars)
		verletphysics_comp_found = true
	end)

	if verletphysics_comp_found then

		edit_component( entity_id, "VerletWorldJointComponent", function(comp,vars)
			ComponentSetValueVector2( comp, "world_position", x1, y1 )
		end)

	else
		------
		print( "load_verlet_rope_with_one_joint() called for an entity with no VerletPhysicsComponent, or invalid entity file(name).")
	end
end

--------------------------------------------------------------
-- (Truncated/Parse Error)

----------------------------------------
-- Function: load_warning_strip
-- Source: scripts\biomes\vault.lua
-- Image: data/biome_impl/vault/warningstrip_background.png

function load_warning_strip( x, y )
	LoadBackgroundSprite("data/biome_impl/vault/warningstrip_background.png", x, y-4, 40)
end

----------------------------------------
-- Function: random_layout
-- Source: Not found in search results

-- Definition not found

----------------------------------------
-- Function: spawn_aabb
-- Source: scripts\biomes\boss_arena.lua
-- XML: data/entities/buildings/workshop_aabb.xml

function spawn_aabb( x, y )
	EntityLoad( "data/entities/buildings/workshop_aabb.xml", x, y )
end

----------------------------------------
-- Function: spawn_acid
-- Source: scripts\biomes\snowcave_petri.lua
-- XML: data/entities/props/dripping_acid_gas.xml

function spawn_acid(x, y)
	EntityLoad( "data/entities/props/dripping_acid_gas.xml", x, y )
end

----------------------------------------
-- Function: spawn_alchemist
-- Source: scripts\biomes\lake.lua
-- XML: data/entities/animals/failed_alchemist.xml

function spawn_alchemist( x, y )
	--EntityLoad( "data/entities/animals/failed_alchemist.xml", x, y )
end

----------------------------------------
-- Function: spawn_all_perks
-- Source: scripts\biomes\temple_altar_right_snowcave_empty.lua

function spawn_all_perks( x, y )
end

----------------------------------------
-- Function: spawn_all_shopitems
-- Source: scripts\biomes\temple_altar_empty.lua

function spawn_all_shopitems( x, y )
end

----------------------------------------
-- Function: spawn_altar_top
-- Source: scripts\biomes\temple_altar_top_shared.lua
-- Image: data/biome_impl/temple/altar_top.png
-- Image: data/biome_impl/temple/altar_top_blood.png
-- Image: data/biome_impl/temple/altar_top_boss_arena.png
-- Image: data/biome_impl/temple/altar_top_lava.png
-- Image: data/biome_impl/temple/altar_top_oil.png
-- Image: data/biome_impl/temple/altar_top_radioactive.png
-- Image: data/biome_impl/temple/altar_top_visual.png
-- Image: data/biome_impl/temple/altar_top_water.png
-- Image: data/biome_impl/temple/solid.png
-- Image: data/biome_impl/temple/wall_background.png

function spawn_altar_top(x, y, is_solid)
	SetRandomSeed( x, y )
	local randomtop = Random( 1, 50 )
	local file_visual = "data/biome_impl/temple/altar_top_visual.png"
	
	LoadBackgroundSprite( "data/biome_impl/temple/wall_background.png", x-1, y - 30, 35 )

	if( y > 12000 ) then
		LoadPixelScene( "data/biome_impl/temple/altar_top_boss_arena.png", file_visual, x, y-40, "", true )
	else
		if (randomtop == 5) then
			LoadPixelScene( "data/biome_impl/temple/altar_top_water.png", file_visual, x, y-40, "", true )
		elseif (randomtop == 8) then
			LoadPixelScene( "data/biome_impl/temple/altar_top_blood.png", file_visual, x, y-40, "", true )
		elseif (randomtop == 11) then
			LoadPixelScene( "data/biome_impl/temple/altar_top_oil.png", file_visual, x, y-40, "", true )
		elseif (randomtop == 13) then
			LoadPixelScene( "data/biome_impl/temple/altar_top_radioactive.png", file_visual, x, y-40, "", true )
		elseif (randomtop == 15) then
			LoadPixelScene( "data/biome_impl/temple/altar_top_lava.png", file_visual, x, y-40, "", true )
		else
			LoadPixelScene( "data/biome_impl/temple/altar_top.png", file_visual, x, y-40, "", true )
		end
	end	

	if is_solid then LoadPixelScene( "data/biome_impl/temple/solid.png", "", x, y-40+300, "", true ) end
end

----------------------------------------
-- Function: spawn_altar_torch
-- Source: scripts\biomes\the_end.lua

function spawn_altar_torch(x, y)
end

----------------------------------------
-- Function: spawn_any_enemy
-- Source: scripts\biomes\tower.lua

function spawn_any_enemy( x, y )
	SetRandomSeed( x, y )
	if safe( x, y ) then
		local rnd = Random( 1, #enemy_list )
		local target = enemy_list[rnd]
		
		local folder = "animals/"
		if ( string.sub( target, 1, 10 ) == "buildings/" ) then
			folder = ""
		end
		
		local eid = EntityLoad( "data/entities/" .. folder .. target .. ".xml", x, y )
		
		if ( target ~= "scavenger_heal" ) and ( target ~= "healerdrone_physics" ) then
			local damagemodels = EntityGetComponent( eid, "DamageModelComponent" )
			if( damagemodels ~= nil ) then
				for i,damagemodel in ipairs(damagemodels) do
					local hp = tonumber( ComponentGetValue( damagemodel, "hp" ) ) * 4
					
					ComponentSetValue( damagemodel, "max_hp", hp )
					ComponentSetValue( damagemodel, "hp", hp )
				end
			end
		end
	end
end

----------------------------------------
-- Function: spawn_apparatus
-- Source: scripts\biomes\vault.lua

function spawn_apparatus(x, y)
	spawn(g_apparatus,x-4,y-5,0,0)
end

----------------------------------------
-- Function: spawn_apparition
-- Source: scripts\biome_scripts.lua
-- XML: data/entities/items/pickup/potion_mimic.xml
-- Image: data/biome_impl/grave.png
-- Image: data/biome_impl/grave_visual.png
-- Image: data/items_gfx/potion_normals.png

function spawn_apparition(x, y)
	SetRandomSeed( x, y )
	local PlaceItems1 	= 1
	local PlaceItems2 	= 2
	local Spawn 		= 3

	local level = 0 -- TODO: fetch biome level somehow
	local state,apparition_entity_id = SpawnApparition( x, y, level )

	-- local r = ProceduralRandom(x + 5.352, y - 4.463)
	-- if (r > 0.1) then

	local place_items = function()
		for i=1,4 do
			local rx = x + Random( -10, 10 )
				
			spawn_candles(rx, y)
		end
	end

	if state == PlaceItems1 or state == PlaceItems2 then
		place_items()
		print( tostring(x) .. ", " .. tostring(y) ) -- DEBUG:
	elseif state == Spawn then
		LoadPixelScene( "data/biome_impl/grave.png", "data/biome_impl/grave_visual.png", x-10, y-15, "", true )
		--[[
		GamePrint( "___________________________" )
		GamePrint( "" )
		GamePrint( "A chill runs up your spine!" )
		GamePrint( "___________________________" )
		--]]
		print( tostring(x) .. ", " .. tostring(y) ) -- DEBUG:
	end
end

function spawn_persistent_teleport(x, y)
	--[[
	local r = ProceduralRandom(x + 5.352, y - 4.463)
	if (r > 0.1) then
		local level = 0 -- TODO: fetch biome level somehow
		SpawnPersistentTeleport( x, y )
	end
	]]--
end

function spawn_persistent_teleport(x, y)
	--spawn(g_persistent_teleport,x,y,0,0)
end

function spawn_candles(x, y)
	spawn(g_candles,x,y,0,0)
end

function spawn_wands(x, y)
	spawn(g_items,x-5,y,0,0)
end

function spawn_potions( x, y )
	SetRandomSeed( x, y )
	local rnd = Random( 1, 1000 )
	if (rnd <= 995) or (y < 512 * 3) then
		spawn_from_list( "potion_spawnlist", x, y )
	else
		EntityLoad( "data/entities/items/pickup/potion_mimic.xml", x, y)
	end

end

function spawn_ghostlamp(x, y)
	spawn2(g_ghostlamp,x,y,0,0)
end

function parallel_check( x, y )
	if ( y < 0 ) then
		local pw = GetParallelWorldPosition( x, y )
		
		if ( pw ~= 0 ) then
			local r = ProceduralRandom( x + 35, y - 253 )
			local rx = ProceduralRandom( x - 35, y + 243 )
			
			SetRandomSeed( x + 35, y - 253 )
			
			r = Random( 1, 100 )
			rx = Random( 0, 512 )
			
			i
-- (Truncated/Parse Error)

----------------------------------------
-- Function: spawn_areachecks
-- Source: scripts\biomes\temple_altar_right_snowcave_empty.lua

function spawn_areachecks( x, y )

end

----------------------------------------
-- Function: spawn_areachecks_left
-- Source: scripts\biomes\boss_arena.lua
-- XML: data/entities/buildings/temple_areacheck_horizontal.xml
-- XML: data/entities/buildings/temple_areacheck_vertical.xml
-- XML: data/entities/buildings/temple_areacheck_vertical_stub.xml

function spawn_areachecks_left( x, y )
	if( temple_should_we_spawn_checkers( x, y ) ) then
		-- top
		EntityLoad( "data/entities/buildings/temple_areacheck_horizontal.xml", x - 65, y - 100 )
		EntityLoad( "data/entities/buildings/temple_areacheck_horizontal.xml", x - 65, y - 100 )
		-- bottom
		EntityLoad( "data/entities/buildings/temple_areacheck_horizontal.xml", x - 65, y + 170 )
		EntityLoad( "data/entities/buildings/temple_areacheck_horizontal.xml", x - 65, y + 170 )
		-- left
		EntityLoad( "data/entities/buildings/temple_areacheck_vertical.xml", x - 190, y - 20 )
		EntityLoad( "data/entities/buildings/temple_areacheck_vertical_stub.xml", x - 190, y + 120 )
	end
end

----------------------------------------
-- Function: spawn_areachecks_right
-- Source: scripts\biomes\boss_arena.lua
-- XML: data/entities/buildings/temple_areacheck_horizontal.xml
-- XML: data/entities/buildings/temple_areacheck_vertical_stub.xml

function spawn_areachecks_right( x, y )
	if( temple_should_we_spawn_checkers( x, y ) ) then
		-- top
		EntityLoad( "data/entities/buildings/temple_areacheck_horizontal.xml", x - 55, y - 100 )
		EntityLoad( "data/entities/buildings/temple_areacheck_horizontal.xml", x + 65, y - 100 )
		-- bottom
		EntityLoad( "data/entities/buildings/temple_areacheck_horizontal.xml", x - 55, y + 170 )
		EntityLoad( "data/entities/buildings/temple_areacheck_horizontal.xml", x + 65, y + 170 )
		-- right
		EntityLoad( "data/entities/buildings/temple_areacheck_vertical_stub.xml", x + 365, y - 100 )
		EntityLoad( "data/entities/buildings/temple_areacheck_vertical_stub.xml", x + 365, y - 50 )
		EntityLoad( "data/entities/buildings/temple_areacheck_vertical_stub.xml", x + 365, y + 90 )
		EntityLoad( "data/entities/buildings/temple_areacheck_vertical_stub.xml", x + 365, y + 120 )
	end
end

----------------------------------------
-- Function: spawn_barrels
-- Source: scripts\biomes\default.lua

function spawn_barrels(x, y, w, h)
end

----------------------------------------
-- Function: spawn_barricade
-- Source: scripts\biomes\vault_frozen.lua

function spawn_barricade(x, y)
	spawn(g_barricade,x,y,0,0)
end

----------------------------------------
-- Function: spawn_bbqbox
-- Source: scripts\biomes\the_end.lua

function spawn_bbqbox( x, y )
end

----------------------------------------
-- Function: spawn_beam_low
-- Source: scripts\biomes\excavationsite.lua
-- Image: data/biome_impl/excavationsite/beam_low.png

function spawn_beam_low(x,y)
	LoadBackgroundSprite("data/biome_impl/excavationsite/beam_low.png", x-60, y-35, 60, true )
end

----------------------------------------
-- Function: spawn_beam_low_flipped
-- Source: scripts\biomes\excavationsite.lua
-- Image: data/biome_impl/excavationsite/beam_low_flipped.png

function spawn_beam_low_flipped(x,y)
	LoadBackgroundSprite("data/biome_impl/excavationsite/beam_low_flipped.png", x-60, y-35, 60, true)
end

----------------------------------------
-- Function: spawn_beam_steep
-- Source: scripts\biomes\excavationsite.lua
-- Image: data/biome_impl/excavationsite/beam_steep.png

function spawn_beam_steep(x,y)
	LoadBackgroundSprite("data/biome_impl/excavationsite/beam_steep.png", x-35, y-60, 60, true)
end

----------------------------------------
-- Function: spawn_beam_steep_flipped
-- Source: scripts\biomes\excavationsite.lua
-- Image: data/biome_impl/excavationsite/beam_steep_flipped.png

function spawn_beam_steep_flipped(x,y)
	LoadBackgroundSprite("data/biome_impl/excavationsite/beam_steep_flipped.png", x-35, y-60, 60, true)
end

----------------------------------------
-- Function: spawn_big_bushes
-- Source: scripts\biomes\mountain\mountain_left_entrance.lua

function spawn_big_bushes( x, y )
	spawn( g_big_bushes, x, y+12, 0, 0 )
end

----------------------------------------
-- Function: spawn_big_enemies
-- Source: scripts\biomes\wizardcave_entrance.lua

function spawn_big_enemies(x, y)
	spawn(g_big_enemies,x,y)
end

----------------------------------------
-- Function: spawn_bigfish
-- Source: scripts\biomes\lake_statue.lua
-- XML: data/entities/animals/eel.xml
-- Image: data/enemies_gfx/eel_body.png
-- Image: data/enemies_gfx/eel_body2.png
-- Image: data/enemies_gfx/eel_body3.png
-- Image: data/enemies_gfx/eel_head.png
-- Image: data/enemies_gfx/eel_tail.png

function spawn_bigfish(x,y)
	EntityLoad( "data/entities/animals/eel.xml", x, y )
end

----------------------------------------
-- Function: spawn_bigtorch
-- Source: scripts\biome_scripts.lua
-- XML: data/entities/props/physics_torch_stand.xml
-- Image: data/props_gfx/torch_stand_base.png

function spawn_bigtorch(x, y)
	EntityLoad( "data/entities/props/physics_torch_stand.xml", x, y )
end

----------------------------------------
-- Function: spawn_blood
-- Source: scripts\biomes\town.lua

function spawn_blood( x, y ) end

----------------------------------------
-- Function: spawn_bones
-- Source: scripts\biomes\wizardcave.lua

function spawn_bones(x, y)
	spawn(g_bones,x,y-12)
end

----------------------------------------
-- Function: spawn_book
-- Source: scripts\biomes\mountain_tree.lua
-- XML: data/entities/items/books/book_tree.xml

function spawn_book( x, y ) 
	EntityLoad( "data/entities/items/books/book_tree.xml", x, y )
end

----------------------------------------
-- Function: spawn_boss_dragon
-- Source: scripts\buildings\egg_damage.lua
-- XML: data/entities/animals/boss_dragon.xml
-- Image: data/ui_gfx/health_slider_back.png
-- Image: data/ui_gfx/health_slider_front.png

function spawn_boss_dragon()
	local entity_id    = GetUpdatedEntityID()
	local pos_x, pos_y = EntityGetTransform( entity_id )
	
	-- disables the dragon with globals
	local is_spawned = GlobalsGetValue("boss_dragon_spawned")
	if( is_spawned == "1") then
		return 0
	end
	
	GlobalsSetValue("boss_dragon_spawned", "1")
	GlobalsSetValue("boss_dragon_spawned_pos_x", pos_x)
	GlobalsSetValue("boss_dragon_spawned_pos_y", pos_y)

	play_animation( entity_id, "open")

	-- disables damage scripts
	local lua_scripts = EntityGetComponent( entity_id, "LuaComponent" )
	if( lua_scripts ~= nil ) then
		for i,v in ipairs(lua_scripts) do
			ComponentSetValue( v, "script_damage_received", "")
		end
	end
	
	-- tried using wait, but it just crashed...
	-- wait(30)
	-- EntityLoad( "data/entities/animals/boss_dragon.xml", pos_x, pos_y )

	SetTimeOut( 0.54, "data/scripts/buildings/egg_damage.lua", "impl_spawn_boss_dragon")
end

----------------------------------------
-- Function: spawn_boss_limbs
-- Source: scripts\biomes\boss_limbs_arena.lua
-- XML: data/entities/animals/boss_limbs/boss_limbs.xml
-- Image: data/ui_gfx/health_slider_back.png
-- Image: data/ui_gfx/health_slider_front.png

function spawn_boss_limbs( x, y )
	local maptilex = math.floor(x / 512)
	
	if (maptilex == 1) then
		EntityLoad( "data/entities/animals/boss_limbs/boss_limbs.xml", x, y )
	end
end

----------------------------------------
-- Function: spawn_boss_limbs_trigger
-- Source: scripts\biomes\pyramid.lua
-- XML: data/entities/animals/boss_limbs/boss_limbs_trigger.xml
-- XML: data/entities/items/books/book_music_b.xml
-- Image: data/entities/animals/boss_limbs/boss_limbs_dormant.png
-- Image: data/items_gfx/book.png
-- Image: data/items_gfx/book_small.png
-- Image: data/items_gfx/in_hand/book_in_hand.png

function spawn_boss_limbs_trigger( x, y )
	EntityLoad("data/entities/animals/boss_limbs/boss_limbs_trigger.xml", x, y )
	EntityLoad("data/entities/items/books/book_music_b.xml", x, y )
end

----------------------------------------
-- Function: spawn_boss_music_and_statues
-- Source: scripts\biomes\boss_arena.lua
-- XML: data/entities/animals/boss_centipede/boss_music_buildup_trigger.xml
-- XML: data/entities/props/boss_arena_statue_1.xml
-- XML: data/entities/props/boss_arena_statue_2.xml
-- XML: data/entities/props/boss_arena_statue_3.xml
-- XML: data/entities/props/boss_arena_statue_4.xml
-- Image: data/biome_impl/boss_arena_statue_1.png
-- Image: data/biome_impl/boss_arena_statue_2.png
-- Image: data/biome_impl/boss_arena_statue_3.png
-- Image: data/biome_impl/boss_arena_statue_4.png

function spawn_boss_music_and_statues(x,y)
	EntityLoad( "data/entities/props/boss_arena_statue_1.xml", x - 30, y - 30 )
	EntityLoad( "data/entities/props/boss_arena_statue_2.xml", x - 30, y - 30 )
	EntityLoad( "data/entities/props/boss_arena_statue_3.xml", x - 30, y - 30 )
	EntityLoad( "data/entities/props/boss_arena_statue_4.xml", x - 30, y - 30 )
	EntityLoad( "data/entities/animals/boss_centipede/boss_music_buildup_trigger.xml", x, y )
end

----------------------------------------
-- Function: spawn_bottle
-- Source: scripts\biomes\town.lua

function spawn_bottle( x, y ) 
	spawn(g_bottle,x,y,0,0)
end

----------------------------------------
-- Function: spawn_bridge
-- Source: scripts\biomes\bridge.lua
-- XML: data/entities/props/physics_spawners/physics_suspension_bridge_spawner.xml

function spawn_bridge( x, y )
	-- bridge is spawned via _pixel_scenes.xml
	--EntityLoad( "data/entities/props/physics_spawners/physics_suspension_bridge_spawner.xml", x, y )
end

----------------------------------------
-- Function: spawn_brimstone
-- Source: scripts\biomes\snowcastle.lua
-- XML: data/entities/buildings/sauna_stove_heat.xml
-- XML: data/entities/items/pickup/brimstone.xml
-- Image: data/items_gfx/brimstone.png
-- Image: data/ui_gfx/items/brimstone.png

function spawn_brimstone(x, y)
	EntityLoad("data/entities/items/pickup/brimstone.xml", x, y)
	EntityLoad("data/entities/buildings/sauna_stove_heat.xml", x, y+10)
end

----------------------------------------
-- Function: spawn_bunker
-- Source: scripts\biomes\lake.lua
-- XML: data/entities/buildings/bunker.xml

function spawn_bunker( x, y )
	EntityLoad( "data/entities/buildings/bunker.xml", x, y )
end

----------------------------------------
-- Function: spawn_bunker2
-- Source: scripts\biomes\lake.lua
-- XML: data/entities/buildings/bunker2.xml

function spawn_bunker2( x, y )
	EntityLoad( "data/entities/buildings/bunker2.xml", x, y )
end

----------------------------------------
-- Function: spawn_buried_eye_teleporter
-- Source: scripts\biomes\snowcave.lua
-- XML: data/entities/buildings/teleport_snowcave_buried_eye.xml

function spawn_buried_eye_teleporter(x, y)
	EntityLoad("data/entities/buildings/teleport_snowcave_buried_eye.xml", x, y)
end

----------------------------------------
-- Function: spawn_burning_barrel
-- Source: scripts\biomes\snowcave.lua
-- XML: data/entities/props/physics_barrel_burning.xml
-- Image: data/props_gfx/barrel_burning.png

function spawn_burning_barrel(x, y)
	if safe( x, y ) then
		EntityLoad( "data/entities/props/physics_barrel_burning.xml", x, y )
	end
end

----------------------------------------
-- Function: spawn_candles
-- Source: scripts\biome_scripts.lua

function spawn_candles(x, y)
	spawn(g_candles,x,y,0,0)
end

----------------------------------------
-- Function: spawn_chair
-- Source: scripts\biomes\town.lua

function spawn_chair( x, y ) 
	spawn(g_chair,x,y,0,0)
end

----------------------------------------
-- Function: spawn_cheap_shopitem
-- Source: scripts\biomes\temple_altar_secret.lua
-- XML: data/entities/items/shop_item.xml

function spawn_cheap_shopitem( x, y )
	-- EntityLoad( "data/entities/items/shop_item.xml", x, y )
	generate_shop_item( x, y, true )
end

----------------------------------------
-- Function: spawn_check1
-- Source: scripts\biomes\null_room.lua
-- XML: data/entities/buildings/null_room/check1.xml

function spawn_check1(x, y)
	EntityLoad( "data/entities/buildings/null_room/check1.xml", x, y )
end

----------------------------------------
-- Function: spawn_check2
-- Source: scripts\biomes\null_room.lua
-- XML: data/entities/buildings/null_room/check2.xml

function spawn_check2(x, y)
	EntityLoad( "data/entities/buildings/null_room/check2.xml", x, y )
end

----------------------------------------
-- Function: spawn_check3
-- Source: scripts\biomes\null_room.lua
-- XML: data/entities/buildings/null_room/check3.xml

function spawn_check3(x, y)
	EntityLoad( "data/entities/buildings/null_room/check3.xml", x, y )
end

----------------------------------------
-- Function: spawn_checkpoint_1
-- Source: scripts\biomes\lavalake_racing.lua
-- XML: data/entities/buildings/racing_checkpoint.xml

function spawn_checkpoint_1( x, y )
	local eid = EntityLoad( "data/entities/buildings/racing_checkpoint.xml", x, y )
	EntityAddTag(eid, "checkpoint_1" )
end

----------------------------------------
-- Function: spawn_checkpoint_2
-- Source: scripts\biomes\lavalake_racing.lua
-- XML: data/entities/buildings/racing_checkpoint.xml

function spawn_checkpoint_2( x, y )
	local eid = EntityLoad( "data/entities/buildings/racing_checkpoint.xml", x, y )
	EntityAddTag(eid, "checkpoint_2" )
end

----------------------------------------
-- Function: spawn_chest
-- Source: scripts\biomes\town.lua

function spawn_chest(x, y)
	return
end

----------------------------------------
-- Function: spawn_cloud_trap
-- Source: scripts\biomes\wandcave.lua

function spawn_cloud_trap(x, y)
	spawn(g_cloud_trap,x-5,y-10)
end

----------------------------------------
-- Function: spawn_collapse
-- Source: scripts\biome_scripts.lua
-- XML: data/entities/misc/loose_chunks.xml

function spawn_collapse( x, y )
	EntityLoad( "data/entities/misc/loose_chunks.xml", x, y )
end

----------------------------------------
-- Function: spawn_control_workshop
-- Source: scripts\biomes\temple_altar_right_snowcave_empty.lua

function spawn_control_workshop(x,y)
end

----------------------------------------
-- Function: spawn_cook
-- Source: scripts\biomes\snowcastle.lua
-- XML: data/entities/animals/miner_chef.xml

function spawn_cook(x, y)
	EntityLoad( "data/entities/animals/miner_chef.xml", x, y )
end

----------------------------------------
-- Function: spawn_corpse
-- Source: scripts\biomes\lavalake.lua
-- XML: data/entities/items/books/book_corpse.xml
-- XML: data/entities/props/physics_bone_01.xml
-- XML: data/entities/props/physics_bone_06.xml
-- XML: data/entities/props/physics_skull_01.xml
-- Image: data/props_gfx/bone_01.png
-- Image: data/props_gfx/bone_06.png
-- Image: data/props_gfx/skull_01.png

function spawn_corpse( x, y )
	EntityLoad( "data/entities/props/physics_skull_01.xml", x, y-4 )
	EntityLoad( "data/entities/props/physics_bone_01.xml", x+8, y-4 )
	EntityLoad( "data/entities/props/physics_bone_06.xml", x-12, y-4 )
	EntityLoad( "data/entities/items/books/book_corpse.xml", x, y )
end

----------------------------------------
-- Function: spawn_crate
-- Source: scripts\biomes\mountain\trailer\mountain_hall.lua
-- XML: data/entities/props/physics_box_explosive.xml
-- Image: data/props_gfx/tnt.png

function spawn_crate(x, y)
	EntityLoad( "data/entities/props/physics_box_explosive.xml", x, y ) 
end

----------------------------------------
-- Function: spawn_crawlers
-- Source: scripts\biomes\wizardcave.lua

function spawn_crawlers(x, y) end

----------------------------------------
-- Function: spawn_cyst
-- Source: scripts\biomes\meat.lua
-- XML: data/entities/props/meat_cyst.xml

function spawn_cyst(x, y)
	if ProceduralRandom(x, y) < 0.3 then return end
	EntityLoad( "data/entities/props/meat_cyst.xml", x+5, y+5 )
end

----------------------------------------
-- Function: spawn_debug_mark
-- Source: scripts\biome_scripts.lua
-- XML: data/entities/_debug/debug_marker.xml
-- Image: data/debug/box_10x10.png

function spawn_debug_mark( x,y )
	EntityLoad( "data/entities/_debug/debug_marker.xml", x, y )
end

----------------------------------------
-- Function: spawn_doors
-- Source: scripts\biomes\wizardcave.lua

function spawn_doors(x, y)
	-- Doors not functional, look at PhysicsAddJoint() and 'uid' in PhysicsBodyComponent
	
	--[[
	spawn(g_doors,x,y,0,0)
	]]--
end

----------------------------------------
-- Function: spawn_dragonspot
-- Source: scripts\biomes\rainforest_dark.lua

function spawn_dragonspot(x, y)
end

----------------------------------------
-- Function: spawn_drill_laser
-- Source: scripts\biomes\snowcastle.lua
-- XML: data/entities/buildings/drill_laser.xml

function spawn_drill_laser(x, y)
	EntityLoad( "data/entities/buildings/drill_laser.xml", x, y )
end

----------------------------------------
-- Function: spawn_duplicator
-- Source: scripts\biomes\temple_altar_left_empty.lua
-- XML: data/entities/buildings/temple_duplicator.xml

function spawn_duplicator( x, y )
	-- EntityLoad( "data/entities/buildings/temple_duplicator.xml", x, y )
end

----------------------------------------
-- Function: spawn_egg
-- Source: scripts\biomes\mountain_tree.lua

function spawn_egg( x, y )
	spawn( g_egg, x, y )
end

----------------------------------------
-- Function: spawn_electricity_trap
-- Source: scripts\biomes\vault.lua
-- XML: data/entities/props/physics_trap_electricity_enabled.xml
-- Image: data/props_gfx/trap_electricity.png

function spawn_electricity_trap(x, y)
	EntityLoad("data/entities/props/physics_trap_electricity_enabled.xml", x, y)
end

----------------------------------------
-- Function: spawn_end_portal
-- Source: scripts\biome_scripts.lua
-- XML: data/entities/buildings/teleport_boss_arena.xml

function spawn_end_portal( x, y )
	EntityLoad( "data/entities/buildings/teleport_boss_arena.xml", x, y - 4 )
end

----------------------------------------
-- Function: spawn_endcrystal
-- Source: scripts\biomes\ending_placeholder.lua
-- XML: data/entities/buildings/endcrystal.xml

function spawn_endcrystal(x, y)
	EntityLoad( "data/entities/buildings/endcrystal.xml", x, y )
end

----------------------------------------
-- Function: spawn_endportal
-- Source: scripts\biomes\temple_wall_ending.lua
-- XML: data/entities/buildings/teleport_ending.xml

function spawn_endportal(x, y)
	EntityLoad( "data/entities/buildings/teleport_ending.xml", x, y - 4 )
end

----------------------------------------
-- Function: spawn_essence
-- Source: scripts\biomes\tower_end.lua
-- XML: data/entities/buildings/mystery_teleport_back.xml
-- XML: data/entities/items/wands/wand_good/wand_good_1.xml
-- XML: data/entities/items/wands/wand_good/wand_good_2.xml
-- XML: data/entities/items/wands/wand_good/wand_good_3.xml

function spawn_essence(x, y)
	EntityLoad( "data/entities/items/wands/wand_good/wand_good_1.xml", x - 20, y + 12 )
	EntityLoad( "data/entities/items/wands/wand_good/wand_good_2.xml", x, y + 12 )
	EntityLoad( "data/entities/items/wands/wand_good/wand_good_3.xml", x + 20, y + 12 )
	EntityLoad( "data/entities/buildings/mystery_teleport_back.xml", x, y - 200 )
end

----------------------------------------
-- Function: spawn_f
-- Source: scripts\biomes\mountain\mountain_hall.lua
-- XML: data/entities/particles/image_emitters/controls_f.xml
-- XML: data/entities/particles/image_emitters/controls_stickpress.xml
-- Image: data/particles/image_emitters/controls_f.png
-- Image: data/particles/image_emitters/controls_stickpress.png

function spawn_f( x, y )
	if (GameGetIsGamepadConnected() == false) then
		EntityLoad( "data/entities/particles/image_emitters/controls_f.xml", x, y )
	else
		EntityLoad( "data/entities/particles/image_emitters/controls_stickpress.xml", x+1, y )
	end
end

----------------------------------------
-- Function: spawn_f_trigger
-- Source: scripts\biomes\mountain\mountain_hall.lua
-- XML: data/entities/buildings/controls_f_trigger.xml

function spawn_f_trigger( x, y )
	EntityLoad( "data/entities/buildings/controls_f_trigger.xml", x, y )
end

----------------------------------------
-- Function: spawn_finish_line
-- Source: scripts\biomes\lavalake_racing.lua
-- XML: data/entities/buildings/racing_checkpoint.xml

function spawn_finish_line( x, y )
	local eid = EntityLoad( "data/entities/buildings/racing_checkpoint.xml", x, y )
	EntityAddTag(eid, "finish_line" )
end

----------------------------------------
-- Function: spawn_fish
-- Source: scripts\biomes\temple_altar_left_empty.lua
-- XML: data/entities/animals/fish.xml

function spawn_fish(x, y)
	local f = GameGetOrbCountAllTime()
	
	for i=1,f do
		EntityLoad( "data/entities/animals/fish.xml", x, y )
	end
end

----------------------------------------
-- Function: spawn_forcefield_generator
-- Source: scripts\biomes\snowcastle.lua

function spawn_forcefield_generator(x, y)
	if not safe(x,y) then return end
	spawn(g_forcefield_generator,x,y-2,0,0)
end

----------------------------------------
-- Function: spawn_forge_check
-- Source: scripts\biomes\snowcastle.lua
-- XML: data/entities/buildings/forge_item_check.xml
-- Image: data/particles/image_emitters/circle_reverse_64.png

function spawn_forge_check(x, y)
	EntityLoad( "data/entities/buildings/forge_item_check.xml", x, y )
end

----------------------------------------
-- Function: spawn_friend
-- Source: scripts\biomes\friend_6.lua
-- XML: data/entities/animals/friend.xml
-- Image: data/ui_gfx/health_slider_back.png
-- Image: data/ui_gfx/health_slider_front.png

function spawn_friend( x, y )
	EntityLoad( "data/entities/animals/friend.xml", x, y )
end

----------------------------------------
-- Function: spawn_from_list
-- Source: scripts\item_spawnlists.lua

function spawn_from_list( listname, x, y )
	SetRandomSeed( x+425, y-243 )
	local spawnlist
	
	if ( type( listname ) == "string" ) then
		spawnlist = spawnlists[listname]
	elseif ( type( listname ) == "table" ) then
		spawnlist = listname
	end
	
	if ( spawnlist == nil ) then
		print( "Couldn't find a spawn list with name: " .. tostring( listname ) )
		return
	end
	
	local rndmin = spawnlist.rnd_min or 0
	local rndmax = spawnlist.rnd_max or 100
	
	local rnd = Random( rndmin, rndmax )
	
	if ( spawnlist.spawns ~= nil ) then
		for i,data in ipairs( spawnlist.spawns ) do
			local vmin = data.value_min or rndmin
			local vmax = data.value_max or rndmax
			
			if ( rnd >= vmin ) and ( rnd <= vmax ) then
				if ( data.spawn_requires_flag ~= nil ) and ( HasFlagPersistent( data.spawn_requires_flag ) == false ) then
					return
				end
				
				local ox = data.offset_x or 0
				local oy = data.offset_y or 0
				
				if ( data.load_entity_func ~= nil ) then
					data.load_entity_func( data, x, y )
					return
				elseif ( data.load_entity_from_list ~= nil ) then
					spawn_from_list( data.load_entity_from_list, x, y )
					return
				elseif ( data.load_entity ~= nil ) then
					EntityLoad( data.load_entity, x + ox, y + oy )
					return
				end
			end
		end
	end
end

----------------------------------------
-- Function: spawn_fruit
-- Source: scripts\biomes\gourd_room.lua
-- XML: data/entities/animals/shotgunner.xml
-- XML: data/entities/items/pickup/gourd.xml
-- Image: data/items_gfx/gourd.png
-- Image: data/items_gfx/in_hand/gourd_in_hand.png
-- Image: data/ui_gfx/items/gourd.png

function spawn_fruit( x, y )
	EntityLoad( "data/entities/items/pickup/gourd.xml", x, y )
	EntityLoad( "data/entities/items/pickup/gourd.xml", x - 12, y )
	EntityLoad( "data/entities/items/pickup/gourd.xml", x + 12, y )
	EntityLoad( "data/entities/items/pickup/gourd.xml", x, y - 12 )
	EntityLoad( "data/entities/items/pickup/gourd.xml", x - 12, y )
	EntityLoad( "data/entities/animals/shotgunner.xml", x + 24, y - 24 )
end

----------------------------------------
-- Function: spawn_fullhp
-- Source: scripts\biome_scripts.lua
-- XML: data/entities/items/pickup/heart_fullhp.xml

function spawn_fullhp(x, y)
	EntityLoad( "data/entities/items/pickup/heart_fullhp.xml", x, y )
end

----------------------------------------
-- Function: spawn_fun
-- Source: scripts\biomes\funroom.lua
-- XML: data/entities/buildings/funroom_check.xml

function spawn_fun(x, y)
	EntityLoad( "data/entities/buildings/funroom_check.xml", x, y )
end

----------------------------------------
-- Function: spawn_fungi
-- Source: scripts\biomes\tower.lua

function spawn_fungi(x, y)
	spawn_any_enemy( x, y )
end

----------------------------------------
-- Function: spawn_fungitrap
-- Source: scripts\biomes\fungiforest.lua

function spawn_fungitrap(x, y)
	spawn(g_fungitrap,x,y)
end

----------------------------------------
-- Function: spawn_gate
-- Source: scripts\biomes\wizardcave_entrance.lua
-- XML: data/entities/buildings/wizardcave_gate.xml
-- Image: data/particles/image_emitters/wizardcave_gate_ornaments.png

function spawn_gate(x, y)
	EntityLoad( "data/entities/buildings/wizardcave_gate.xml", x, y+55 )
end

----------------------------------------
-- Function: spawn_ghost
-- Source: scripts\buildings\snowcrystal.lua
-- XML: data/entities/particles/poof_blue.xml

function spawn_ghost()
	local entity_id = GetUpdatedEntityID()
	local x,y = EntityGetTransform( entity_id )
	
	local opts = { "acidshooter", "worm_big", "scavenger_grenade", "scavenger_mine", "enlightened_alchemist", "shaman", "tank", "wizard_swapper" }
	
	SetRandomSeed( GameGetFrameNum(), x + entity_id )
	
	local raycasts = 4
	local dir = ( math.pi * 2.0 ) / raycasts
	local length = 8
	
	local rnd = Random( 1, #opts )
	local opt = "data/entities/animals/illusions/" .. opts[rnd] .. ".xml"
	
	local max_radius = 512
	local p = EntityGetInRadiusWithTag( x, y, max_radius, "player_unit" )
	
	if ( #p > 0 ) then
		local t = p[1]
		local px, py = EntityGetTransform( t )
		
		local dx = px + Random( -200, 200 )
		local dy = py + Random( -200, 200 )
		
		local dist = math.abs( py - dy ) + math.abs( px - dx )
		local limit = 0
		local wall = true
		
		while ( ( dist < 100 ) or wall ) and ( limit < 20 ) do
			dx = px + Random( -200, 200 )
			dy = py + Random( -200, 200 )
			dist = math.abs( py - dy ) + math.abs( px - dx )
			limit = limit + 1
			
			for j=0,raycasts-1 do
				local ex = dx + math.cos( j * dir ) * length
				local ey = dy - math.sin( j * dir ) * length
				
				wall = RaytraceSurfaces( dx, dy, ex, ey )
				
				if wall then
					break
				end
			end
		end
		
		EntityLoad( "data/entities/particles/poof_blue.xml", dx, dy )
		EntityLoad( opt, dx, dy )
	end
end

----------------------------------------
-- Function: spawn_ghost_crystal
-- Source: scripts\biomes\wizardcave.lua

function spawn_ghost_crystal(x, y)
	spawn(g_ghost_crystal,x-1,y,0,0)
end

----------------------------------------
-- Function: spawn_ghostlamp
-- Source: scripts\biome_scripts.lua

function spawn_ghostlamp(x, y)
	spawn2(g_ghostlamp,x,y,0,0)
end

----------------------------------------
-- Function: spawn_grass
-- Source: scripts\biomes\mountain\mountain_left_entrance.lua
-- XML: data/entities/props/mountain_left_entrance_grass.xml
-- Image: data/biome_impl/mountain/left_entrance_grass.png

function spawn_grass( x, y )
	EntityLoad( "data/entities/props/mountain_left_entrance_grass.xml", x, y )
end

----------------------------------------
-- Function: spawn_group
-- Source: scripts\items\orb_07_trap.lua

function spawn_group( names, x, y )
	-- spawn
	for _,v in ipairs(names) do
		EntityLoad("data/entities/animals/" .. v .. ".xml", x, y)
		x = x + 5
	end

	-- double spawn
	if ProceduralRandomf(x,y) < 0.25 then
		for _,v in ipairs(names) do
			EntityLoad("data/entities/animals/" .. v .. ".xml", x, y)
			x = x + 5
		end
	end
end

----------------------------------------
-- Function: spawn_hanger
-- Source: scripts\biomes\excavationsite.lua

function spawn_hanger(x, y)
	spawn(g_hanger,x,y,0,0)
end

----------------------------------------
-- Function: spawn_hanging_prop
-- Source: scripts\biomes\vault.lua

function spawn_hanging_prop(x, y)
	if safe( x, y ) then
		spawn(g_hanging_props,x,y)
	end
end

----------------------------------------
-- Function: spawn_heart
-- Source: scripts\biome_scripts.lua
-- XML: data/entities/animals/chest_mimic.xml
-- XML: data/entities/items/pickup/chest_leggy.xml
-- XML: data/entities/items/pickup/chest_random.xml
-- XML: data/entities/items/pickup/chest_random_super.xml
-- XML: data/entities/items/pickup/heart.xml
-- Image: data/buildings_gfx/chest_random.png
-- Image: data/buildings_gfx/chest_random_super.png

function spawn_heart( x, y )
	local r = ProceduralRandom( x, y )
	SetRandomSeed( x, y )
	local heart_spawn_percent = 0.7
	
	local year, month, day = GameGetDateAndTimeLocal()
	if ( month == 2 ) and ( day == 14 ) then heart_spawn_percent = 0.35 end


	if (r > heart_spawn_percent) then
		local entity = EntityLoad( "data/entities/items/pickup/heart.xml", x, y)
	elseif (r > 0.3) then
		SetRandomSeed( x+45, y-2123 )
		local rnd = Random( 1, 100 )
		
		if (rnd <= 90) or (y < 512 * 3) then
			rnd = Random( 1, 1000 )
			
			if( Random( 1, 300 ) == 1 ) then spawn_mimic_sign( x, y ) end

			if ( rnd < 1000 ) then
				local entity = EntityLoad( "data/entities/items/pickup/chest_random.xml", x, y)
			else
				local entity = EntityLoad( "data/entities/items/pickup/chest_random_super.xml", x, y)
			end
		else
			rnd = Random( 1, 100 )
			if( Random( 1, 30 ) == 1 ) then spawn_mimic_sign( x, y ) end

			if( rnd <= 95 ) then
				local entity = EntityLoad( "data/entities/animals/chest_mimic.xml", x, y)
			else
				local entity = EntityLoad( "data/entities/items/pickup/chest_leggy.xml", x, y)
			end
		end
	end
end

----------------------------------------
-- Function: spawn_hourglass_blood
-- Source: scripts\biomes\snowcastle_cavern.lua
-- XML: data/entities/buildings/hourglass_blood.xml

function spawn_hourglass_blood(x, y)
	EntityLoad( "data/entities/buildings/hourglass_blood.xml", x, y )
end

----------------------------------------
-- Function: spawn_hourglass_master
-- Source: scripts\biomes\snowcastle_cavern.lua
-- XML: data/entities/buildings/hourglass_master.xml
-- XML: data/entities/buildings/teleport_hourglass.xml
-- Image: data/particles/image_emitters/hourglass.png

function spawn_hourglass_master(x, y)
	EntityLoad( "data/entities/buildings/hourglass_master.xml", x, y )
	EntityLoad( "data/entities/buildings/teleport_hourglass.xml", x, y )
end

----------------------------------------
-- Function: spawn_hourglass_music_trigger
-- Source: scripts\biomes\snowcastle_cavern.lua
-- XML: data/entities/buildings/hourglass_music.xml

function spawn_hourglass_music_trigger(x, y)
	-- NOTE: this has a separate spawnto keep area symmetrical if scene spawns on the other side
	EntityLoad( "data/entities/buildings/hourglass_music.xml", x, y )
end

-- (Truncated/Parse Error)

----------------------------------------
-- Function: spawn_hp
-- Source: scripts\biomes\temple_altar_secret.lua
-- XML: data/entities/buildings/coop_respawn.xml
-- XML: data/entities/items/pickup/heart_fullhp_temple.xml

function spawn_hp( x, y )
	EntityLoad( "data/entities/items/pickup/heart_fullhp_temple.xml", x, y )
	EntityLoad( "data/entities/buildings/coop_respawn.xml", x, y )
end

----------------------------------------
-- Function: spawn_hp_mult
-- Source: scripts\director_helpers_design.lua

function spawn_hp_mult(what, x, y, rand_x, rand_y, hp_multiplier, biome)
	local x_offset,y_offset = 5,5
	-- if( what == nil ) then print( "ERROR - director_helpers - spawn() ... what = nil") end
	local v = random_from_table( what, x, y )
	if ( v ~= nil ) then
		entity_load_camera_bound_hp( v, x + x_offset, y + y_offset, rand_x, rand_y, hp_multiplier, biome )
	end
end

----------------------------------------
-- Function: spawn_huussi_checker
-- Source: scripts\biomes\desert.lua
-- XML: data/entities/buildings/huussi.xml

function spawn_huussi_checker( x, y )
	EntityLoad( "data/entities/buildings/huussi.xml", x, y )
end

----------------------------------------
-- Function: spawn_i
-- Source: scripts\biomes\mountain\mountain_hall.lua
-- XML: data/entities/particles/image_emitters/controls_back.xml
-- XML: data/entities/particles/image_emitters/controls_i.xml
-- Image: data/particles/image_emitters/controls_back.png
-- Image: data/particles/image_emitters/controls_i.png

function spawn_i( x, y )
	if (GameGetIsGamepadConnected() == false) then
		EntityLoad( "data/entities/particles/image_emitters/controls_i.xml", x, y )
	else
		EntityLoad( "data/entities/particles/image_emitters/controls_back.xml", x-1, y+1 )
	end
end

----------------------------------------
-- Function: spawn_i_trigger
-- Source: scripts\biomes\mountain\mountain_hall.lua
-- XML: data/entities/buildings/controls_i_trigger.xml

function spawn_i_trigger( x, y )
	EntityLoad( "data/entities/buildings/controls_i_trigger.xml", x, y )
end

----------------------------------------
-- Function: spawn_inventory
-- Source: scripts\biomes\mountain\mountain_hall.lua
-- XML: data/entities/particles/image_emitters/controls_inventory.xml
-- XML: data/entities/particles/image_emitters/controls_inventory_gamepad.xml
-- Image: data/particles/image_emitters/controls_inventory.png
-- Image: data/particles/image_emitters/controls_inventory_gamepad.png

function spawn_inventory( x, y )
	if (GameGetIsGamepadConnected() == false) then
		EntityLoad( "data/entities/particles/image_emitters/controls_inventory.xml", x, y )
	else
		EntityLoad( "data/entities/particles/image_emitters/controls_inventory_gamepad.xml", x, y )
	end
end

----------------------------------------
-- Function: spawn_inventory_trigger
-- Source: scripts\biomes\mountain\mountain_hall.lua
-- XML: data/entities/buildings/controls_inventory_trigger.xml

function spawn_inventory_trigger( x, y )
	EntityLoad( "data/entities/buildings/controls_inventory_trigger.xml", x, y )
end

----------------------------------------
-- Function: spawn_items
-- Source: scripts\biomes\wizardcave_entrance.lua

function spawn_items( pos_x, pos_y ) end

----------------------------------------
-- Function: spawn_killer
-- Source: scripts\biomes\friend_6.lua
-- XML: data/entities/animals/ultimate_killer.xml

function spawn_killer( x, y )
	EntityLoad( "data/entities/animals/ultimate_killer.xml", x, y )
end

----------------------------------------
-- Function: spawn_lab_puzzle
-- Source: scripts\biomes\vault.lua

function spawn_lab_puzzle(x, y)
	SetRandomSeed(x, y)
	local type_a = random_from_array({
		"poly",
		"tele",
		"charm",
		"berserk",
	})
	local type_b = random_from_array({
		"protect",
		"worm",
		"invis",
		"speed",
	})
	EntityLoad("data/entities/buildings/vault_lab_puzzle_" .. type_a .. ".xml", x - 10, y)
	EntityLoad("data/entities/buildings/vault_lab_puzzle_" .. type_b .. ".xml", x + 11, y)
end

----------------------------------------
-- Function: spawn_ladder
-- Source: scripts\biomes\excavationsite.lua

function spawn_ladder(x, y)
	--spawn(g_ladder,x,y-80,0,0)
end

----------------------------------------
-- Function: spawn_lamp
-- Source: scripts\biomes\wizardcave_entrance.lua

function spawn_lamp(x, y)
	spawn(g_lamp,x,y,0,0)
end

----------------------------------------
-- Function: spawn_lamp2
-- Source: scripts\biomes\wizardcave.lua

function spawn_lamp2(x, y)
	spawn(g_lamp2,x-1,y,0,0)
end

----------------------------------------
-- Function: spawn_lamp_long
-- Source: scripts\biomes\temple_altar_right_snowcave_empty.lua

function spawn_lamp_long(x, y)
	spawn(g_lamp,x,y,0,15)
end

----------------------------------------
-- Function: spawn_large_enemies
-- Source: scripts\biomes\wizardcave.lua

function spawn_large_enemies(x, y)
	spawn(g_large_enemies,x-1,y,0,0)
	-- spawn_hp_mult(g_large_enemies,x,y,0,0,8,"crypt")
end

----------------------------------------
-- Function: spawn_laser_trap
-- Source: scripts\biomes\vault.lua
-- XML: data/entities/props/physics/trap_laser_toggling.xml
-- Image: data/biome_impl/vault/hole.png
-- Image: data/props_gfx/trap_laser_small.png

function spawn_laser_trap(x, y)
	SetRandomSeed( x, y )
	
	LoadPixelScene( "data/biome_impl/vault/hole.png", "", x, y, "", true )
	
	if ( Random( 1, 3 ) == 2 ) then
		EntityLoad("data/entities/props/physics/trap_laser_toggling.xml", x + 5, y + 5)
	end
end

----------------------------------------
-- Function: spawn_lasergate_ver
-- Source: scripts\biomes\robobase.lua
-- XML: data/entities/buildings/lasergate_down.xml

function spawn_lasergate_ver( x, y )
	EntityLoad( "data/entities/buildings/lasergate_down.xml", x + 5, y + 3 )
end

----------------------------------------
-- Function: spawn_lasergun
-- Source: scripts\biomes\liquidcave.lua
-- XML: data/entities/buildings/lasergun.xml

function spawn_lasergun( x, y )
	EntityLoad( "data/entities/buildings/lasergun.xml", x + 5, y + 5 )
end

----------------------------------------
-- Function: spawn_leggy
-- Source: scripts\items\potion_mimic.lua
-- XML: data/entities/animals/mimic_potion.xml
-- XML: data/entities/particles/polymorph_explosion.xml
-- Image: data/items_gfx/potion_normals.png

function spawn_leggy( entity_item )
	local x, y = EntityGetTransform( entity_item )
	EntityLoad( "data/entities/particles/polymorph_explosion.xml", x, y )
	GamePlaySound( "data/audio/Desktop/misc.bank", "game_effect/polymorph/create", x, y );
	EntityLoad( "data/entities/animals/mimic_potion.xml", x, y )
	EntityKill( entity_item )
end

----------------------------------------
-- Function: spawn_lukki
-- Source: scripts\buildings\lukki_eggs.lua
-- XML: data/entities/animals/lukki/lukki_tiny.xml

function spawn_lukki( entity_id, pos_x, pos_y )	
	GamePlaySound( "data/audio/Desktop/animals.bank", "lukki_eggs/destroy", pos_x, pos_y )
	EntityLoad( "data/entities/animals/lukki/lukki_tiny.xml", pos_x, pos_y )
end

----------------------------------------
-- Function: spawn_machines
-- Source: scripts\biomes\vault_frozen.lua

function spawn_machines(x, y)
	spawn(g_machines,x+5,y+5,0,0)
end

----------------------------------------
-- Function: spawn_material_checker
-- Source: scripts\biomes\orbrooms\orbroom_shared.lua
-- XML: data/entities/buildings/orb_room_materialchecker.xml

function spawn_material_checker( x, y, material1_str, lua_filename, image_emitter, image_emitter_x, image_emitter_y )
	local entity = EntityLoad( "data/entities/buildings/orb_room_materialchecker.xml", x, y )

	local material1 = CellFactory_GetType( material1_str )
	local material2 = -1

	local comp_mat = EntityGetFirstComponent( entity, "MaterialAreaCheckerComponent" )
	if comp_mat ~= nil then
		ComponentSetValue( comp_mat, "material", tostring(material1) )
		ComponentSetValue( comp_mat, "material2", tostring(material2) )
	end

	local comp_lua = EntityGetFirstComponent( entity, "LuaComponent" )
	if comp_lua ~= nil then
		ComponentSetValue( comp_lua, "script_material_area_checker_success", lua_filename )
	end

	EntityAddComponent( entity, "VariableStorageComponent", 
	{ 
		name = "emitter_x",
		value_int = image_emitter_x,
	} )

	EntityAddComponent( entity, "VariableStorageComponent", 
	{ 
		name = "emitter_y",
		value_int = image_emitter_y,
	} )

	EntityAddComponent( entity, "VariableStorageComponent", 
	{ 
		name = "emitter",
		value_string = image_emitter,
	} )
end

----------------------------------------
-- Function: spawn_meditation_cube
-- Source: scripts\biomes\excavationsite.lua
-- XML: data/entities/buildings/teleport_meditation_cube.xml
-- Image: data/biome_impl/excavationsite/meditation_cube.png
-- Image: data/biome_impl/excavationsite/meditation_cube_visual.png

function spawn_meditation_cube( x, y )
	SetRandomSeed( x, y )
	local rnd = Random( 1, 100 )
	if( rnd > 96 and not ModIsEnabled("nightmare") ) then
		LoadPixelScene( "data/biome_impl/excavationsite/meditation_cube.png", "data/biome_impl/excavationsite/meditation_cube_visual.png", x-20, y-29, "", true )
		EntityLoad( "data/entities/buildings/teleport_meditation_cube.xml", x, y-70 )
	end
end

----------------------------------------
-- Function: spawn_metportal
-- Source: scripts\biomes\smokecave_left.lua
-- XML: data/entities/buildings/teleport_smokecave.xml

function spawn_metportal( x, y )
	EntityLoad( "data/entities/buildings/teleport_smokecave.xml", x, y )
end

----------------------------------------
-- Function: spawn_mimic_sign
-- Source: scripts\biome_scripts.lua
-- Image: data/biome_impl/mimic_sign.png
-- Image: data/biome_impl/mimic_sign_visual.png

function spawn_mimic_sign( x, y )
	impl_raytrace_x = function( x0, y0, x_direction, max_length )
		local hit_something,hit_x,hit_y = Raytrace( x0, y0, x0 + (x_direction * max_length), y0 )
		return hit_x
	end

	local min_x = impl_raytrace_x( x, y, -1, 32 )
	local max_x = impl_raytrace_x( x, y, 1, 32 )

	if( ( x - min_x ) >= 24 and Raytrace( x - 16, y, x - 16, y - 26 ) == false ) then
		local hit_something, temp_x, max_y = Raytrace( x - 16, y - 25, x - 16, y + 32 )
		LoadPixelScene( "data/biome_impl/mimic_sign.png", "data/biome_impl/mimic_sign_visual.png", min_x, max_y - 23, "", true, true )
	elseif( ( max_x - x ) >= 24 and Raytrace( x + 16, y, x + 16, y - 26 ) == false ) then
		local hit_something, temp_x, max_y = Raytrace( x + 16, y - 25, x + 16, y + 32 )
		LoadPixelScene( "data/biome_impl/mimic_sign.png", "data/biome_impl/mimic_sign_visual.png", max_x - 22, max_y - 23, "", true, true )
	end
end

----------------------------------------
-- Function: spawn_moon
-- Source: scripts\biome_scripts.lua
-- XML: data/entities/buildings/moon_altar.xml

function spawn_moon(x, y)
	EntityLoad( "data/entities/buildings/moon_altar.xml", x, y )
end

----------------------------------------
-- Function: spawn_motordoor
-- Source: scripts\biomes\temple_altar_secret.lua
-- XML: data/entities/props/physics_templedoor2.xml
-- Image: data/props_gfx/temple_door_notched.png
-- Image: data/props_gfx/temple_door_wheel.png

function spawn_motordoor( x, y )
	EntityLoad( "data/entities/props/physics_templedoor2.xml", x, y )
end

----------------------------------------
-- Function: spawn_mouse
-- Source: scripts\biomes\mountain\mountain_left_entrance.lua
-- XML: data/entities/particles/image_emitters/controls_lt.xml
-- XML: data/entities/particles/image_emitters/controls_mouse.xml
-- Image: data/particles/image_emitters/controls_lt.png
-- Image: data/particles/image_emitters/controls_mouse.png

function spawn_mouse( x, y )
	if (GameGetIsGamepadConnected() == false) then
		EntityLoad( "data/entities/particles/image_emitters/controls_mouse.xml", x, y )
	else
		EntityLoad( "data/entities/particles/image_emitters/controls_lt.xml", x, y-2 )
	end
end

----------------------------------------
-- Function: spawn_mouse_trigger
-- Source: scripts\biomes\mountain\mountain_left_entrance.lua
-- XML: data/entities/buildings/controls_mouse_trigger.xml

function spawn_mouse_trigger( x, y )
	EntityLoad( "data/entities/buildings/controls_mouse_trigger.xml", x, y )
end

----------------------------------------
-- Function: spawn_mouth
-- Source: scripts\biomes\meat.lua

function spawn_mouth(x, y)
	SetRandomSeed( x, y )
	spawn(g_mouth,x+5+Random(-10,10),y+5+Random(-10,10))
end

----------------------------------------
-- Function: spawn_music_machine
-- Source: scripts\biomes\winter.lua
-- XML: data/entities/props/music_machines/music_machine_02.xml

function spawn_music_machine( x, y )
	EntityLoad( "data/entities/props/music_machines/music_machine_02.xml", x, y )
end

----------------------------------------
-- Function: spawn_music_trigger
-- Source: scripts\biomes\temple_altar_left_empty.lua
-- XML: data/entities/buildings/music_trigger_temple_left.xml

function spawn_music_trigger( x, y )
	--EntityLoad( "data/entities/buildings/music_trigger_temple_left.xml", x, y )
end

----------------------------------------
-- Function: spawn_nest
-- Source: scripts\biomes\tower.lua

function spawn_nest(x, y)
	spawn_any_enemy( x, y )
end

----------------------------------------
-- Function: spawn_ocarina
-- Source: scripts\biomes\mountain_tree.lua
-- XML: data/entities/buildings/workshop_tree_holiday.xml
-- XML: data/entities/items/kantele.xml

function spawn_ocarina( x, y )
	--local ocarina_cards = { "OCARINA_A", "OCARINA_B", "OCARINA_C", "OCARINA_D", "OCARINA_E", "OCARINA_F", "OCARINA_GSHARP", "OCARINA_A2", }
	local ocarina_cards = { "KANTELE_A", "KANTELE_D", "KANTELE_DIS", "KANTELE_E", "KANTELE_G" }
	local distance = 20
	
	for i,v in ipairs( ocarina_cards ) do
		local x_ = x - #ocarina_cards * distance * 0.5 + i * distance
		
		CreateItemActionEntity( v, x_, y )
	end
	
	for i,v in ipairs( ocarina_cards ) do
		local x_ = x - #ocarina_cards * distance * 0.5 + i * distance
		
		CreateItemActionEntity( v, x_, y + distance )
	end
	
	EntityLoad( "data/entities/items/kantele.xml", x, y - 32 )
	
	local year, month, day = GameGetDateAndTimeLocal()
	
	if ( month == 12 ) and ( day >= 23 ) and ( day <= 27 ) then
		EntityLoad( "data/entities/buildings/workshop_tree_holiday.xml", x, y )
	end
end

----------------------------------------
-- Function: spawn_oiltank_puzzle
-- Source: scripts\biomes\coalmine.lua
-- XML: data/entities/buildings/oiltank_puzzle.xml

function spawn_oiltank_puzzle( x, y )
	EntityLoad( "data/entities/buildings/oiltank_puzzle.xml", x, y)
end

----------------------------------------
-- Function: spawn_orb
-- Source: scripts\biomes\tower_end.lua

function spawn_orb(x, y)
end

----------------------------------------
-- Function: spawn_perk
-- Source: scripts\biomes\boss_arena.lua
-- XML: data/entities/items/pickup/perk.xml

function spawn_perk( x, y )
	local spawn_shop, spawn_perks = temple_random( x, y )
	if( spawn_perks == "0" ) then
		return
	end

	EntityLoad( "data/entities/items/pickup/perk.xml", x, y )
end

----------------------------------------
-- Function: spawn_perk_reroll
-- Source: scripts\biomes\temple_altar_right_snowcave_empty.lua
-- XML: data/entities/items/pickup/perk_reroll.xml
-- Image: data/buildings_gfx/perk_reroll.png

function spawn_perk_reroll( x, y )
	EntityLoad( "data/entities/items/pickup/perk_reroll.xml", x, y )
end

----------------------------------------
-- Function: spawn_persistent_teleport
-- Source: scripts\biome_scripts.lua

function spawn_persistent_teleport(x, y)
	--[[
	local r = ProceduralRandom(x + 5.352, y - 4.463)
	if (r > 0.1) then
		local level = 0 -- TODO: fetch biome level somehow
		SpawnPersistentTeleport( x, y )
	end
	]]--
end

----------------------------------------
-- Function: spawn_physics_acid_fungus
-- Source: scripts\biomes\fungiforest.lua

function spawn_physics_acid_fungus(x, y)
	spawn(g_physics_fungi_acid,x,y)
end

----------------------------------------
-- Function: spawn_physics_fungus
-- Source: scripts\biomes\fungiforest.lua

function spawn_physics_fungus(x, y)
	spawn(g_physics_fungi,x,y)
end

----------------------------------------
-- Function: spawn_physicsstructure
-- Source: scripts\biomes\excavationsite.lua

function spawn_physicsstructure(x, y)
	spawn(g_physicsstructure,x-5,y-5,0,0)
end

----------------------------------------
-- Function: spawn_pillars
-- Source: scripts\biomes\mountain_tree.lua

function spawn_pillars( x, y )
	local count = 6
	local width = 660
	local inc = width / count
	local size = 48
	
	local under = 1
	local above = 3
	
	SetRandomSeed( x, y )
	local flags = 
	{
		{ { "misc_chest_rain", "crain" }, { "misc_util_rain", "urain" }, { "misc_worm_rain", "wrain" }, { "misc_greed_rain", "grain" }, { "misc_altar_tablet", "train" }, { "misc_mimic_potion_rain", "mrain" }, { "misc_monk_bots", "mbots" }, { "misc_sun_effect", "seffect" }, { "misc_darksun_effect", "dseffect" }, { "secret_tower", "secrett" }, { "player_status_ghostly", "pghost" }, { "player_status_ratty", "prat" }, { "player_status_funky", "pfungi" }, { "player_status_lukky", "plukki" }, { "player_status_halo", "phalo" } },
		{ { "essence_fire", "essencef" }, { "essence_water", "essencew" }, { "essence_laser", "essencee" }, { "essence_air", "essencea" }, { "essence_alcohol", "essenceal" }, { "secret_moon", "moon" }, { "secret_moon2", "moona" }, { "special_mood", "moong" }, { "secret_dmoon", "dmoon" }, { "dead_mood", "dmoong" }, { "secret_sun_collision", "sunmoon" }, { "secret_darksun_collision", "dsunmoon" } },
		{ { "progress_ending0", "end0" }, { "progress_ending1_toxic", "endt" }, { "progress_ending1_gold", "endb" }, { "progress_ending2", "endg" }, { "progress_newgameplusplus3", "endp" }, { "progress_nightmare", "endn" } },
		{ { "miniboss_dragon", "minid" }, { "miniboss_limbs", "minil" }, { "miniboss_meat", "meat" }, { "miniboss_ghost", "minigh" }, { "miniboss_pit", "minip" }, { "miniboss_alchemist", "minia" }, { "miniboss_robot", "minir" }, { "miniboss_wizard", "meme" }, { "miniboss_maggot", "maggot" }, { "miniboss_fish", "fish" }, { "miniboss_islandspirit", "elk" }, { "miniboss_threelk", "threelk" }, { "miniboss_gate_monsters", "minigm" }, { "final_secret_orb3", "yeah3" }, { "miniboss_sky", "minisky" }, { "boss_centipede", "boss" } },
		{ { "progress_orb_1", "orbf" }, { "progress_orb_evil", "orbe" }, { "progress_orb_all", "orba" }, { "progress_pacifist", "pacifist" }, { "progress
-- (Truncated/Parse Error)

----------------------------------------
-- Function: spawn_pipes_big_hor
-- Source: scripts\biomes\vault.lua

function spawn_pipes_big_hor( x, y )
	load_random_pixel_scene( g_pipes_big_hor, x, y)
end

----------------------------------------
-- Function: spawn_pipes_big_turn_left
-- Source: scripts\biomes\vault.lua

function spawn_pipes_big_turn_left( x, y )
	load_random_pixel_scene( g_pipes_big_turn_left, x, y)
end

----------------------------------------
-- Function: spawn_pipes_big_turn_right
-- Source: scripts\biomes\vault.lua

function spawn_pipes_big_turn_right( x, y )
	load_random_pixel_scene( g_pipes_big_turn_right, x, y)
end

----------------------------------------
-- Function: spawn_pipes_big_ver
-- Source: scripts\biomes\vault.lua

function spawn_pipes_big_ver( x, y )
	load_random_pixel_scene( g_pipes_big_ver, x, y)
end

----------------------------------------
-- Function: spawn_pipes_cross
-- Source: scripts\biomes\vault_frozen.lua

function spawn_pipes_cross( x, y )
	load_random_pixel_scene( g_pipes_cross, x, y)
end

----------------------------------------
-- Function: spawn_pipes_hor
-- Source: scripts\biomes\vault_frozen.lua

function spawn_pipes_hor( x, y )
	load_random_pixel_scene( g_pipes_hor, x, y)
end

----------------------------------------
-- Function: spawn_pipes_turn_left
-- Source: scripts\biomes\vault_frozen.lua

function spawn_pipes_turn_left( x, y )
	load_random_pixel_scene( g_pipes_turn_left, x, y)
end

----------------------------------------
-- Function: spawn_pipes_turn_right
-- Source: scripts\biomes\vault_frozen.lua

function spawn_pipes_turn_right( x, y )
	load_random_pixel_scene( g_pipes_turn_right, x, y)
end

----------------------------------------
-- Function: spawn_pipes_ver
-- Source: scripts\biomes\vault_frozen.lua

function spawn_pipes_ver( x, y )
	load_random_pixel_scene( g_pipes_ver, x, y)
end

----------------------------------------
-- Function: spawn_portal
-- Source: scripts\biome_scripts.lua
-- XML: data/entities/buildings/teleport_boss_arena.xml
-- XML: data/entities/buildings/teleport_liquid_powered.xml

function spawn_portal( x, y )
	if( BIOME_NAME == "crypt" ) then
		EntityLoad( "data/entities/buildings/teleport_boss_arena.xml", x, y - 4 )
	else
		EntityLoad( "data/entities/buildings/teleport_liquid_powered.xml", x, y - 4 )
	end
end

----------------------------------------
-- Function: spawn_potion_altar
-- Source: scripts\biome_scripts.lua
-- Image: data/biome_impl/potion_altar.png
-- Image: data/biome_impl/potion_altar_visual.png

function spawn_potion_altar(x, y)
	local r = ProceduralRandom( x, y )
	
	if (r > 0.65) then
		LoadPixelScene( "data/biome_impl/potion_altar.png", "data/biome_impl/potion_altar_visual.png", x-5, y-15, "", true )
	end
end

----------------------------------------
-- Function: spawn_potions
-- Source: scripts\biome_scripts.lua
-- XML: data/entities/items/pickup/potion_mimic.xml
-- Image: data/items_gfx/potion_normals.png

function spawn_potions( x, y )
	SetRandomSeed( x, y )
	local rnd = Random( 1, 1000 )
	if (rnd <= 995) or (y < 512 * 3) then
		spawn_from_list( "potion_spawnlist", x, y )
	else
		EntityLoad( "data/entities/items/pickup/potion_mimic.xml", x, y)
	end

end

----------------------------------------
-- Function: spawn_pressureplate
-- Source: scripts\biomes\temple_altar_secret.lua
-- XML: data/entities/props/temple_pressure_plate.xml

function spawn_pressureplate( x, y )
	EntityLoad( "data/entities/props/temple_pressure_plate.xml", x, y )
end

----------------------------------------
-- Function: spawn_pressureplates
-- Source: scripts\biomes\wizardcave.lua

function spawn_pressureplates(x, y)
	spawn(g_pressureplates,x,y,0,0)
end

----------------------------------------
-- Function: spawn_prize
-- Source: scripts\biomes\scale.lua

function spawn_prize(x, y)
	if ( HasFlagPersistent( "progress_sun" ) and HasFlagPersistent( "progress_darksun" ) ) and ( HasFlagPersistent( "card_unlocked_black_hole" ) == false ) then
		CreateItemActionEntity( "BLACK_HOLE_GIGA", x, y )
	end
end

----------------------------------------
-- Function: spawn_props
-- Source: scripts\biomes\wizardcave_entrance.lua

function spawn_props(x, y)
	spawn(g_props,x,y-3,0,0)
end

----------------------------------------
-- Function: spawn_props2
-- Source: scripts\biomes\wizardcave_entrance.lua

function spawn_props2( x, y ) end

----------------------------------------
-- Function: spawn_props3
-- Source: scripts\biomes\wizardcave_entrance.lua

function spawn_props3( x, y ) end

----------------------------------------
-- Function: spawn_props4
-- Source: scripts\biomes\snowcastle.lua

function spawn_props4(x, y)
	if safe( x, y ) then
		spawn(g_props4,x,y,0,0)
	end
end

----------------------------------------
-- Function: spawn_racing_cart
-- Source: scripts\biomes\lavalake_racing.lua
-- XML: data/entities/buildings/racing_cart.xml

function spawn_racing_cart( x, y )
	EntityLoad( "data/entities/buildings/racing_cart.xml", x, y )
end

----------------------------------------
-- Function: spawn_rainbow_card
-- Source: scripts\biomes\lake.lua

function spawn_rainbow_card( x, y )
	CreateItemActionEntity( "RAINBOW_TRAIL", x, y )
end

----------------------------------------
-- Function: spawn_receptacle
-- Source: scripts\biomes\snowcave.lua
-- XML: data/entities/buildings/receptacle_water.xml

function spawn_receptacle( x, y )
	EntityLoad( "data/entities/buildings/receptacle_water.xml", x, y )
end

----------------------------------------
-- Function: spawn_receptacle_oil
-- Source: scripts\biomes\coalmine.lua
-- XML: data/entities/buildings/receptacle_oil.xml
-- XML: data/entities/items/pickup/potion_empty.xml

function spawn_receptacle_oil( x, y )
	EntityLoad( "data/entities/buildings/receptacle_oil.xml", x, y )
	EntityLoad( "data/entities/items/pickup/potion_empty.xml", x+72, y-17 )
end

----------------------------------------
-- Function: spawn_reward_wands
-- Source: scripts\biomes\pyramid.lua

function spawn_reward_wands( x, y )
	spawn(g_reward_items,x,y,0,0)
end

----------------------------------------
-- Function: spawn_robots
-- Source: scripts\biomes\vault_frozen.lua

function spawn_robots(x, y)
	if safe( x, y ) then
		spawn(g_robots,x,y)
	end
	-- spawn_hp_mult(g_robots,x,y,0,0,4,"vault")
end

----------------------------------------
-- Function: spawn_rock
-- Source: scripts\biomes\excavationsite.lua

function spawn_rock(x, y)
	spawn(g_rock,x,y)
end

----------------------------------------
-- Function: spawn_rock1
-- Source: scripts\biomes\scale.lua
-- XML: data/entities/props/physics_sun_rock.xml
-- Image: data/items_gfx/normals_orb_40_noise.png

function spawn_rock1(x, y)
	if HasFlagPersistent( "progress_sun" ) then
		EntityLoad( "data/entities/props/physics_sun_rock.xml", x, y )
	end
end

----------------------------------------
-- Function: spawn_rock2
-- Source: scripts\biomes\scale.lua
-- XML: data/entities/props/physics_darksun_rock.xml
-- Image: data/items_gfx/normals_orb_40_noise.png

function spawn_rock2(x, y)
	if HasFlagPersistent( "progress_darksun" ) then
		EntityLoad( "data/entities/props/physics_darksun_rock.xml", x, y )
	end
end

----------------------------------------
-- Function: spawn_root_grower
-- Source: scripts\biomes\snowcastle.lua
-- XML: data/entities/props/root_grower.xml

function spawn_root_grower(x, y)
	EntityLoad( "data/entities/props/root_grower.xml", x, y )
end

----------------------------------------
-- Function: spawn_rubble
-- Source: scripts\biomes\temple_altar_right_snowcave_empty.lua

function spawn_rubble(x, y)
	spawn(g_rubble,x,y,5,0)
end

----------------------------------------
-- Function: spawn_runes
-- Source: scripts\biome_scripts.lua
-- XML: data/entities/buildings/runes.xml

function spawn_runes( x, y )
	--EntityLoad( "data/entities/buildings/runes.xml", x, y )
end

----------------------------------------
-- Function: spawn_sampo_spot
-- Source: scripts\biomes\mountain\mountain_floating_island.lua
-- XML: data/entities/animals/boss_centipede/ending/ending_sampo_spot_mountain.xml

function spawn_sampo_spot(x, y)
	EntityLoad( "data/entities/animals/boss_centipede/ending/ending_sampo_spot_mountain.xml", x, y )
end

----------------------------------------
-- Function: spawn_save
-- Source: scripts\biomes\town.lua

function spawn_save( x, y ) end

----------------------------------------
-- Function: spawn_scavenger_party
-- Source: scripts\biomes\snowcave_petri.lua

function spawn_scavenger_party(x,y)
	spawn(g_scavenger_party, x, y)
end

----------------------------------------
-- Function: spawn_scavengers
-- Source: scripts\biomes\wizardcave.lua

function spawn_scavengers(x, y)
	spawn(g_scavengers,x,y,0,0)
	-- spawn_hp_mult(g_scavengers,x,y,0,0,8,"crypt")
end

----------------------------------------
-- Function: spawn_scorpions
-- Source: scripts\biomes\wizardcave.lua

function spawn_scorpions(x, y)
	spawn(g_scorpions,x,y)
end

----------------------------------------
-- Function: spawn_secret
-- Source: scripts\biomes\song_room.lua
-- XML: data/entities/buildings/chest_light.xml
-- XML: data/entities/items/books/book_essences.xml
-- Image: data/buildings_gfx/chest_light.png
-- Image: data/items_gfx/book.png
-- Image: data/items_gfx/book_small.png
-- Image: data/items_gfx/in_hand/book_in_hand.png

function spawn_secret( x, y )
	EntityLoad( "data/entities/buildings/chest_light.xml", x, y )
	EntityLoad( "data/entities/items/books/book_essences.xml", x + 24, y - 16 )
end

----------------------------------------
-- Function: spawn_secret_checker
-- Source: scripts\biomes\lake_statue.lua
-- XML: data/entities/buildings/lake_statue_materialchecker.xml

function spawn_secret_checker( x, y )

	local entity = EntityLoad( "data/entities/buildings/lake_statue_materialchecker.xml", x, y )

	local material1 = CellFactory_GetType( "blood" )
	local material2 = -1
	
	local comp_mat = EntityGetFirstComponent( entity, "MaterialAreaCheckerComponent" )
	if comp_mat ~= nil then
		ComponentSetValue( comp_mat, "material", tostring(material1) )
		ComponentSetValue( comp_mat, "material2", tostring(material2) )
	end

	local comp_lua = EntityGetFirstComponent( entity, "LuaComponent" )
	if comp_lua ~= nil then
		ComponentSetValue( comp_lua, "script_material_area_checker_success", "data/scripts/biomes/lake_statue.lua" )
	end

end

----------------------------------------
-- Function: spawn_shopitem
-- Source: scripts\biome_scripts.lua

function spawn_shopitem( x, y )
	generate_shop_item( x, y, false, 10 )
end

----------------------------------------
-- Function: spawn_shopkeeper
-- Source: scripts\biomes\town.lua

function spawn_shopkeeper(x, y)
end

----------------------------------------
-- Function: spawn_skulls
-- Source: scripts\biomes\tower.lua

function spawn_skulls(x, y) end

----------------------------------------
-- Function: spawn_small_animals
-- Source: scripts\biomes\lake_statue.lua
-- XML: data/entities/animals/boss_spirit/spawner.xml
-- XML: data/entities/buildings/lake_statue_materialchecker.xml
-- XML: data/entities/buildings/teleport_desert.xml
-- XML: data/entities/items/easter/beer_bottle.xml
-- XML: data/entities/items/pickup/essence_fire.xml
-- Image: data/items_gfx/beer_bottle.png
-- Image: data/items_gfx/essences/essence_fire.png

function spawn_small_animals(x,y)
	spawn( g_small_animals, x, y )
	-- if Jussi
	if( is_jussi() ) then
		spawn( g_hiisi, x, y )
		-- effect_drunk_forever.xml
		local r = ProceduralRandom( x-11.631, y+10.2257 )
		if( r >= 0.1 ) then EntityLoad( "data/entities/items/easter/beer_bottle.xml", x, y ) end
		if( r >= 0.3 ) then EntityLoad( "data/entities/items/easter/beer_bottle.xml", x+5, y-5 ) end
		if( r >= 0.6 ) then EntityLoad( "data/entities/items/easter/beer_bottle.xml", x+10, y-10 ) end
		if( r >= 0.9 ) then EntityLoad( "data/entities/items/easter/beer_bottle.xml", x+15, y-15 ) end
	end
end

function spawn_fish(x, y)
	spawn(g_fish,x,y)
end

function spawn_essence(x, y)
	EntityLoad( "data/entities/items/pickup/essence_fire.xml", x, y )
end

function spawn_spirit_spawner(x, y)
	EntityLoad( "data/entities/animals/boss_spirit/spawner.xml", x, y )
end

function spawn_secret_checker( x, y )

	local entity = EntityLoad( "data/entities/buildings/lake_statue_materialchecker.xml", x, y )

	local material1 = CellFactory_GetType( "blood" )
	local material2 = -1
	
	local comp_mat = EntityGetFirstComponent( entity, "MaterialAreaCheckerComponent" )
	if comp_mat ~= nil then
		ComponentSetValue( comp_mat, "material", tostring(material1) )
		ComponentSetValue( comp_mat, "material2", tostring(material2) )
	end

	local comp_lua = EntityGetFirstComponent( entity, "LuaComponent" )
	if comp_lua ~= nil then
		ComponentSetValue( comp_lua, "script_material_area_checker_success", "data/scripts/biomes/lake_statue.lua" )
	end

end

function material_area_checker_success( x, y )
	GameScreenshake( 100 )
	EntityLoad( "data/entities/buildings/teleport_desert.xml", x, y - 300 )
	
	GamePrintImportant( "$log_fasttravel", "$logdesc_fasttravel" )
end
-- (Truncated/Parse Error)

----------------------------------------
-- Function: spawn_small_enemies
-- Source: scripts\biomes\wizardcave_entrance.lua

function spawn_small_enemies(x, y)
	spawn(g_small_enemies,x,y)
end

----------------------------------------
-- Function: spawn_specialshop
-- Source: scripts\biomes\winter.lua

function spawn_specialshop( x, y )
	if ( y > -3000 ) and ( y < 1000 ) then
		generate_shop_item( x, y, false, 0 )
	else
		generate_shop_item( x, y, false, 10 )
	end
end

----------------------------------------
-- Function: spawn_spell_visualizer
-- Source: scripts\biomes\temple_altar_empty.lua
-- XML: data/entities/buildings/workshop_aabb.xml
-- XML: data/entities/buildings/workshop_spell_visualizer.xml

function spawn_spell_visualizer( x, y )
	EntityLoad( "data/entities/buildings/workshop_spell_visualizer.xml", x, y )
	EntityLoad( "data/entities/buildings/workshop_aabb.xml", x, y )
end

----------------------------------------
-- Function: spawn_spirit_spawner
-- Source: scripts\biomes\lake_statue.lua
-- XML: data/entities/animals/boss_spirit/spawner.xml

function spawn_spirit_spawner(x, y)
	EntityLoad( "data/entities/animals/boss_spirit/spawner.xml", x, y )
end

----------------------------------------
-- Function: spawn_stains
-- Source: scripts\biomes\vault.lua

function spawn_stains( x, y )
	load_random_pixel_scene( g_stains, x-10, y )
end

----------------------------------------
-- Function: spawn_stains_ceiling
-- Source: scripts\biomes\vault.lua

function spawn_stains_ceiling( x, y )
	load_random_pixel_scene( g_stains_ceiling, x-20, y-10 )
end

----------------------------------------
-- Function: spawn_stash
-- Source: scripts\biomes\tower.lua

function spawn_stash(x,y)
end

----------------------------------------
-- Function: spawn_statue
-- Source: scripts\biomes\temple_altar_right_snowcave_empty.lua
-- XML: data/entities/props/temple_statue_02.xml
-- Image: data/props_gfx/temple_statue_02.png

function spawn_statue( x, y )
	EntityLoad( "data/entities/props/temple_statue_02.xml", x , y )
end

----------------------------------------
-- Function: spawn_statue_back
-- Source: scripts\biomes\wizardcave.lua

function spawn_statue_back(x, y)
end

----------------------------------------
-- Function: spawn_statue_hand
-- Source: scripts\biomes\snowcave.lua
-- XML: data/entities/buildings/statue_hand_1.xml
-- Image: data/buildings_gfx/statue_hand_3.png

function spawn_statue_hand(x, y)
	EntityLoad("data/entities/buildings/statue_hand_1.xml", x, y)
end

----------------------------------------
-- Function: spawn_statues
-- Source: scripts\biomes\wizardcave.lua

function spawn_statues(x, y)
end

----------------------------------------
-- Function: spawn_stones
-- Source: scripts\biomes\snowcave.lua

function spawn_stones(x, y)
	spawn(g_stones,x,y,0,0)
end

----------------------------------------
-- Function: spawn_stopwatches
-- Source: scripts\biomes\lavalake_racing.lua
-- XML: data/entities/buildings/racing_stopwatch.xml

function spawn_stopwatches( x, y )
	local offset = 26
	y = y + 0.5
	local eid = EntityLoad( "data/entities/buildings/racing_stopwatch.xml", x, y )
	EntityAddTag(eid, "stopwatch_lap" )
	eid = EntityLoad( "data/entities/buildings/racing_stopwatch.xml", x + offset, y )
	EntityAddTag(eid, "stopwatch_prev_lap" )
	eid = EntityLoad( "data/entities/buildings/racing_stopwatch.xml", x + offset * 2, y )
	EntityAddTag(eid, "stopwatch_best_lap" )
end

----------------------------------------
-- Function: spawn_swing_puzzle_box
-- Source: scripts\biomes\coalmine.lua
-- XML: data/entities/props/physics/trap_electricity_suspended.xml
-- Image: data/props_gfx/trap_electricity.png

function spawn_swing_puzzle_box( x, y )
	EntityLoad( "data/entities/props/physics/trap_electricity_suspended.xml", x, y)
end

----------------------------------------
-- Function: spawn_swing_puzzle_target
-- Source: scripts\biomes\coalmine.lua
-- XML: data/entities/buildings/swing_puzzle_target.xml

function spawn_swing_puzzle_target( x, y )
	EntityLoad( "data/entities/buildings/swing_puzzle_target.xml", x, y)
end

----------------------------------------
-- Function: spawn_table
-- Source: scripts\biomes\town.lua

function spawn_table( x, y ) 
	spawn(g_table,x,y,0,0)
end

----------------------------------------
-- Function: spawn_target
-- Source: scripts\biomes\laboratory.lua
-- XML: data/entities/props/dummy_target.xml

function spawn_target(x, y)
	EntityLoad( "data/entities/props/dummy_target.xml", x, y )
end

----------------------------------------
-- Function: spawn_tele1
-- Source: scripts\biomes\teleroom.lua
-- XML: data/entities/buildings/teleport_teleroom_1.xml

function spawn_tele1(x, y)
	EntityLoad( "data/entities/buildings/teleport_teleroom_1.xml", x, y )
end

----------------------------------------
-- Function: spawn_tele2
-- Source: scripts\biomes\teleroom.lua
-- XML: data/entities/buildings/teleport_teleroom_2.xml

function spawn_tele2(x, y)
	EntityLoad( "data/entities/buildings/teleport_teleroom_2.xml", x, y )
end

----------------------------------------
-- Function: spawn_tele3
-- Source: scripts\biomes\teleroom.lua
-- XML: data/entities/buildings/teleport_teleroom_3.xml

function spawn_tele3(x, y)
	EntityLoad( "data/entities/buildings/teleport_teleroom_3.xml", x, y )
end

----------------------------------------
-- Function: spawn_tele4
-- Source: scripts\biomes\teleroom.lua
-- XML: data/entities/buildings/teleport_teleroom_4.xml

function spawn_tele4(x, y)
	EntityLoad( "data/entities/buildings/teleport_teleroom_4.xml", x, y )
end

----------------------------------------
-- Function: spawn_tele5
-- Source: scripts\biomes\teleroom.lua
-- XML: data/entities/buildings/teleport_teleroom_5.xml

function spawn_tele5(x, y)
	EntityLoad( "data/entities/buildings/teleport_teleroom_5.xml", x, y )
end

----------------------------------------
-- Function: spawn_tele6
-- Source: scripts\biomes\teleroom.lua
-- XML: data/entities/buildings/teleport_teleroom_6.xml

function spawn_tele6(x, y)
	EntityLoad( "data/entities/buildings/teleport_teleroom_6.xml", x, y )
end

----------------------------------------
-- Function: spawn_teleport
-- Source: scripts\biomes\robot_egg.lua
-- XML: data/entities/buildings/teleport_robot_egg_return.xml

function spawn_teleport(x, y)
	EntityLoad("data/entities/buildings/teleport_robot_egg_return.xml", x, y)
end

----------------------------------------
-- Function: spawn_teleport_back
-- Source: scripts\biomes\lake.lua
-- XML: data/entities/buildings/teleport_bunker_back.xml

function spawn_teleport_back( x, y )
	EntityLoad( "data/entities/buildings/teleport_bunker_back.xml", x, y )
end

----------------------------------------
-- Function: spawn_teleporter
-- Source: scripts\biomes\snowcave_secret_chamber.lua
-- XML: data/entities/buildings/teleport_snowcave_buried_eye_return.xml

function spawn_teleporter(x, y)
	EntityLoad("data/entities/buildings/teleport_snowcave_buried_eye_return.xml", x, y)
end

----------------------------------------
-- Function: spawn_tower_short
-- Source: scripts\biomes\excavationsite.lua

function spawn_tower_short(x,y)
	generate_tower(x,y,ProceduralRandomi(x-4,y+3,0,2))
end

----------------------------------------
-- Function: spawn_tower_tall
-- Source: scripts\biomes\excavationsite.lua

function spawn_tower_tall(x,y)
	generate_tower(x,y,ProceduralRandomi(x+7,y-1,2,3))
end

----------------------------------------
-- Function: spawn_trapwand
-- Source: scripts\biomes\the_end.lua

function spawn_trapwand(x, y)
end

----------------------------------------
-- Function: spawn_treasure
-- Source: scripts\biomes\winter.lua
-- XML: data/entities/misc/towercheck.xml

function spawn_treasure( x, y )
	EntityLoad( "data/entities/misc/towercheck.xml", x, y )
end

----------------------------------------
-- Function: spawn_tree
-- Source: scripts\biomes\rainforest_dark.lua

function spawn_tree(x, y)
	--spawn(g_trees,x+5,y+5)
end

----------------------------------------
-- Function: spawn_trees
-- Source: scripts\biomes\mountain\mountain_left_entrance.lua

function spawn_trees( x, y )
	spawn( g_trees, x, y+28, 0, 0 )
end

----------------------------------------
-- Function: spawn_trigger_check_stats
-- Source: scripts\biomes\temple_altar_empty.lua
-- XML: data/entities/buildings/workshop_trigger_check_stats.xml

function spawn_trigger_check_stats( x, y )
	-- EntityLoad( "data/entities/buildings/workshop_trigger_check_stats.xml", x, y )
end

----------------------------------------
-- Function: spawn_trigger_check_stats_reference
-- Source: scripts\biomes\temple_altar_empty.lua
-- XML: data/entities/buildings/workshop_trigger_check_stats_reference.xml
-- Image: data/debug/empty.png

function spawn_trigger_check_stats_reference( x, y )
	-- EntityLoad( "data/entities/buildings/workshop_trigger_check_stats_reference.xml", x, y )
end

----------------------------------------
-- Function: spawn_turret
-- Source: scripts\biomes\vault_frozen.lua

function spawn_turret(x, y)
	if safe( x, y ) then
		spawn(g_turret,x,y,0,0)
	end
	-- spawn_hp_mult(g_turret,x,y,0,0,4,"vault")
end

----------------------------------------
-- Function: spawn_unique_enemy
-- Source: scripts\biomes\wizardcave_entrance.lua

function spawn_unique_enemy( x, y ) end

----------------------------------------
-- Function: spawn_unique_enemy2
-- Source: scripts\biomes\wizardcave_entrance.lua

function spawn_unique_enemy2( x, y ) end

----------------------------------------
-- Function: spawn_unique_enemy3
-- Source: scripts\biomes\wizardcave_entrance.lua

function spawn_unique_enemy3( x, y ) end

----------------------------------------
-- Function: spawn_vasta_or_vihta
-- Source: scripts\biomes\snowcastle.lua
-- XML: data/entities/items/wand_vasta.xml
-- XML: data/entities/items/wand_vihta.xml

function spawn_vasta_or_vihta(x, y)
	if x > 190 then
		EntityLoad("data/entities/items/wand_vasta.xml", x, y)
	else
		EntityLoad("data/entities/items/wand_vihta.xml", x, y)
	end
end

----------------------------------------
-- Function: spawn_vines
-- Source: scripts\biomes\wizardcave.lua

function spawn_vines(x, y)
	spawn(g_vines,x+5,y+5)
end

----------------------------------------
-- Function: spawn_vines_b
-- Source: scripts\biomes\mountain\mountain_left_entrance.lua

function spawn_vines_b(x, y)
	spawn(g_vines,x,y)
end

----------------------------------------
-- Function: spawn_wand
-- Source: scripts\animals\book_physics.lua
-- XML: data/entities/animals/wand_ghost.xml

function spawn_wand()
	-- check that we only have less than N minions
	local existing_wand_count = 0
	local existing_wands = EntityGetWithTag( "wand_ghost" )
	if ( #existing_wands > 0 ) then
		existing_wand_count = #existing_wands
	end

	if existing_wand_count >= 4 then
		return
	end

	-- spawn
	local entity_id = GetUpdatedEntityID()
	local x, y = EntityGetTransform( entity_id )
	x = x + 50
	
	SetRandomSeed( GameGetFrameNum(), x + y + GetUpdatedEntityID() )
	
	local slime = EntityLoad( "data/entities/animals/wand_ghost.xml", x, y )
	edit_component( slime, "VelocityComponent", function(comp,vars)
		local vel_x = Random(-90,90)
		local vel_y = Random(-150,25)
		ComponentSetValueVector2( comp, "mVelocity", vel_x, vel_y )
	end)
end

----------------------------------------
-- Function: spawn_wand_trap
-- Source: scripts\biome_scripts.lua
-- XML: data/entities/buildings/wand_trap_circle_acid.xml
-- XML: data/entities/props/physics_trap_circle_acid.xml
-- Image: data/props_gfx/trap_acid.png

function spawn_wand_trap( x, y )
	-- print(x)
	-- EntityLoad( "data/entities/buildings/wand_trap_circle_acid.xml", x, y )
	EntityLoad( "data/entities/props/physics_trap_circle_acid.xml", x, y )
end

----------------------------------------
-- Function: spawn_wand_trap_electricity
-- Source: scripts\biome_scripts.lua
-- XML: data/entities/props/physics_trap_electricity.xml
-- Image: data/props_gfx/trap_electricity.png

function spawn_wand_trap_electricity( x, y )
	-- print(x)
	EntityLoad( "data/entities/props/physics_trap_electricity.xml", x, y )
end

----------------------------------------
-- Function: spawn_wand_trap_electricity_source
-- Source: scripts\biome_scripts.lua
-- XML: data/entities/buildings/wand_trap_electricity.xml

function spawn_wand_trap_electricity_source( x, y )
	-- print(x)
	EntityLoad( "data/entities/buildings/wand_trap_electricity.xml", x, y )
end

----------------------------------------
-- Function: spawn_wand_trap_ignite
-- Source: scripts\biome_scripts.lua
-- XML: data/entities/buildings/wand_trap_ignite.xml
-- XML: data/entities/props/physics_trap_ignite.xml
-- Image: data/props_gfx/trap_ignite_a.png

function spawn_wand_trap_ignite( x, y )
	-- EntityLoad( "data/entities/buildings/wand_trap_ignite.xml", x, y )
	EntityLoad( "data/entities/props/physics_trap_ignite.xml", x, y )
end

----------------------------------------
-- Function: spawn_wands
-- Source: scripts\biome_scripts.lua

function spawn_wands(x, y)
	spawn(g_items,x-5,y,0,0)
end

----------------------------------------
-- Function: spawn_wasd
-- Source: scripts\biomes\mountain\mountain_left_entrance.lua
-- XML: data/entities/particles/image_emitters/controls_stick.xml
-- XML: data/entities/particles/image_emitters/controls_wasd.xml
-- Image: data/particles/image_emitters/controls_stick.png
-- Image: data/particles/image_emitters/controls_wasd.png

function spawn_wasd( x, y )
	if (GameGetIsGamepadConnected() == false) then
		EntityLoad( "data/entities/particles/image_emitters/controls_wasd.xml", x, y )
	else
		EntityLoad( "data/entities/particles/image_emitters/controls_stick.xml", x-1, y-1 )
	end
	
	spawn(g_surprise,x,y,0,0)
end

----------------------------------------
-- Function: spawn_wasd_trigger
-- Source: scripts\biomes\mountain\mountain_left_entrance.lua
-- XML: data/entities/buildings/controls_wasd_trigger.xml

function spawn_wasd_trigger( x, y )
	if ( GameIsIntroPlaying() == false ) then 
		EntityLoad( "data/entities/buildings/controls_wasd_trigger.xml", x, y )
	end
end

----------------------------------------
-- Function: spawn_waterspout
-- Source: scripts\biomes\mountain\trailer\mountain_hall.lua
-- XML: data/entities/props/dripping_water_heavy.xml

function spawn_waterspout(x, y)
	EntityLoad("data/entities/props/dripping_water_heavy.xml", x, y)
end

----------------------------------------
-- Function: spawn_wheel
-- Source: scripts\biomes\excavationsite.lua
-- XML: data/entities/props/physics_wheel.xml
-- Image: data/props_gfx/wheel.png

function spawn_wheel(x, y)
	EntityLoad( "data/entities/props/physics_wheel.xml", x, y )
end

----------------------------------------
-- Function: spawn_wheel_small
-- Source: scripts\biomes\excavationsite.lua
-- XML: data/entities/props/physics_wheel_small.xml
-- Image: data/props_gfx/wheel_small.png

function spawn_wheel_small(x, y)
	EntityLoad( "data/entities/props/physics_wheel_small.xml", x, y )
end

----------------------------------------
-- Function: spawn_wheel_tiny
-- Source: scripts\biomes\excavationsite.lua
-- XML: data/entities/props/physics_wheel_tiny.xml
-- Image: data/props_gfx/wheel_tiny.png

function spawn_wheel_tiny(x, y)
	EntityLoad( "data/entities/props/physics_wheel_tiny.xml", x, y )
end

----------------------------------------
-- Function: spawn_with_limited_random
-- Source: scripts\director_helpers.lua

function spawn_with_limited_random(what, x, y, rand_x, rand_y, entities_to_randomize)
	local x_offset,y_offset = 5,5
	
	local v = random_from_table( what, x, y )
	
	if ( v ~= nil ) then
		local entity_files = {}
		local do_randomization = false
		
		if ( entities_to_randomize ~= nil ) then
			if ( v.entity ~= nil ) then
				table.insert( entity_files, v.entity )
			elseif ( v.entities ~= nil ) then
				for i,entity_data in ipairs(v.entities) do
					if ( tostring( type( entity_data ) ) == "table" ) then
						if ( entity_data.entity ~= nil ) then
							table.insert( entity_files, entity_data.entity )
						end
					elseif ( tostring( type( entity_data ) ) == "string" ) then
						table.insert( entity_files, entity_data )
					end
				end
			end
			
			for i,entity_file in ipairs(entity_files) do
				if ( string.len( entity_file ) > 0 ) then
					local entity_name = ""
					
					for j=1,string.len(entity_file) do
						local letter = string.sub( entity_file, string.len( entity_file ) - ( j - 1 ), string.len( entity_file ) - ( j - 1 ) )
						
						if ( letter ~= "/" ) then
							entity_name = letter .. entity_name
						else
							break
						end
					end
					
					entity_name = string.sub( entity_name, 1, string.len( entity_name ) - 4 )
					
					for j,r_entity in ipairs( entities_to_randomize ) do
						if ( r_entity == entity_name ) then
							do_randomization = true
							break
						end
					end
				end
			end
		end
		
		local random_x = rand_x or 0
		local random_y = rand_y or 0
		
		if do_randomization then
			random_x = random_x + 4
		end
		
		entity_load_camera_bound( v, x + x_offset, y + y_offset, random_x, random_y )
	end
end

----------------------------------------
-- Function: spawn_workshop
-- Source: scripts\biomes\temple_altar_secret.lua
-- XML: data/entities/buildings/workshop.xml

function spawn_workshop( x, y )
	EntityLoad( "data/entities/buildings/workshop.xml", x, y )
end

----------------------------------------
-- Function: spawn_workshop_extra
-- Source: scripts\biomes\temple_altar_secret.lua
-- XML: data/entities/buildings/workshop_allow_mods.xml

function spawn_workshop_extra( x, y )
	EntityLoad( "data/entities/buildings/workshop_allow_mods.xml", x, y )
end

----------------------------------------
-- Function: spawn_worm
-- Source: scripts\buildings\worm_cocoon.lua
-- XML: data/entities/animals/worm.xml

function spawn_worm( entity_id, pos_x, pos_y )
	-- Do some kind of an effect? throw some particles into the air?
	EntityLoad( "data/entities/animals/worm.xml", pos_x, pos_y )
	EntityKill( entity_id )
end

----------------------------------------
-- Function: spawn_worm_deflector
-- Source: scripts\biomes\temple_altar_empty.lua
-- XML: data/entities/buildings/physics_worm_deflector.xml
-- XML: data/entities/buildings/physics_worm_deflector_base.xml
-- XML: data/entities/buildings/physics_worm_deflector_crystal.xml
-- Image: data/props_gfx/worm_deflector.png
-- Image: data/props_gfx/worm_deflector_base.png
-- Image: data/props_gfx/worm_deflector_crystal.png

function spawn_worm_deflector( x, y )
	-- EntityLoad( "data/entities/buildings/physics_worm_deflector.xml", x, y )
	EntityLoad( "data/entities/buildings/physics_worm_deflector_crystal.xml", x, y + 5 )
	EntityLoad( "data/entities/buildings/physics_worm_deflector_base.xml", x, y + 5 )
end

/// @description Insert description here
// You can write your code in this editor

if(killed_by_mole){
	instance_create_depth(x, y, 0, obj_spare_parts)
}

if(room == rm_level_4 or room == rm_test_enemies){
	obj_spawn_gen.num_active_enemies -= 1
	obj_spawn_gen.gate_chance += 1
}
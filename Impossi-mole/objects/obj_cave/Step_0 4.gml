/// @description Insert description here
// You can write your code in this editor

if (room == rm_level_4){
	//if (x < obj_spawn_gen.x - obj_spawn_gen.range_outer_x or x > obj_spawn_gen.x + obj_spawn_gen.range_outer_x
	//	or y < obj_spawn_gen.y - obj_spawn_gen.range_outer_y or y > obj_spawn_gen.y + obj_spawn_gen.range_outer_y){
	//	instance_destroy(self)
	//}
	if(obj_spawn_gen.gate_count > 2){
		if(point_distance(x,y,obj_mole.x,obj_mole.y) > 512){
			obj_spawn_gen.gate_count -= 1
			instance_destroy(self)
		}
	}
}
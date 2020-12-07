/// @description Insert description here
// You can write your code in this editor


if (room == rm_level_4 or room == rm_test_enemies){
	if (x < obj_spawn_gen.x - obj_spawn_gen.range_outer_x or x > obj_spawn_gen.x + obj_spawn_gen.range_outer_x
		or y < obj_spawn_gen.y - obj_spawn_gen.range_outer_y or y > obj_spawn_gen.y + obj_spawn_gen.range_outer_y){
		hp = 0
	}
}

//hit by bullet
hit_bullet = instance_place(x,y,obj_bullet)
if (instance_exists(hit_bullet)){
	instance_destroy(hit_bullet)
}

if hp <= 0{
	instance_destroy()
}
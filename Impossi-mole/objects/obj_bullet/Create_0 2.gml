/// @description Insert description here
// You can write your code in this editor

spd = 10
angle = 0
x_offset = 64
y_offset = 64
dmg = obj_mole.claw_str

function killOnBounds(){
	if (x < obj_spawn_gen.x - obj_spawn_gen.range_outer_x or x > obj_spawn_gen.x + obj_spawn_gen.range_outer_x
		or y < obj_spawn_gen.y - obj_spawn_gen.range_outer_y or y > obj_spawn_gen.y + obj_spawn_gen.range_outer_y){
		instance_destroy()
	}
}

killOnBounds()
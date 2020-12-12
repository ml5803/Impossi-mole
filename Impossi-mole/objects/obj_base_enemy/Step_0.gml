/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(just_damaged){
	damage_frame += 1
	if(damage_frame == damage_delay){
		damage_frame = 0
		just_damaged = false
	}
}

if(instance_exists(instance_place(x, y, obj_mole)) and !just_damaged){
		obj_mole.life -= damage
		just_damaged = true
}

if((x < 0 or x > room_width) and (y < 0 or y > room_height)){
	if(room = rm_test_enemies or room = rm_level_4){
		if (point_distance(x,y,obj_mole.x, obj_mole.y) > 640){
			instance_destroy(self)
		}
	}
	else{
		instance_destroy(self)
	}
}

//killed by bullet
hit_bullet = instance_place(x,y,obj_bullet)
if (instance_exists(hit_bullet)){
	life -= hit_bullet.dmg
	instance_destroy(hit_bullet)
	if (life <= 0){
		killed_by_mole = true
	}
}

if (life <= 0){
	if(room == rm_level_4 or room == rm_test_enemies){
		obj_spawn_gen.gate_chance += 1
	}
	instance_destroy(self)
}


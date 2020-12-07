/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(just_damaged){
	frame += 1
	if(frame == damage_delay){
		frame = 0
		just_damaged = false
	}
}

if(instance_exists(instance_place(x, y, obj_mole)) and !just_damaged){
		obj_mole.life -= damage
		just_damaged = true
}

if((x < 0 or x > room_width) and (y < 0 or y > room_height)){
	instance_destroy(self)
}

if (life <= 0){
	instance_destroy(self)
}
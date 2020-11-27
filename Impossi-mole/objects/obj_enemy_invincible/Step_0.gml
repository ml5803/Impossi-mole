/// @description Insert description here
// You can write your code in this editor

if(frame == switch_direction_time){
	go_to = irandom_range(0, 3)
	frame = 0
}

if(go_to == 0){
	move_left = true
}
else if(go_to == 1){
	move_right = true
}
else if(go_to == 2 and y > surface_y + sprite_height){
	move_up = true
}
else if(go_to == 3){
	move_down = true
}

// Inherit the parent event
event_inherited();

frame += 1
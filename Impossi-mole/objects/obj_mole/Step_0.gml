/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(vk_left)){
	move_left = true
}
else if(keyboard_check(vk_right)){
	move_right = true
}
else if(keyboard_check(vk_up)){
	move_up = true
}
else if(keyboard_check(vk_down)){
	move_down = true
}

if keyboard_check(ord("A")){
	
	if not (move_left or move_right or move_up or move_down){
		return 0
	}
	
	x_offset = 0
	y_offset = 0
	if move_left {
		x_offset = -sprite_width
	} else if move_right {
		x_offset = sprite_width
	} else if move_down {
		y_offset = sprite_height
	} else if move_up {
		y_offset = -sprite_height
	}
	
	drop_tile(x+x_offset, y+y_offset, obj_cement)
}

if(keyboard_check(vk_space) and jump_held < jump_held_max){
	jump = true
	move_up = true
	jump_held += 1
}
else if(keyboard_check_released(vk_space) and !jump_released){
	jump_released = true
}
else if (grounded){
	jump = false
	jump_held = 0
	jump_released = false
}

if(jump_released){
	jump = false
}

// Inherit the parent event
event_inherited();


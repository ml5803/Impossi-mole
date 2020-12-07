/// @description Insert description here
// You can write your code in this editor

<<<<<<< HEAD
//life_x = x + 32
//life_y = y + 32

//life_x = x
//life_y = y
=======
shot_dir = directions.center
>>>>>>> 154eaca4ec0df00002a4edf73ebc1c81957f90d5

if(keyboard_check(vk_left)){
	move_left = true
	shot_dir = directions.left
}
else if(keyboard_check(vk_right)){
	move_right = true
	shot_dir = directions.right
}
else if(keyboard_check(vk_up)){
	move_up = true
	shot_dir = directions.top
}
else if(keyboard_check(vk_down)){
	move_down = true
	shot_dir = directions.bottom
}

if(keyboard_check(vk_space) and jump_held < jump_held_max and can_jump){
	jump = true
	move_up = true
	jump_held += 1
}
else{
	jump_released = true
	can_jump = false
}
//else if(keyboard_check_released(vk_space) and !jump_released){
//	jump_released = true
	
//}
if (grounded){
	jump = false
	jump_held = 0
	jump_released = false
	can_jump = true
}

if(jump_released){
	jump = false
	float_time_curr += 1
	if(float_time_curr == float_time_max){
		float_time_curr = 0
		jump_released = false
		can_jump = false
	}
}

hit_cave = instance_place(x,y, obj_cave)
if instance_exists(hit_cave){
	room_goto(rm_upgrade)
}

hit_spare_parts = instance_place(x,y, obj_spare_parts)
if instance_exists(hit_spare_parts){
	obj_game_manager.spare_parts += 1
	instance_destroy(hit_spare_parts)
}

//dig
if keyboard_check(ord("A")){
	should_dig = true
}else{
	should_dig = false
}

//placing tile
if keyboard_check_pressed(ord("S")){
	
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

//shoot
last_shot += 1
if keyboard_check(ord("D")){
	
	createShot(shot_dir)
}

// Inherit the parent event
event_inherited();


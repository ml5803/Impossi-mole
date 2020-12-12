/// @description Insert description here
// You can write your code in this editor

shot_dir = directions.center
should_anim = false

if(keyboard_check(vk_left)){
	move_left = true
	anim_move_left = true
	shot_dir = directions.left
	should_anim = true
}
else if(keyboard_check(vk_right)){
	move_right = true
	anim_move_right = true
	shot_dir = directions.right
	should_anim = true
}
else if(keyboard_check(vk_up)){
	move_up = true
	anim_move_up = true
	shot_dir = directions.top
	should_anim = true
}
else if(keyboard_check(vk_down)){
	move_down = true
	anim_move_down = true
	shot_dir = directions.bottom
	should_anim = true
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
	
	if not ((move_left or move_right or move_up or move_down)) or storage_limit <= 0{
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
	storage_limit -= 1
}

//shoot
last_shot += 1
if keyboard_check(ord("D")){
	
	createShot(shot_dir)
}


//animations
if last_anim <= 0{
	if anim > 0 and should_anim{
		anim -= 1
	}else{
		anim = 4
	}
	last_anim = frames
}else{
	last_anim -= 1
}

if (life <= 0 and obj_game_manager.curr_lvl != -1){
	obj_game_manager.spare_parts = spare_parts_at_level_start
	room_goto(obj_game_manager.level_lst[obj_game_manager.curr_lvl])
}
	

// Inherit the parent event
event_inherited();


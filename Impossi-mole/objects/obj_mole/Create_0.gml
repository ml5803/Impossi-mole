/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//get upgraded stats
storage_limit = obj_game_manager.storage_inc * obj_game_manager.storage_up + obj_game_manager.storage_cap
mspd = obj_game_manager.move_spd_inc * obj_game_manager.move_spd_up + obj_game_manager.move_spd
claw_str = obj_game_manager.claw_power_inc * obj_game_manager.claw_power_up + obj_game_manager.claw_power
life = obj_game_manager.hp_inc * obj_game_manager.hp_up + obj_game_manager.hp

affected_by_grav = true
dig_str = 10
jump_str = 1.5

grav = .5

jump_held = 0
jump_held_max = 1 * room_speed
jump_released = false

float_time_max = .5 * room_speed
float_time_curr = 0
can_jump = true

shot_xoffset = sprite_width
shot_yoffset = sprite_height
shot_cd = 10
last_shot = 10

function createShot(shot_dir){
	if last_shot < shot_cd {
		return 1
	}
		
	switch (shot_dir){
		case directions.center:
		break
		case directions.top:
		bullet = instance_create_depth(x,y-shot_yoffset,0,obj_bullet)
		bullet.image_angle = 90
		bullet.angle = 90
		last_shot = 0
		break
		case directions.bottom:
		bullet = instance_create_depth(x,y+shot_yoffset,0,obj_bullet)
		bullet.image_angle = 270
		bullet.angle = 270
		last_shot = 0
		break
		case directions.right:
		bullet = instance_create_depth(x+shot_xoffset,y,0,obj_bullet)
		bullet.image_angle = 0
		bullet.angle = 0
		last_shot = 0
		break
		case directions.left:
		bullet = instance_create_depth(x-shot_xoffset,y,0,obj_bullet)
		bullet.image_angle = 180
		bullet.angle = 180
		last_shot = 0
		break
	}
}
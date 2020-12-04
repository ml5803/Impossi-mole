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
jump_str = .5

jump_held = 0
jump_held_max = 1 * room_speed
jump_released = false
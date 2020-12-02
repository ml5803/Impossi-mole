/// @description Insert description here
// You can write your code in this editor

event_inherited();

function doAction(){
	if (obj_game_manager.spare_parts - obj_game_manager.move_spd_up >= 0 and 
		obj_game_manager.move_spd_up < obj_game_manager.move_spd_cap){
		obj_game_manager.spare_parts = obj_game_manager.spare_parts - obj_game_manager.move_spd_up 
		obj_game_manager.move_spd_up += 1
	}
}
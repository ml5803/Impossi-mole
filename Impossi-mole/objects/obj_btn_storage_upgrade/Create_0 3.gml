/// @description Insert description here
// You can write your code in this editor

event_inherited();

function doAction(){
	if (obj_game_manager.spare_parts - obj_game_manager.storage_up >= 0 and 
		obj_game_manager.storage_up < obj_game_manager.storage_cap){
		obj_game_manager.spare_parts = obj_game_manager.spare_parts - obj_game_manager.storage_up 
		obj_game_manager.storage_up += 1
	}
}
/// @description Insert description here
// You can write your code in this editor

event_inherited();

function doAction(){
	obj_game_manager.curr_lvl += 1
	room_goto(obj_game_manager.level_lst[obj_game_manager.curr_lvl])
}
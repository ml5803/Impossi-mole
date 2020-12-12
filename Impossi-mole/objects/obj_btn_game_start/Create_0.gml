/// @description Insert description here
// You can write your code in this editor

event_inherited();

sprite_hover = spr_btn_start_hover
sprite_off = spr_btn_start_off

function doAction(){
	room_goto(story_room)
	if (obj_game_manager.curr_lvl == 0){
		obj_type_writer.start_typing("To beat the robots...I must become one of them")
	}
	//room_goto(rm_level_1)
}
/// @description Insert description here
// You can write your code in this editor

event_inherited();

function doAction(){
	obj_game_manager.curr_lvl += 1
	room_goto(story_room)
	if (obj_game_manager.curr_lvl == 0){
		obj_type_writer.start_typing("To beat the robots...I must become one of them")
	}
	if (obj_game_manager.curr_lvl == 1){
		obj_type_writer.start_typing("I hear mining, I must be getting closer to their master")
	}
	if (obj_game_manager.curr_lvl == 2){
		obj_type_writer.start_typing("How much of a mole am I anymore...")
	}
	if (obj_game_manager.curr_lvl == 3){
		obj_type_writer.start_typing("Such a vast cavern, here I can prepare to face their master")
	}
	if (obj_game_manager.curr_lvl == 4){
		obj_type_writer.start_typing("You destroyed my home, YOU WILL BE EXTERMINATED!")
	}
}
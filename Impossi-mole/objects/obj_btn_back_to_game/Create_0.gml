/// @description Insert description here
// You can write your code in this editor

event_inherited();

sprite_hover = spr_button_next_hover
sprite_off = spr_button_next_off

function doAction(){
	obj_game_manager.curr_lvl += 1
	room_goto(story_room)
	if (obj_game_manager.curr_lvl == 1){
		obj_type_writer.start_typing("What's that sound?\nMining? \n... \nLet's keep moving...")
	}
	if (obj_game_manager.curr_lvl == 2){
		obj_type_writer.start_typing("Am I...\nStill a mole?...\n...")
	}
	if (obj_game_manager.curr_lvl == 3){
		obj_type_writer.set_type_location(450,300)
		obj_type_writer.start_typing("Such a vast cavern...\nWhat treasures will I find?")
	}
	if (obj_game_manager.curr_lvl == 4){
		obj_type_writer.set_type_location(450,300)
		obj_type_writer.start_typing("I hear it.\nThe sound of heavy machinery...\nI must EXTERMINATE it!")
		obj_audio_manager.stopBGM(obj_audio_manager.curr_bgm)
		obj_audio_manager.playBGM(bgm_boss)
	}
}
/// @description Insert description here
// You can write your code in this editor

event_inherited();

sprite_hover = spr_button_next_hover
sprite_off = spr_button_next_off

function doAction(){
	obj_game_manager.curr_lvl += 1
	room_goto(story_room)
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
		obj_audio_manager.stopBGM(obj_audio_manager.curr_bgm)
		obj_audio_manager.playBGM(bgm_boss)
	}
}
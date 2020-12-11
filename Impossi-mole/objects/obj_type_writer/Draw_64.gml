/// @description Insert description here
// You can write your code in this editor

if(!current_room_text_done){
	if (!finished_typing){
		if (frame == char_time_delay){
			frame = 0
			char_index += 1
			// add typing sound effect here
		}
		temp_str = ""
		for(var i = 1; i <= char_index; i++){
			temp_str += string_char_at(currently_typing, i)
		}
		if(temp_str == currently_typing){
			finished_typing = true
		}
		draw_text(300, 384, temp_str)
	}
	else{
		if (frame == typed_stay_dur and obj_game_manager.curr_lvl != -1){
			frame = 0
			current_room_text_done = true
			room_goto(obj_game_manager.level_lst[obj_game_manager.curr_lvl])
		}
		draw_text(300, 384, temp_str)
	}
}
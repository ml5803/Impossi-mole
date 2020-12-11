/// @description Insert description here
// You can write your code in this editor

temp_str = ""

frame = 0

char_time_delay = .1 * room_speed

typed_stay_dur = 1 * room_speed

currently_typing = "hello world"

char_index = 0

finished_typing = false

current_room_text_done = false

function start_typing(typing){
	currently_typing = typing
	current_room_text_done = false
	finished_typing = false
	char_index = 0
	frame = 0
	temp_str = ""
}
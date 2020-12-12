/// @description Insert description here
// You can write your code in this editor

temp_str = ""

frame = 0

char_time_delay = .2 * room_speed

typed_stay_dur = 1 * room_speed

currently_typing = ""

char_index = 0

finished_typing = false

current_room_text_done = false

type_x = 300
type_y = 364

function start_typing(typing){
	currently_typing = typing
	current_room_text_done = false
	finished_typing = false
	char_index = 0
	frame = 0
	temp_str = ""
}

function set_type_location(_x,_y){
	type_x = _x
	type_y = _y
}
/// @description Insert description here
// You can write your code in this editor

//if mouse hover above button, change color
if (mouse_x < x + x_offset and mouse_x > x - x_offset
and mouse_y > y - y_offset and mouse_y < y + y_offset){
	sprite_index = sprite_hover
	if mouse_check_button_released(mb_left){
		doAction()
	}
}else{
	sprite_index = sprite_off
}


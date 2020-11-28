/// @description Insert description here
// You can write your code in this editor

var width = display_get_gui_width()

//draw spare parts icon 
draw_sprite(spr_spare_parts, 0, width - 200,  45)
draw_set_font(ft_game)

draw_set_halign(fa_right)
draw_text(width - 100, 30, spare_parts)
draw_set_halign(fa_left)
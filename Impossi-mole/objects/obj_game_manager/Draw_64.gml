/// @description Insert description here
// You can write your code in this editor

var width = display_get_gui_width()

var start = 20

//draw spare parts icon 
draw_sprite(spr_spare_parts, 0, width - 200,  45)
draw_set_font(ft_game)
if(instance_exists(obj_mole)){
	for (var i = 0; i < obj_mole.life; i++){
		if (i == 0){
			var heart = spr_heart
		}
		else{
			var heart = spr_robo_heart
		}
		draw_sprite(heart, 0, start, 45)
		start += 96
	}
}

draw_set_halign(fa_right)
draw_text(width - 100, 30, spare_parts)
draw_set_halign(fa_left)
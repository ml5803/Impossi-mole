/// @description Insert description here
// You can write your code in this editor
upgrade_correlations = [obj_game_manager.storage_up, obj_game_manager.move_spd_up, 
	obj_game_manager.claw_power_up, obj_game_manager.hp_up]
	
var width = display_get_gui_width()

//upgrade screen
draw_text(15, 25, "AUGMENT SHOP")

//draw upgraded bars
var i
var j
var h_dist = 200
var v_dist = 50

draw_set_halign(fa_center)

for (i = 0; i < array_length_1d(possible_upgrades); i += 1){
	draw_text(100+i*h_dist,600,possible_upgrades[i])
	draw_text(100+i*h_dist,700,upgrade_correlations[i])
	for (j = 0; j <= upgrade_correlations[i];j+=1){
		draw_sprite(spr_particle, 0, 100+i*h_dist,550 - j*v_dist)
	}
}



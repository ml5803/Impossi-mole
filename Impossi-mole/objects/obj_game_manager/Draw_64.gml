/// @description Insert description here
// You can write your code in this editor
draw_set_font(ft_game_smaller)
if(room != rm_start){

	var width = display_get_gui_width()

	var start = 20

	//draw spare parts icon 
	draw_sprite(spr_spare_parts, 0, width - 200,  45)
	draw_sprite(spr_cement, 0, width - 200,  160)
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
		draw_text(width - 130, 145, obj_mole.storage_limit)
	}

	draw_set_halign(fa_right)
	draw_text(width - 100, 30, spare_parts)
	draw_set_halign(fa_left)
}
if(room == rm_end){
	draw_text(300, 384, "Press r to restart game")
	if(keyboard_check_pressed(ord("R"))){
		//base stats
		storage = 1
		move_spd = 2
		claw_power = 20
		hp = 1

		//upgrade increments
		storage_inc = 1
		move_spd_inc = 0.5
		claw_power_inc = 20
		hp_inc = 1

		//current upgrades
		storage_up = 1
		move_spd_up = 1
		claw_power_up = 1
		hp_up = 1

		//limits
		storage_cap = 5
		move_spd_cap = 5
		claw_power_cap = 5
		hp_cap = 5

		//avaiable_sprites
		poss_body = [spr_mole, spr_mole_up1,spr_mole_up2, spr_mole_up3, spr_mole_up4]
		poss_claws = [spr_mole_claws, spr_mole_claws_up1, spr_mole_claws_up2, spr_mole_claws_up3, spr_mole_claws_up4]

		//sprites
		body_sprite = 0
		claws_sprite = 0

		//spare parts
		spare_parts = 0

		level_lst = [rm_level_1, rm_level_2, rm_level_3, rm_level_4, rm_level_5_final]
		curr_lvl = 0
		
		obj_audio_manager.stopBGM(obj_audio_manager.curr_bgm)
		obj_audio_manager.playBGM(bgm)
		
		room_goto(rm_start)
	}
}

if (room == rm_start){
	draw_text(300, 400, "Arrows to move")
	draw_text(300, 420, "Space to jump")
	draw_text(300, 440, "Hold a while moving to mine in that direction")
	draw_text(300, 460, "press s while moving to place a block in that direction")
	draw_text(300, 480, "press d while moving to shoot in that direction")
}
/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

frame += 1

if (life <= 3000){
	boss_phase = 1
}

if (life <= 2000){
	boss_phase = 2
}

if (life <= 1000){
	boss_phase = 3
}

if (life <= 500){
	boss_phase = 4
}

if (frame == start_recharge and !recharge_mode){
	recharge_mode = true
	frame = 0
}

if (frame == recharge_duration and recharge_mode){
	recharge_mode = false
	frame = 0
}

if (recharge_mode){
	
}
else{
	if (boss_phase = 1){
		phase_1_frame += 1
		if(phase_1_frame == switch_direction_time){
			go_to = irandom_range(0, 3)
			phase_1_frame = 0
		}
		if(go_to == 0){
		move_left = true
		}
		else if(go_to == 1){
			move_right = true
		}
		else if(go_to == 2 and y > surface_y + sprite_height){
			move_up = true
		}
		else if(go_to == 3){
			move_down = true
		}
		else{
			go_to = irandom_range(0, 3)
		}
	}
	else if (boss_phase = 2){
		phase_2_frame += 1
		if(phase_2_frame == spawn_delay_time){
			instance_create_layer(x,y, "Instances", obj_enemy_worm)
			life -= 50
			phase_2_frame = 0
		}
	}
	else if (boss_phase = 3){
		if(guard_1 == pointer_null and guard_2 == pointer_null){
			guard_1 = instance_create_layer(x,y, "Instances", obj_enemy_invincible)
			guard_2 = instance_create_layer(x,y, "Instances", obj_enemy_invincible)
			guard_1.mspd = 10
			guard_2.mspd = 10
		}
		phase_3_frame += 1
		if(phase_3_frame == teleport_delay_time){
			
			guard_1.x = x
			guard_1.y = y
			
			guard_2.x = x
			guard_2.y = y
			
			phase_3_frame = 0
		}
	}
	else if (boss_phase = 4){
		if (x < obj_mole.x){
			move_right = true
		}
		else if (x > obj_mole.x){
			move_left = true
		}
		if (y < obj_mole.y){
			move_down = true
		}
		else if (y > obj_mole.y){
			move_up = true
		}
	}
}
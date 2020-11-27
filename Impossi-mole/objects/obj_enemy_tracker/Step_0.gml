/// @description Insert description here
// You can write your code in this editor

if (frame == delay_factor){
	frame = 0
	if(obj_mole.x < x){
		move_left = true
	}
	else if(obj_mole.x > x){
		move_right = true
	}
	if(obj_mole.y < y){
		move_up = true
	}
	else if(obj_mole.y > y){
		move_down = true
	}
}
event_inherited()

frame += 1
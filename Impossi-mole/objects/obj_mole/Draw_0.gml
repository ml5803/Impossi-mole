/// @description Insert description here
// You can write your code in this editor

if (anim_move_right){
	rot = -90
} else if anim_move_left {
	rot = 90
} else if anim_move_up {
	rot = 0
} else if anim_move_down{
	rot = 180
}

draw_sprite_ext(body_sprite,anim,x,y,1,1,rot,c_white,1)
draw_sprite_ext(claws_sprite,anim,x,y,1,1,rot,c_white,1)

//reset for next draw
anim_move_right = false
anim_move_left = false
anim_move_up = false
anim_move_down = false
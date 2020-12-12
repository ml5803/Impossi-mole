/// @description Insert description here
// You can write your code in this editor


if(obj_screenshake.shake_on = false){
	x = lerp(x, target.x, lerp_spd)
	y = lerp(y, target.y, lerp_spd)

	if room == rm_level_1 or room == rm_level_2 or room == rm_level_3 or room == rm_level_5_final {
		cam_x = clamp(x, cam_width/2, room_width - (cam_width/2))
		cam_y = clamp(y, cam_height/2, room_height - (cam_height/2))
	}else {
		cam_x = x
		cam_y = y
	}

	camera_set_view_pos(cam, cam_x - cam_width/2, cam_y - cam_height/2)
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawn_particles(side, colr, _x,_y,_num){
	var i
	var x_offset = 0
	var y_offset = 0
	var particle
	
	switch(side){
		case directions.top:
			y_offset = sprite_get_height(spr_dirt)/2 * -1
		break
		case directions.left:
			x_offset = sprite_get_width(spr_dirt)/2 * -1
		break
		case directions.right:
			x_offset = sprite_get_width(spr_dirt)/2
		break
		case directions.bottom:
			y_offset = sprite_get_height(spr_dirt)/2
		break
		default:
		break
	}
	
	for (i = 0; i < _num; i++){
		particle = instance_create_depth(_x+x_offset, _y+y_offset, 0, obj_particle)
		with (particle){
			color = colr
		}
	}
}
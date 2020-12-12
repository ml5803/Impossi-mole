// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function snap_to_grid(_x, _y){
	temp_x = floor(_x /64) * 64
	temp_x += 32
	temp_y = floor(_y/64) * 64
	temp_y += 32
	
	return [temp_x, temp_y]
}
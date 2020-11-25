// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function drop_tile(_x,_y, tile_to_drop){
	instance_create_layer(_x,_y, 2, tile_to_drop)
}
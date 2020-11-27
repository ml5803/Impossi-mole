/// @description Insert description here
// You can write your code in this editor

for (var i = 0; i < instance_number(obj_base_tile); i++)
{
	var tile = instance_find(obj_base_tile,i);
	if(point_distance(x,y,tile.x, tile.y) < 128){
			tile.hp -= dig_str
	}
}

for (var i = 0; i < instance_number(obj_base_digger); i++)
{
	var digger = instance_find(obj_base_digger,i);
	if(point_distance(x,y,digger.x, digger.y) < 128){
			digger.life -= damage
	}
}
/// @description Insert description here
// You can write your code in this editor

rand_prob_tiles = [0.7,0.9,1]
possible_tiles = [obj_base_tile, obj_cement, obj_bedrock]

rand_prob_enemy = [0.4, 0.7, 0.85,1] 
possible_enemies = [obj_enemy_mine, obj_enemy_worm, 
	obj_enemy_tracker, obj_enemy_invincible]
	
range_inner_x = camera_get_view_width(view_camera[0]) * 0.5
range_inner_y = camera_get_view_height(view_camera[0]) * 0.5

range_outer_x = range_inner_x + sprite_get_width(spr_dirt)
range_outer_y = range_inner_y + sprite_get_width(spr_dirt)

range_inner_x = 300
range_inner_y = 200

range_outer_x = range_inner_x + sprite_get_width(spr_dirt)
range_outer_y = range_inner_y + sprite_get_width(spr_dirt)

x_offset = sprite_get_width(spr_dirt)
y_offset = sprite_get_height(spr_dirt)
	
function determineSpawn(){
	prob = random_range(0,1)
	
	if prob > 0.95 {
		return "tile"
	}else {
		return "enemy"
	}
}

function spawnTile(_x,_y){
	prob = random_range(0,1)
	var i
	for (i = 0; i < array_length_1d(rand_prob_tiles); i += 1){
		if rand_prob_tiles[i] > prob {
			instance_create_depth(_x,_y,2, possible_tiles[i])
			return 0
		}
	}
}

function spawnEnemy(_x,_y){
	prob = random_range(0,1)
	var i
	for (i = 0; i < array_length_1d(rand_prob_enemy); i += 1){
		if rand_prob_enemy[i] > prob {
			instance_create_depth(_x,_y,2, possible_enemies[i])
			return 0
		}
	}
}

function inReserveArea(_x,_y){
	lower_x = x - range_inner_x + x_offset
	upper_x = x + range_inner_x - x_offset
	lower_y = y - range_inner_y + y_offset
	upper_y = y + range_inner_y - y_offset
	
	if (_x > lower_x and _x < upper_x and _y > lower_y and _y < upper_y){
		return true
	} else{
		return false
	}
}

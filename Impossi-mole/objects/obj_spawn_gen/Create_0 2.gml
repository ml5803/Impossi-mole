/// @description Insert description here
// You can write your code in this editor

rand_prob_tiles = [0.7,0.9,1]
possible_tiles = [obj_base_tile, obj_cement, obj_bedrock]

rand_prob_enemy = [0.4, 0.7, 0.85,1] 
possible_enemies = [obj_enemy_mine, obj_enemy_worm, 
	obj_enemy_tracker, obj_enemy_invincible]
	
function determineSpawn(){
	prob = random_range(0,1)
	
	if prob > 0.95 {
		return "tile"
	}else {
		return "enemy"
	}
}

function spawnTile(_x,_y){
	prob = rand_range(0,1)
	var i
	for (i = 0; i < array_length_1d(rand_prob_tiles); i += 1){
		if rand_prob_tiles[i] > prob {
			instance_create_depth(_x,_y,2, possible_tiles[i])
			return 0
		}
	}
}

function spawnEnemy(_x,_y){
	prob = rand_range(0,1)
	var i
	for (i = 0; i < array_length_1d(rand_prob_enemy); i += 1){
		if rand_prob_enemy[i] > prob {
			instance_create_depth(_x,_y,2, possible_enemies[i])
			return 0
		}
	}
}

x = obj_mole.x
y = obj_mole.y

max_pt_x = x + range_inner_x
max_pt_y = y + range_inner_y

if room == rm_level_4 or room == rm_test_enemies{
	for (curr_pt_y = y - range_inner_y; curr_pt_y < max_pt_y; curr_pt_y += y_offset){
		for (curr_pt_x = x - range_inner_x; curr_pt_x < max_pt_x; curr_pt_x += x_offset){
			if not (place_meeting(curr_pt_x,curr_pt_y, all)) and not inReserveArea(curr_pt_x, curr_pt_y){
				spawn_type = determineSpawn()
				switch (spawn_type) {
					case "enemy":
						//spawnEnemy(curr_pt_x, curr_pt_y)
						break
					case "tile":
						spawnTile(curr_pt_x, curr_pt_y)
						break
				}
			}
		}
	}
}



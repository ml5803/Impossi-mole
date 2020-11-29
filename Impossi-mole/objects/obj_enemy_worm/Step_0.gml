/// @description Insert description here
// You can write your code in this editor

//if(keyboard_check(vk_left)){
//	move_left = true
//	if(!instance_exists(instance_place(x + sprite_width,y, obj_base_tile))){
//		drop_tile(x + sprite_width, y, obj_cement)
//	}
//}
//else if(keyboard_check(vk_right)){
//	move_right = true
//	if(!instance_exists(instance_place(x - sprite_width,y, obj_base_tile))){
//		drop_tile(x - sprite_width, y, obj_cement)
//	}
//}
//else if(keyboard_check(vk_up)){
//	move_up = true
//	if(!instance_exists(instance_place(x,y + sprite_height, obj_base_tile))){
//		drop_tile(x, y + sprite_height, obj_cement)
//	}
//}
//else if(keyboard_check(vk_down)){
//	move_down = true
//	if(!instance_exists(instance_place(x,y - sprite_height, obj_base_tile))){
//		drop_tile(x, y - sprite_height, obj_cement)
//	}
//}

if(go_to == 0){
	move_left = true
	if(!instance_exists(instance_place(x + sprite_width,y, obj_base_tile))){
		if(!instance_exists(instance_place(x + sprite_width,y, obj_base_digger))){
			if(!instance_exists(instance_place(x + sprite_width,y, obj_cave))){
				if(!instance_exists(instance_place(x + sprite_width,y, obj_spare_parts))){
					drop_tile(x + sprite_width, y, obj_cement)
				}
			}
		}
	}
}
else if(go_to == 1){
	move_right = true
	if(!instance_exists(instance_place(x - sprite_width,y, obj_base_tile))){
		if(!instance_exists(instance_place(x - sprite_width,y, obj_base_digger))){
			if(!instance_exists(instance_place(x - sprite_width,y, obj_cave))){
				if(!instance_exists(instance_place(x - sprite_width,y, obj_spare_parts))){
					drop_tile(x - sprite_width, y, obj_cement)
				}
			}
		}
	}
}
else if(go_to == 2 and y > surface_y + sprite_height){
	move_up = true
	if(!instance_exists(instance_place(x,y + sprite_height, obj_base_tile))){
		if(!instance_exists(instance_place(x,y + sprite_height, obj_base_digger))){
			if(!instance_exists(instance_place(x,y + sprite_height, obj_cave))){
				if(!instance_exists(instance_place(x,y + sprite_height, obj_spare_parts))){
					drop_tile(x, y + sprite_height, obj_cement)
				}
			}
		}
	}
}
else if(go_to == 3){
	move_down = true
	if(!instance_exists(instance_place(x,y - sprite_height, obj_base_tile))){
		if(!instance_exists(instance_place(x,y - sprite_height, obj_base_digger))){
			if(!instance_exists(instance_place(x,y - sprite_height, obj_cave))){
				if(!instance_exists(instance_place(x,y - sprite_height, obj_spare_parts))){
					drop_tile(x, y + sprite_height, obj_cement)
				}
			}
		}
	}
}
else{
	go_to = irandom_range(0, 3)
}

// Inherit the parent event
event_inherited();

if(instance_exists(hit_block)){
	if(hit_block.tag == "cement" or hit_block.tag == "bedrock"){
		go_to = irandom_range(0, 3)
	}
}
/// @description Insert description here
// You can write your code in this editor

hit_block = noone

if(affected_by_grav){
	var hit_block_bottom = instance_place(x,y + 1, obj_base_tile)
	var hit_block_top = instance_place(x,y - 1, obj_base_tile)
	if(instance_exists(hit_block_top)){
		vspd = 0
	}
	if(instance_exists(hit_block_bottom)){
		if (!grounded){
			y = hit_block_bottom.y - sprite_height
		}
		grounded = true
	}
	else{
		grounded = false
	}
	if(!grounded){
		vspd += grav
	}
	else{
		vspd = 0
	}
}

y += vspd

if (move_left){
	hit_block = instance_place(x - mspd,y, obj_base_tile)
	if(instance_exists(hit_block) and hit_block.x <= x and should_dig){
		dig_left = true
	}
	else if (!instance_exists(hit_block)){
		x -= mspd
	}
}
if(move_right){
	hit_block = instance_place(x + mspd,y, obj_base_tile)
	if(instance_exists(hit_block) and hit_block.x > x and should_dig){
		dig_right = true
	}
	else if (!instance_exists(hit_block)){
		x += mspd
	}
}
if(move_up){
	hit_block = instance_place(x,y - 1, obj_base_tile)
	if(instance_exists(hit_block) and hit_block.y <= y and should_dig){
		dig_up = true
	}
	else if (!instance_exists(hit_block)){
		y -= 1
	}
}
else if(move_down){
	hit_block = instance_place(x,y + 1, obj_base_tile)
	if(instance_exists(hit_block) and hit_block.y > y and should_dig){
		dig_down = true
	}
	else if (!instance_exists(hit_block)){
		y += 1
	}
}
if(jump and !instance_exists(instance_place(x, y - jump_str, obj_base_tile))){
	vspd = -jump_str
}

if (dig_left and instance_exists(hit_block)){
	dig(directions.right, dig_str, hit_block)
}
else if(dig_right and instance_exists(hit_block)){
	dig(directions.left, dig_str, hit_block)
}
else if(dig_up and instance_exists(hit_block)){
	dig(directions.bottom, dig_str, hit_block)
}
else if(dig_down and instance_exists(hit_block)){
	dig(directions.top, dig_str, hit_block)
}

move_left = false
move_right = false
move_up = false
move_down = false

dig_left = false
dig_right = false
dig_up = false
dig_down = false

jump = false
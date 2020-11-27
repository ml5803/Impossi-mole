/// @description Insert description here
// You can write your code in this editor

if(!active){
	if(point_distance(x,y,obj_mole.x, obj_mole.y) < 128){
		active = true
	}
}

if(active){
	life -= 1
}

// Inherit the parent event
event_inherited();


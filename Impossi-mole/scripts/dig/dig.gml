// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function dig(side,damage, earth_tile){
	earth_tile.hp -= damage
	spawn_particles(side, c_white,earth_tile.x, earth_tile.y,5)
}
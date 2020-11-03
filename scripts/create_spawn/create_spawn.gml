// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_spawn(){
	// TODO: used passed in values instead
	instance_create_depth(1320, 136, -1, oSpawnTest);
	instance_destroy(oButton);
}
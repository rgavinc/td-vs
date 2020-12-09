// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_random_build_zone(){
	var i;
	var _build_zones = [];
	for (i = 0; i < instance_number(oBuildZone); i += 1) {
		_build_zones[i] = instance_find(oBuildZone,i);
	}
	return instance_find(oBuildZone,0) || -1;
}
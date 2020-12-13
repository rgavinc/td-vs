// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_random_build_zone() {
	var _build_zone_count = instance_number(oBuildZone);
	return _build_zone_count > 0 ? instance_find(oBuildZone,random_range(0, _build_zone_count -1)) : -1;
}
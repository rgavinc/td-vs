// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_tower(_build_zone, _player_data ) {
	var _cost = 20;
	var _build_zone_x;
	var _build_zone_y;
	with (_build_zone) {
		_build_zone_x = x + 24;
		_build_zone_y = y + 36;
		instance_create_depth(_build_zone_x, _build_zone_y, -8, oBasicTower);
		var _gold_available = _player_data[? "gold"];
		ds_map_replace(_player_data, "gold", _gold_available - _cost);
	}
	with (_build_zone) instance_destroy();
}     
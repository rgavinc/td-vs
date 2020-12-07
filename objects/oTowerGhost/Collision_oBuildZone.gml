/// @description Insert description here
// You can write your code in this editor
var _build_zone_x;
var _build_zone_y;
with (other) {
	_build_zone_x = x + 24;
	_build_zone_y = y + 36;
}
x = _build_zone_x;
y = _build_zone_y;
if (can_build) {
	can_build = false;
	if (keyShift == 0) {
		instance_destroy();
		global.dragTower = false;
	}
	instance_create_depth(x, y, -8, oBasicTower);
	ds_map_replace(global.player_data_self, "gold",gold_available - cost);
	with (other) instance_destroy();
}
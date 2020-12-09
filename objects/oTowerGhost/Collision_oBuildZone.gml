/// @description Insert description here
// You can write your code in this editor
if (can_build) {
	can_build = false;
	if (keyShift == 0) {
		instance_destroy();
		global.dragTower = false;
	}
	create_tower(other, global.player_data_self);
}
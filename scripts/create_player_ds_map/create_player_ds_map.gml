// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_player_ds_map(){
	var _player_data = ds_map_create();
	ds_map_add(_player_data, "health", 100);
	ds_map_add(_player_data, "gold", 100);
	return _player_data; 
}
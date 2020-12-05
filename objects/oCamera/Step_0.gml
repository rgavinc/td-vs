
if (global.currentGameState == gameState.play) {
	#macro view view_camera[0]
	camera_set_view_size(view,view_width,view_height);
	var _move_speed = 5;
	var _move_zone_width = 100

	if (mouse_wheel_down()) {
		view_width*=1.05;
		view_height*=1.05;
	}
	if (mouse_wheel_up()){
		view_width/=1.05;
		view_height/=1.05;
	}
	if (keyboard_check(vk_left) || keyboard_check(ord("A"))) x = clamp(x - _move_speed,0,room_width-view_width);
	if (keyboard_check(vk_right) || keyboard_check(ord("D"))) x = clamp(x + _move_speed,0,room_width-view_width);
	if (keyboard_check(vk_up) || keyboard_check(ord("W"))) y = clamp(y - _move_speed,0,room_height-view_height);
	if (keyboard_check(vk_down) || keyboard_check(ord("S"))) y = clamp(y + _move_speed,0,room_height-view_height);
	
	if (window_mouse_get_x() <= _move_zone_width) x = clamp(x - _move_speed,0,room_width-view_width);
	if (window_mouse_get_x() >= window_get_width() - _move_zone_width) x = clamp(x + _move_speed,0,room_width-view_width);
	if (window_mouse_get_y() <= _move_zone_width) y = clamp(y - _move_speed,0,room_height-view_height);
	if (window_mouse_get_y() >= window_get_height() - _move_zone_width) y = clamp(y + _move_speed,0,room_height-view_height);
	
	camera_set_view_pos(view,x,y);
}
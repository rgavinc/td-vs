#macro view view_camera[0]
camera_set_view_size(view,view_width,view_height);
_move_speed = 5;

if (keyboard_check(vk_left) || keyboard_check(ord("A"))) x -= _move_speed;
if (keyboard_check(vk_right) || keyboard_check(ord("D"))) x += _move_speed;
if (keyboard_check(vk_up) || keyboard_check(ord("W"))) y -= _move_speed;
if (keyboard_check(vk_down) || keyboard_check(ord("S"))) y += _move_speed;

camera_set_view_pos(view,x,y);
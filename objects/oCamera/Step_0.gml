_move_speed = 5;
camera_set_view_pos(cam,x - viewWidthHalf,y - viewHeightHalf);

if (keyboard_check(vk_left) || keyboard_check(ord("A"))) x -= _move_speed;
if (keyboard_check(vk_right) || keyboard_check(ord("D"))) x += _move_speed;
if (keyboard_check(vk_up) || keyboard_check(ord("W"))) y -= _move_speed;
if (keyboard_check(vk_down) || keyboard_check(ord("S"))) y += _move_speed;
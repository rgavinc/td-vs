/// @description Insert description here

if(is_selected == true){
	image_index = 2;
} else image_index = 0;

if(image_angle == 0 || image_angle == 180 && is_selected == true){
	x = wave(x-0.4,x+0.4,1,0);
} else if(image_angle == 90 || image_angle == 270 && is_selected == true){
	y = wave(y-0.4,y+0.4,1,0);
} 

if(position_meeting(mouse_x, mouse_y, id)) image_index += 1;

if(position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left)){
    is_selected = !is_selected;
	
}

if(is_selected == false){
x = x_original_position;
y = y_original_position;
}
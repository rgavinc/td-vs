// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_direction_arrow(_x,_y,_image_angle){
	with(instance_create(_x,_y,oDirectionArrow)) {
		image_angle = _image_angle;
	}
}
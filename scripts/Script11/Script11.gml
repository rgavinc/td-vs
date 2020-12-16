/// @function creat_direction_arrow(x, y, image_angle);

function create_direction_arrow(_x,_y, _image_angle){
	with(instance_create_depth(_x,_y,0,oDirectionArrow)){
		image_angle = _image_angle;
		//event_user(0);
	}
		
}
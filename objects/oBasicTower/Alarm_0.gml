if (instance_exists(objectToShoot)) {
	var _y_start = y - 40;
	var _x_start = x - choose(5, -5);
	var _arrow = instance_create_depth(_x_start,_y_start,-9,oArrow);
	_arrow.speed = 10;
	_arrow.direction = point_direction(_x_start,_y_start,objectToShoot.x,objectToShoot.y);
	_arrow.image_angle = point_direction(_x_start,_y_start,objectToShoot.x,objectToShoot.y);
	alarm[0] = fire_rate;
} else {
	shooting = false;	
}
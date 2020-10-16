if (instance_exists(objectToShoot)) {
	var arrow = instance_create_depth(x,y,-9,oArrow);
	arrow.speed = 10;
	arrow.direction = point_direction(x,y,objectToShoot.x,objectToShoot.y);
	alarm[0] = fire_rate;
} else {
	shooting = false;	
}
draw_self();
draw_circle(x,y,range,true);

// we can move this to a step event
var en = instance_nearest(x,y,oBasicSoldier);
if (en != noone) {
	if (point_distance(x,y,en.x,en.y) <= range) {
		if (!shooting) {
			alarm[0] = 1
			shooting = true;
		}
		
		objectToShoot = en;
		draw_line(x,y,en.x,en.y);
	} else {
		shooting = false;
		objecToShoot = noone;
	}
}
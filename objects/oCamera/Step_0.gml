//Update Camera


//Update Destination
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

//Update Object Position
x += (xTo - x) / 15;
y += (yTo - y) / 15;

//Keep Camera Centered In Room
x = clamp(x, viewWidthHalf, room_width-viewWidthHalf);
y = clamp(y, viewHeightHalf, room_height-viewHeightHalf);

camera_set_view_pos(cam,x - viewWidthHalf,y - viewHeightHalf);
if (spawn_count < spawn_amount) {
	xStart = x + random_range(-8, 8);
	yStart = y + random_range(-8, 8);
	instance_create_depth(xStart, yStart, -1, oCompGoat);
	spawn_count++;
	alarm[0] = spawn_rate;
}
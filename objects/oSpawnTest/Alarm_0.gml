if (spawn_count < spawn_amount) {
	xStart = x + random_range(-16, 32);
	yStart = y + random_range(-16, 32);
	instance_create_depth(xStart, yStart, -1, oBasicSoldier);
	spawn_count++;
	alarm[0] = spawn_rate;
}
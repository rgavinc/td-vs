surf = surface_create(room_width, room_height);

surface_set_target(surf);
draw_clear(c_black);
surface_reset_target();
depth = -1000;

switch (global.currentPhaseState) {
	case phaseState.attack:
		//TODO: set this back to true
		visible = false;
		break;
	case phaseState.defend:
		visible = false;
		break;
}
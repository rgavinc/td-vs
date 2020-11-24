///@description Places At Mouse, cancels on escape or pause

cancel = function() {
	instance_destroy();
	global.dragTower = false;
}

updateCoordinatesWhenInBuildZone = function() {
	
}

if (global.currentPhaseState == phaseState.defend) {
	switch (global.currentGameState) {
		case gameState.play:
			x = mouse_x;
			y = mouse_y;
			keyShift = keyboard_check(vk_shift);
			//Update Depth
			depth = -bbox_bottom;
			
			// cancel draw if escape is pressed
			if (keyboard_check_pressed(vk_escape)) cancel();
			can_build = mouse_check_button_released(mb_left) && place_meeting(x, y, oBuildZone);
			image_index = place_meeting(x, y, oBuildZone) ? 0 : 1;
			break;
		case gameState.pause:
			cancel();
			break;
	}
}
		
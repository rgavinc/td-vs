///@description Places At Mouse, cancels on escape or pause

cancel = function() {
	instance_destroy();
	global.dragTower = false;
}

if (global.currentPhaseState == phaseState.defend) {
	switch (global.currentGameState) {
		case gameState.play:
			x = mouse_x;
			y = mouse_y;
			keyShift = keyboard_check(vk_shift)
			//Update Depth
			depth = -bbox_bottom;
		
			// cancel draw if escape is pressed
			if (keyboard_check_pressed(vk_escape)) cancel();
			break;
		case gameState.pause:
			cancel();
			break;
	}
}
		
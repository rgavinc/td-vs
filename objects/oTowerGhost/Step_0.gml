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
			for(var i=0; i <array_length_1d(global.buildZones); i++){
				var _zone = global.buildZones[i];
				if point_in_rectangle(mouse_x, mouse_y, _zone.x, _zone.y, _zone.x + 50, _zone.y + 50) {
					x = _zone.x + 25;
					y = _zone.y + 35;
				}
			}
			keyShift = keyboard_check(vk_shift);
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
		
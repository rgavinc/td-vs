//Place Tower
switch (global.currentGameState) {
	case gameState.play:
		if (keyShift == 0) {
			instance_destroy();
			instance_create_depth(mouse_x, mouse_y, -9, oBasicTower);
			global.dragTower = false;
		} else {
			instance_create_depth(mouse_x, mouse_y, -9, oBasicTower);
		}
		break;
}

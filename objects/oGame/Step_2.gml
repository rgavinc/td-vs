//@description Pause the Game
if (keyboard_check_pressed(vk_tab)) {
	switch (global.currentGameState) {
		case gameState.play:
			// go from play to pause
			global.currentGameState = gameState.pause;
			with (all) {
				depth = -bbox_bottom;
				gamePausedImageSpeed = image_speed;
				gamePausedSpeed = speed;
				gamePausedPathSpeed = path_speed;
				image_speed = 0;
				path_speed = 0;
				speed = 0;
			} 
			break;     
		case gameState.pause:
			// go from pause to play
			global.currentGameState = gameState.play;
			with (all) {
				if (!is_undefined(gamePausedImageSpeed)) image_speed = gamePausedImageSpeed;
				if (!is_undefined(gamePausedPathSpeed)) path_speed = gamePausedPathSpeed;
				if (!is_undefined(gamePausedSpeed)) speed = gamePausedSpeed;
			}
			break;
	}        
};

switch (global.currentGameState) {
	case gameState.pause:
	with (all) {
		for (i = 0; i < 12; i++) {
			if (alarm[i] > -1) alarm[i]++;
		}
	}
	break;
}
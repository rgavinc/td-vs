//Pause the Game
if (keyboard_check_pressed(vk_tab)) {
	switch (global.currentGameState) {
		case gameState.play:
			global.currentGameState = gameState.pause;
			with (all) {
				gamePausedImageSpeed = image_speed;
				gamePausedPathSpeed = path_speed;
				image_speed = 0;
				path_speed = 0;
			} 
			break;          
		case gameState.pause:
			global.currentGameState = gameState.play;
			with (all) {
				if !is_undefined(gamePausedImageSpeed) image_speed = gamePausedImageSpeed;
				if !is_undefined(gamePausedPathSpeed) path_speed = gamePausedPathSpeed;
			}
			break;
	}        
};

switch (global.currentGameState) {
	case gameState.pause:
	with (all) {
		for (i = 0; i < 12; i++) {
			show_debug_message(alarm[i]);
			if (alarm[i] > -1) alarm[i]++;
		}
	}
	break;
}
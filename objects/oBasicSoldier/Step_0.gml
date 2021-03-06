sprite_index = spriteRun;

switch (global.currentGameState) {
	case gameState.pause:
		timeline_running = false;
		break;
	case gameState.play:
		timeline_running = true;
		
		PlayerAnimateSprite(); 

		if(path_index = -1 && pathNum < array_length(paths)) {
			path_start(paths[pathNum], global.spd,0,false);
			pathNum++;
		} else if (pathNum >= array_length(paths)) {
			// TODO: add logic for soldier making it to the end
			instance_destroy();
			global.enemies_remaining--;
		}

		//Death
		if(hp <= 0) {
			global.enemies_remaining--;
			var instDeath = instance_create_depth(x,y,1,oSoldierDeath);
			with (instDeath) {
				direction = other.direction;  
			};
			instance_destroy();
		}
		
		break;
};


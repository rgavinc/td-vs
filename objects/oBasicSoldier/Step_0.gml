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
		}

		//Death
		if(hp <= 0) {
			var instDeath = instance_create_depth(x,y,1,oSoldierDeath);
			with (instDeath) {
				direction = other.direction;  
			};
			instance_destroy();
		}
		
		break;
};


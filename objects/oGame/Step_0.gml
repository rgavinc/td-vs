/// @description handle play phase switching
if (global.currentGameState == gameState.play && global.enemies_remaining < 1) {
	global.currentGameState = gameState.plan;
	room_persistent = true;
	switch (global.currentPhaseState) {
		case phaseState.attack:
			room_goto(ROOM_PLAYER);
			alarm[2] = 1
			global.currentPhaseState = phaseState.defend;
			break;
		case phaseState.defend: 
			room_goto(ROOM_ENEMY);
			alarm[1] = 1
			global.currentPhaseState = phaseState.attack;
			break;
	}
}

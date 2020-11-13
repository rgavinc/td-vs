/// @description handle play phase switching
if (global.currentGameState == gameState.play && global.enemies_remaining < 1) {
	global.currentGameState = gameState.plan;
	room_persistent = true;
	switch (global.currentPhaseState) {
		case phaseState.attack:
			room_goto(ROOM_DEFEND);
			alarm[2] = 1
			global.currentPhaseState = phaseState.defend;
			break;
		case phaseState.defend: 
			room_goto(ROOM_ATTACK);
			alarm[1] = 1
			global.currentPhaseState = phaseState.attack;
			break;
	}
}

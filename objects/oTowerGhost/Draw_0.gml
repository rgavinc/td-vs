if (global.currentPhaseState == phaseState.defend) {
	switch (global.currentGameState) {
		case gameState.play:
			draw_self();
			break;
	}
}
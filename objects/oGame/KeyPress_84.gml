//Draws ghost tower on cursor when in tower placement mode

if (global.dragTower == false && global.currentGameState == gameState.play && global.currentPhaseState == phaseState.defend){
	global.dragTower = true;
	instance_create_depth(0,0,-9,oTowerGhost);
} else {
	global.dragTower = false;
}

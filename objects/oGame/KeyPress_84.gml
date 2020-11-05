//Draws ghost tower on cursor when in tower placement mode

if (global.dragTower == false && global.gameStarted == true){
	global.dragTower = true;
	instance_create_depth(0,0,-9,oTowerGhost);
}

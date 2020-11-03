//Tower Placement Mode

if (global.dragTower == false){
	global.dragTower = true;
	instance_create_depth(0,0,-9,oTowerGhost);
}
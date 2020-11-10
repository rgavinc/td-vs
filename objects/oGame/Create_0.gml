 //Initialize & Globals
randomize();
 
alarm[0] = 1

global.iCamera = instance_create_layer(0,0,layer,oCamera);

room_goto(ROOM_START);

//Keeps track of tower placement mode status
global.dragTower = false;

enum gameState {
  start,
  play, 
  pause,
  finish
};

enum phaseState {
	attack,
	defend
};

global.currentGameState = gameState.start;
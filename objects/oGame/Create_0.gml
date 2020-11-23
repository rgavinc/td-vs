 //Initialize & Globals
randomize();
 
alarm[0] = 1

global.iCamera = instance_create_layer(0,0,layer,oCamera);

room_goto(ROOM_DEFEND);

//Keeps track of tower placement mode status
global.dragTower = false;

enum gameState {
  start,
  plan,
  play, 
  pause,
  finish
};

enum phaseState {
	attack, 
	defend
};

global.currentGameState = gameState.start;
global.currentPhaseState = phaseState.defend;

global.buildZones = [{x: 1230, y: 175} , {x:1040, y:175}, {x: 1230, y: 270} , {x:1040, y:270}]
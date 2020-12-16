 //Initialize & Globals
randomize();
 
alarm[0] = 1

global.room_player = rTestRoomDefend;
global.room_enemy = room_duplicate(rTestRoomDefend);

room_goto(global.room_player);

global.player_data_self = create_player_ds_map();
global.player_data_enemy = create_player_ds_map();

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


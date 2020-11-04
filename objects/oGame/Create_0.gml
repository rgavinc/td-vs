 //Initialize & Globals
randomize();
 
menuOpen = true;
alarm[0] = 1
 
global.gamePaused = false ;

global.iCamera = instance_create_layer(0,0,layer,oCamera);

room_goto(ROOM_START);

//Keeps track of tower placement mode status
global.dragTower = false;
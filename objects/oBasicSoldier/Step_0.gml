sprite_index = spriteRun;

//Update Image Index
PlayerAnimateSprite();

//Update Depth
if (!global.gamePaused) {
	depth = -bbox_bottom;
}

if(path_index = -1 && pathNum < array_length(paths)){
	path_start(paths[pathNum], global.spd,0,false);
	pathNum++;
}
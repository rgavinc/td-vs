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

//Death
if(hp <= 0)
{
	instDeath = instance_create_depth(x,y,1,oSoldierDeath);
with (instDeath)
	{
	direction = other.direction;
	};

instance_destroy();

}
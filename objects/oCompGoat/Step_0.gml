sprite_index = spriteRun;

//Update Image Index
PlayerAnimateSprite();

//Update Depth
if (!global.gamePaused)
{
	depth = -bbox_bottom;
}
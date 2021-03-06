//Get Player Input
keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
keyUp = keyboard_check(vk_up) || keyboard_check(ord("W"));
keyDown = keyboard_check(vk_down) || keyboard_check(ord("S"));
keyAttack = keyboard_check(vk_space);
keyboard_check_pressed(ord("G"));
keyboard_check_pressed(ord("P"));

inputDirection = point_direction(0,0,keyRight-keyLeft,keyDown-keyUp);
inputMagnitude = (keyRight-keyLeft != 0) || (keyDown-keyUp != 0);

 
//Movement
hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);

//Update Sprite Index
var _oldSprite = sprite_index;
	if (inputMagnitude != 0)
	{
		direction = inputDirection;
		sprite_index = spriteRun;
	} else sprite_index = spriteIdle;
	if (_oldSprite != sprite_index) localFrame = 0;

//Update Image Index
PlayerAnimateSprite();

switch (global.currentGameState) { 
	case gameState.play:
		x += hSpeed;
		y += vSpeed;
		break;
	default:
		depth = -bbox_bottom;
		break;
};



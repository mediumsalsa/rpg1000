function PlayerStateRoll()
{
	moveX = lengthdir_x(rollSpeed, direction);
	moveY = lengthdir_y(rollSpeed, direction)
	
	rolling = true;
	
	PlayerCollision();
	
	image_index = 0;

	oPlayer.sprite_index = sPlayerRoll;
	
	state = PlayerStateFree;

}
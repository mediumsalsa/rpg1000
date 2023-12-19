function PlayerStateRoll()
{
	iFrames = true;
	
	moveX = lengthdir_x(rollSpeed, direction);
	moveY = lengthdir_y(rollSpeed, direction);
	
	moveDistanceRemaining = max(0, moveDistanceRemaining - rollSpeed)
	var _collided = PlayerCollision();
	
	if (sprite_index == sPlayerUp || sprite_index == sPlayerRunUp)
	{
		sprite_index = sPlayerRollUp;
	}
	else
	{
		sprite_index = sPlayerRoll;
	}
	var _totalFrames = sprite_get_number(sprite_index);
	image_index = (_totalFrames) + min(((1 - (moveDistanceRemaining / rollDistance)) * (_totalFrames)), _totalFrames - 1);
	
	if (moveDistanceRemaining <= 0)
	{
		state = PlayerStateFree;
		iFrames = false;
	}
}
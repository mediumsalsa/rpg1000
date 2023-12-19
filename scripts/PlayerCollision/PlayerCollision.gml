function PlayerCollision()
{

	var _collision = false;
	
	if (tilemap_get_at_pixel(collisionMap, x + moveX, y))
	{
		x -= x mod 16;
		if (sign(moveX) == 1) x += 16 - 1;
		moveX = 0;
		_collision = true;
		
		if (moveY = 0)
		{
			if (oPlayer.sprite_index == sPlayerRunUp)
			{
				oPlayer.sprite_index = sPlayerUp;
			}
			else if (oPlayer.sprite_index == sPlayerRun)
			{
				oPlayer.sprite_index = sPlayer;
			}
		}
		
	}
	
	x += moveX;
	
	if (tilemap_get_at_pixel(collisionMap, x, y + moveY))
	{
		y -= y mod 16;
		if (sign(moveY) == 1) y += 16 - 1;
		moveY = 0;
		_collision = true;
		
		if (moveX == 0)
		{
			if (oPlayer.sprite_index == sPlayerRunUp)
			{
				oPlayer.sprite_index = sPlayerUp;
			}
			else if (oPlayer.sprite_index == sPlayerRun)
			{
				oPlayer.sprite_index = sPlayer;
			}
		}
		
	}
	
	y += moveY;
	
	
	
	return _collision;
	
}








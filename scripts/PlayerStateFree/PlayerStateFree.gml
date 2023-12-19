// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateFree(){

	if (state == PlayerStateFree && !attacking && !rolling)
	{
		if (upKey && downKey)
		{
			oPlayer.sprite_index = sPlayerUp;
		}
				if (rightKey && leftKey)
				{
					oPlayer.sprite_index = sPlayerUp;
				}


		if (moveX == 0 && moveY == 0)
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

		if (upKey) {
		    moveY -= moveSpeed;
			oPlayer.sprite_index = sPlayerRunUp;
		}

		if (downKey) {
		    moveY += moveSpeed;

			oPlayer.sprite_index = sPlayerRun;
		}

		if (leftKey) {
		    moveX -= moveSpeed;
	
			image_xscale = -1;
		
	
			if (!upKey)
			{

					oPlayer.sprite_index = sPlayerRun;
			}
			
	
		}

		if (rightKey) {
		    moveX += moveSpeed;
	
				image_xscale = 1;
				
	
			if (!upKey)
			{
						oPlayer.sprite_index = sPlayerRun
			}
			
	
		}
		
	}




// Normalize diagonal movement
if (moveX != 0 && moveY != 0)
{
    moveX *= 0.7071; 
    moveY *= 0.7071;
}



PlayerCollision();

		if (moveX == 0 && moveY == 0)
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


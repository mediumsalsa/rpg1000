// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateFree(){

	if (state == PlayerStateFree && !attacking)
	{
		
		inputDirection = point_direction(0, 0, rightKey - leftKey, downKey - upKey);
		inputMagnitude = (rightKey - leftKey != 0) || (downKey - upKey != 0);
		
		
		moveX = lengthdir_x(inputMagnitude * moveSpeed, inputDirection);
		moveY = lengthdir_y(inputMagnitude * moveSpeed, inputDirection);
		
		if (inputMagnitude != 0)
		{
			direction = inputDirection
		}
		
		
		

		if (upKey) {
		    //moveY -= moveSpeed;
			oPlayer.sprite_index = sPlayerRunUp;
		}

		if (downKey) {
		    //moveY += moveSpeed;

			oPlayer.sprite_index = sPlayerRun;
		}

		if (leftKey) 
		{
		    //moveX -= moveSpeed;
	
			image_xscale = -1;
			if (!upKey)
			{

				oPlayer.sprite_index = sPlayerRun;
			}
		}


		if (rightKey) 
		{
		   // moveX += moveSpeed;
	
			image_xscale = 1;
			
			if (!upKey)
			{
						oPlayer.sprite_index = sPlayerRun
			}
			
		}
		
		
		if (activateKey)
		{
			state = PlayerStateRoll;
			moveDistanceRemaining = rollDistance;
		}
		
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


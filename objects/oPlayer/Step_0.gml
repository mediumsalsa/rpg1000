// Initialize movement variables // Adjust the speed as needed
 moveX = 0;
 moveY = 0;




oPlayer.image_speed = 1;







upKey = keyboard_check(ord("W"));
downKey = keyboard_check(ord("S"))
rightKey = keyboard_check(ord("D"))
leftKey = keyboard_check(ord("A"))
attackKey = mouse_check_button_pressed(mb_left);

if (!attacking)
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
			

		// Check for input and set movement variables
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
if (moveX != 0 && moveY != 0) {
    moveX *= 0.7071; // Approximately 1 / sqrt(2)
    moveY *= 0.7071;
}





// Move the player
PlayerCollision();

if swordCooldown > 0 
{
    swordCooldown -= 1;
}

	
	if (attackKey && swordCooldown <= 0)
	{
		PlayerStateAttack();
	}





oPlayer.depth = 0;



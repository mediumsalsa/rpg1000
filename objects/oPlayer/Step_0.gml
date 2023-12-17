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

if (attackKey)
{
	image_index = 0;

	attacking = true;
	
	oPlayer.sprite_index = sPlayerAttack;
	
    var mouseX = mouse_x;
    var mouseY = mouse_y;
		
	if (mouseX > oPlayer.x )
	{
		oPlayer.image_xscale = 1

	}
	else if (mouseX < oPlayer.x)
	{
		oPlayer.image_xscale = -1

	}
	
	
	else if (mouseY > oPlayer.x )
	{
		oPlayer.sprite_index = sPlayerAttack;
 
	}
	
	
	if (mouseY < oPlayer.y - 30)
	{
		attackingUp = true;

		oPlayer.sprite_index = sPlayerAttackUp;	

	}
	
}








    // Set the sword cooldown
    swordCooldown = swordCooldownMax;

	
	
	//*/
	
	



oPlayer.depth = 0;


/*
// Calculate the direction from player to cursor
var dir = point_direction(x, y, mouse_x, mouse_y);

// Determine the closest direction (up, down, left, right)
if (dir >= 0 && dir < 90) {
    sprite_index = sPlayerUpR; // Cursor is below player
}
else if (dir >= 90 && dir < 180) {
    sprite_index = sPlayerUpL; // Cursor is to the left of player
}
else if (dir >= 180 && dir < 270) {
    sprite_index = sPlayerLeft; // Cursor is above player
}
else {
    sprite_index = sPlayerRight; // Cursor is to the right of player
}
*/
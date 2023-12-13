// Initialize movement variables // Adjust the speed as needed
var moveX = 0;
var moveY = 0;




oPlayer.image_speed = 1;



var prev_x = x;
var prev_y = y;





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
x += moveX;
y += moveY;



			if (tilemap_get_at_pixel(collision_layer, x, y) != 0)
			{
				x = prev_x;
				y = prev_y;
			}






// Create a "swordCooldown" variable in the Create Event of the player object
 // Adjust to set the cooldown duration

// Step Event of the player object
if swordCooldown > 0 {
    swordCooldown -= 1;
}

if attackKey and swordCooldown == 0 {
    // Get the mouse position'
	attacking = true;
	
	moveSpeed = 0;
	
	var playerAngle = direction;
	
	
    var mouseX = mouse_x;
    var mouseY = mouse_y;
	
	oPlayer.sprite_index = sPlayerAttack;
	
	if (mouseX > oPlayer.x )
	{
		oPlayer.image_xscale = 1
		playerAngle = 0;
	}
	else if (mouseX < oPlayer.x)
	{
		oPlayer.image_xscale = -1
		playerAngle = 180;
	}
	
	
	if (mouseY < oPlayer.y - 8 )
	{
		oPlayer.image_index = 1;
		attackingUp = true;
	}
	else if (mouseY > oPlayer.x )
	{
		oPlayer.image_index = 0;
	}

	var dir = point_direction(x, y, mouseX, mouseY);

    // Calculate the direction from the player to the mouse



	if (attackingUp == true)
	{
    var xOffset = lengthdir_x(8, dir); 
    var yOffset = lengthdir_y(8, dir);

	}
	else if (attackingUp == false)
	{
    var xOffset = lengthdir_x(2, dir); 
    var yOffset = lengthdir_y(2, dir);

	}

    // Create the sword object
    var swordInstance = instance_create_layer(x + xOffset, y + yOffset, "Instances", oSword);

    // Set the sword's direction (angle) if needed
    swordInstance.direction = dir;

 // Get the player's current angle

    // Calculate the relative angle between the player and the sword
    var relativeAngle = dir - playerAngle;

    // Adjust the relative angle to be in the range [-180, 180]
    while (relativeAngle > 180) relativeAngle -= 360;
    while (relativeAngle < -180) relativeAngle += 360;

    // Set the sword's image_angle based on the relative angle
    swordInstance.image_angle = relativeAngle;

    // Set the sword cooldown
    swordCooldown = swordCooldownMax;

	swordInstance.alarm[0] = room_speed * 0.25;
	
	
	
}


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
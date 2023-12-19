function PlayerStateAttack()
{
	
	
		image_index = 0;

		attacking = true;
	
		oPlayer.sprite_index = sPlayerAttack;
	
		var playerX = x;
		var playerY = y;
	
	    var mouseX = mouse_x;
	    var mouseY = mouse_y;
	
		var dir = point_direction(playerX, playerY, mouseX, mouseY);


		if (dir >= 45 && dir < 135)
		{
			sprite_index = sPlayerAttackUp;
		}
		else if (dir >= 135 && dir < 225)	
		{
			sprite_index = sPlayerAttack;
			oPlayer.image_xscale = -1;
		}
		else if (dir >= 225 && dir < 315)	
		{
			sprite_index = sPlayerAttackDown;
		}
		else	
		{
			 sprite_index = sPlayerAttack;
			 oPlayer.image_xscale = 1;
		}
		
	swordCooldown = swordCooldownMax;
	
	state = PlayerStateFree;

}
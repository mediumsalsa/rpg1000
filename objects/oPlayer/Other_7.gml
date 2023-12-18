

if (oPlayer.sprite_index == sPlayerAttack || oPlayer.sprite_index == sPlayerAttackUp ||  oPlayer.sprite_index == sPlayerAttackDown)
{
	
	oPlayer.image_index = 0;
	
	if (oPlayer.sprite_index == sPlayerAttackUp)
	{
		oPlayer.sprite_index = sPlayerUp;
	}
	else
	{
		oPlayer.sprite_index = sPlayer;
	}
	
	attacking = false;
}

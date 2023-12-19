

if (oPlayer.sprite_index == sPlayerAttack || oPlayer.sprite_index == sPlayerAttackUp ||  oPlayer.sprite_index == sPlayerAttackDown)
{
	
	oPlayer.image_index = 0;
	
	if (oPlayer.sprite_index == sPlayerAttackUp)
	{
		oPlayer.sprite_index = sPlayerUp;
	}
	else if (oPlayer.sprite_index == sPlayerAttack)
	{
		oPlayer.sprite_index = sPlayer;
	}
	
	attacking = false;
}


else if (oPlayer.sprite_index == sPlayerRoll || oPlayer.sprite_index == sPlayerRollUp)
{
	if (oPlayer.sprite_index == sPlayerRoll)
	{
		oPlayer.sprite_index = sPlayer;
	}
	else if (oPlayer.sprite_index == sPlayerRollUp)
	{
		oPlayer.sprite_index = sPlayerUp;
	}
	
	rolling = false;
	
	
}



if (oPlayer.sprite_index == sPlayerAttack || oPlayer.sprite_index == sPlayerAttackUp)
{
	oPlayer.image_index = 0;
	
	oPlayer.sprite_index = sPlayer;
	
	attacking = false;
}

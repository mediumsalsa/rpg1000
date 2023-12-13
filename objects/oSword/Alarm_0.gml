instance_destroy();



if (oPlayer.attackingUp == true)
{
	oPlayer.sprite_index = sPlayerUp;
}
else if (oPlayer.attackingUp == false)
{
	oPlayer.sprite_index = sPlayer;
}



oPlayer.moveSpeed = 1.5;

oPlayer.attacking = false;
oPlayer.attackingUp = false;

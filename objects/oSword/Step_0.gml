

if (oPlayer.image_xscale == -1)
{
	image_xscale = -1
}

else if (oPlayer.image_xscale == 1)
{
	image_xscale = 1
}

if (mouse_y < oPlayer.y - 30)
{
	oSword.depth = 100;
}
else
{
	oSword.depth = -100;
}


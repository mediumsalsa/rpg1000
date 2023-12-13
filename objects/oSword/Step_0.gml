/// @description Insert description here
// You can write your code in this editor


if (oPlayer.image_xscale == -1)
{
	image_xscale = -1
}

else if (oPlayer.image_xscale == 1)
{
	image_xscale = 1
}

if (mouse_y < oPlayer.y - 8)
{
	oSword.depth = 100;
}
else
{
	oSword.depth = -100;
}


// Initialize movement variables // Adjust the speed as needed
 moveX = 0;
 moveY = 0;




oPlayer.image_speed = 1;







upKey = keyboard_check(ord("W"));
downKey = keyboard_check(ord("S"))
rightKey = keyboard_check(ord("D"))
leftKey = keyboard_check(ord("A"))
activateKey = keyboard_check_pressed(vk_space);
attackKey = mouse_check_button_pressed(mb_left);

script_execute(state);


// Move the player


if swordCooldown > 0 
{
    swordCooldown -= 1;
}

	
if (attackKey && swordCooldown <= 0)
{
	state = PlayerStateAttack;
}


if (activateKey)
{
	state = PlayerStateRoll;
}





oPlayer.depth = 0;



//State machine
state = PlayerStateFree;


//Movement variables
moveSpeed = 1.5;
rollSpeed = 2.5;
rollDistance = 42;




//Sword variables
swordCooldown = 0;
swordCooldownMax = room_speed * 0.5;



//Conditions
rolling = false
attacking = false;
iFrames = false;


//Collision
collisionMap = layer_tilemap_get_id(layer_get_id("Col"));
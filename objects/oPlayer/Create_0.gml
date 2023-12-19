
state = PlayerStateFree;

moveSpeed = 1.5;
rollSpeed = 2.5;

rollDistance = 52;




swordCooldown = 0;
swordCooldownMax = room_speed * 0.5;



rolling = false

attacking = false;

attackingUp = false;

collisionMap = layer_tilemap_get_id(layer_get_id("Col"));
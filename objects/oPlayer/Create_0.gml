/// @description Insert description here
// You can write your code in this editor
moveSpeed = 1.5;

//playerHP = 100;

swordCooldown = 0;
swordCooldownMax = room_speed * 0.5;


attacking = false;

attackingUp = false;

collision_layer = layer_get_id("Col");

collisionMap = layer_tilemap_get_id(layer_get_id("Col"));
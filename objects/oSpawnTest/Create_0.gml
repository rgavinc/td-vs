/// @description Insert description here
// You can write your code in this editor
spawn_amount = 1;
spawn_count = 0;

spawn_rate = 2 * room_speed;

alarm[0] = 1;

global.enemies_remaining = spawn_amount;
global.hp = 100;
global.spd = 1;
global.level = 1;
global.paths = [pTest1,pTest2,pTest9,pTest11,pTest13]
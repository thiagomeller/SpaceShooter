/// @description Criando os inimigos
// You can write your code in this editor
var inimigox = irandom_range(64, room_width - 64);
var inimigoy = irandom_range(-64, -room_height * 1.25);

instance_create_layer(inimigox, inimigoy, "PEnemies", obj_enemy01);

//Resetando o alarme
alarm[0] = room_speed;

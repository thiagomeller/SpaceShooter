/// @description Criando tiro

//Criando o tiro
instance_create_layer(x, y + sprite_height/2, "PShot", obj_shot01);

//Resetando o alarme
alarm[0] = random_range(1, 3) * room_speed;

/// @description Insert description here
// You can write your code in this editor

//Mudando a transparência da imagem
image_alpha -= .1;

//Destruindo-o
if (image_alpha <= 0) {
	instance_destroy(id, false);	
}

//Setando o alarme
alarm[0] = room_speed;
/// @description Insert description here
// You can write your code in this editor

velocidade = 5;

//Criando uma função 
atirando = function()
{
		if (keyboard_check(vk_space) && alarm[0] == -1)
		{
			//Ativando o alarme
			alarm[0] = room_speed;

			//Criar o tiro
			instance_create_layer(x, y - sprite_height/3, "PShot", obj_shot_player);
//Criar o tiro a cada um segundo
		}
}

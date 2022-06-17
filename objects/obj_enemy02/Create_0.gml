/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

chance = 40;

pontos = 20;

//Criando a variável para controle de quando ele pode se mover e quando n pode mais
posso_me_mover = true;

atirando = function()
{
		//Checando se já entrou na room
		if (y >= 0)
	{
		instance_create_layer(x, y + sprite_height/3, "PShot", obj_shot02);
	}
}


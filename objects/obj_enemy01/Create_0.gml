/// @description Insert description here
// You can write your code in this editor
vspeed = 3;

pontos = 10

//Iniciando o alarme com tempo entre 1 e 3 
alarm[0] = random_range(1, 3) * room_speed;

//Checando se colodiu com algum inimigo
//Se colidir = destruição
if (place_meeting(x, y, obj_enemy01))
{
	//Não executando o evento de destroy
	instance_destroy(id, false);
}


atirando = function()
{
		if (y >= 0)
	{
		instance_create_layer(x - 3, y + sprite_height/3, "PShot", obj_shot01);
	}
}

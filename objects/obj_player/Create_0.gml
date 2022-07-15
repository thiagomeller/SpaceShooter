/// @description Insert description here
// You can write your code in this editor

//Velocidade - .05	  - Limite = 10
//Espero  tiro - 10%  - Limite = 20
//Level tiro - 1      - Limite = 5

//Sistama de vida
vida = 3;

velocidade = 5;

espera_tiro = room_speed;

lvl_tiro = 1;


//Criando uma função do tiro geral 
atirando = function()
{
var y_tiro = y - sprite_height/3;
//Criar o tiro a cada um segundo
//Montando uma forma de fazer com que o jogador atire mantendo o espaço pressionado
//Ativando-o a cada um segundo
//Ativar somente se não está ativo
	
	if (keyboard_check(vk_space) && alarm[0] == -1)
	{
			//Ativando o alarme
			alarm[0] = espera_tiro;

			//Criar o tiro1
			//Criar condição para o tiro sair dependendo do lvl
			if (lvl_tiro == 1)
			{
				instance_create_layer(x, y_tiro, "PShot", obj_shot_player);
			}
			else if (lvl_tiro == 2)
			{
				tiro2();			
			}
			else if (lvl_tiro == 3)
			{
				instance_create_layer(x, y_tiro, "PShot", obj_shot_player);
				tiro2();
			}
			else if (lvl_tiro == 4)
			{
				tiro4();
			}
			else
			{
				tiro2();
				tiro4();
			}
	}
}

//Criando o Método do tiro2
tiro2 = function()
	{
		var y_tiro = y - sprite_height/3;
		//Criando o tiro da asa esquerda
		//Fazendo ele ir para esquerda
		var tiro1 = instance_create_layer(x - 45, y_tiro, "PShot", obj_2shot_player);
		tiro1.hspeed = -4;
		//Criando o tiro da asa direita
		var tiro2 = instance_create_layer(x + 45, y_tiro, "PShot", obj_2shot_player);
		tiro2.hspeed = 4;	
	}

//Criando o Método do tiro4
tiro4 = function()
	{
		var y_tiro = y - sprite_height/3;
		var angulo = 115;
		repeat(3)
			{
				var tiro_padrao = instance_create_layer(x, y_tiro, "PShot", obj_shot_player);
			//Ajustando a direção do tiro
				tiro_padrao.direction = angulo;
			//Ajustando o angulo da imagem
				tiro_padrao.image_angle = tiro_padrao.direction + 90;
			//Somando o valor do angulo para mudar a direção dos outros 
				angulo -= 25;
			}
	}

///@method lvl_up(chance)
lvl_up = function(_chance)
{
	if (_chance >= 90)
	{
		if (lvl_tiro < 5)
		{
		//Aumentando o level do tiro se for menor que 5
		lvl_tiro++;
		}	
	}
	else if (_chance >= 45)
	{
		if (espera_tiro > 20)
		{
		//Diminuindo a espera do tiro
		espera_tiro *= .9;
		}
	}
	else
	{
		if (velocidade < 10)
		{
		//Aumentando a velocidade do player
		velocidade += .05;
		}
	}
}

///@method dano();
dano = function() 
{
	vida--;
	if (vida < 0) 
		{
			instance_destroy();
		}
}


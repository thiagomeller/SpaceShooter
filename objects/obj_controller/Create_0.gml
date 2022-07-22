/// @description Iniciando
// You can write your code in this editor

//Randomizando o jogo
randomize();

//INiciando o alarme
alarm[0] = room_speed;

//Iniciando a variável de pontos
pontos = 0;

//Pontos para prox lvl
pontos_minimos = 100;

//Iniciando o sistema de level
level = 1;

//Variavel de controle para o gameover
gameover_seq = noone;

//Criando o método para ganhar pontos
///@method ganhar_pontos(pontos)
ganhar_pontos = function(_pontos)
{
	pontos += _pontos * level;
	
	//Ganhando leveis e dobrando o valor minimo para ganhar o próximo level
	if (pontos > pontos_minimos)
		{
			level ++;
			pontos_minimos *= 2;
		}
}

//Criando o método para gerar inimigos
criar_inimigos = function()
{
		//Criando o X e o Y do inimigo
	var inimigox = irandom_range(64, room_width - 64);
	var inimigoy = irandom_range(-96, -1504 - (level * 800));

	//Criando o inimigo com base no level
	//A chance de criar um inimigo mais forte depende do lvl
	var chance = random_range(0, level);

	//Ele começa criando esse inimigo, após atingir certo lvl começa a criar o outro tbm
	var enemy = obj_enemy01

	//Se o valor da chance for maior do que 2
	if (chance > 2)
	{
		enemy = obj_enemy02;
	}

	instance_create_layer(inimigox, inimigoy, "PEnemies", enemy);
}

/// @description Criando os inimigos

//Repetindo o mesmo código para criar o efeito de ONDAS de inimigos
//Usando a função "repeat"
//Criando o inimigo
/*
Usando a "!" para inverter o valor dado, ou seja, o retorno será 1 se 
instance_exists(obj_enemy01) for false, fazendo com que só execute o if se os inimigos não existirem
*/
if (!instance_exists(obj_enemy01))
{
	
	var repetir = 10 * level
	repeat(repetir)
	{
		criar_inimigos();
	}
}

//Resetando o alarme
alarm[0] = room_speed * 5;

/*
if (instance_exists(obj_enemy01))
{
	//Se existe
	//nada nada nada nadaaaaa
}
else
{
	//Se n existe
	repeat(10)
	{
		criar_inimigos();
	}
}
*/

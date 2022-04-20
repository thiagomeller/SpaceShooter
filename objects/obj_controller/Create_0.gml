/// @description Iniciando
// You can write your code in this editor

//INiciando o alarme
alarm[0] = room_speed;

//Iniciando a variável de pontos
pontos = 0;

//Iniciando o sistema de level
level = 1;

//Criando o método para ganhar pontos
///@method ganhar_pontos(pontos)
ganhar_pontos = function(_pontos)
{
	pontos += _pontos;
}

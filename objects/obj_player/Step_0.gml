/// @description Insert description here
// You can write your code in this editor
//Movendo o Player
/*
if (keyboard_check(ord("W")))
{
	y -= velocidade;
}
if (keyboard_check(ord("A")))
{
	x -= velocidade;
}
if (keyboard_check(ord("S")))
{
	y += velocidade;
}
if (keyboard_check(ord("D")))
{
	x += velocidade;
}
y -= up * velocidade;
y += down * velocidade;
x -= left * velocidade;
x += right * velocidade;
*/
var up, down, left, right, fire;
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));


//Movendo com base nos resultados das contas booleanas, então, multiplico pela variavél da velocidade
y += (down - up) * velocidade;
x += (right - left) * velocidade;

//Utilizando a função criada
atirando();

//Montando uma forma de fazer com que o jogador atire mantendo o espaço pressionado
//Ativando-o a cada um segundo
//Ativar somente se não está ativo
if (keyboard_check(vk_space) && alarm[0] == -1)
{
	//Ativando o alarme
	alarm[0] = room_speed;

	//Criar o tiro
	instance_create_layer(x, y - sprite_height/3, "PShot", obj_shot_player);

	//Criar o tiro a cada um segundo
}


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
fire = keyboard_check_pressed(vk_space);

//Movendo com base nos resultados das contas booleanas, então, multiplico pela variavél da velocidade
y += (down - up) * velocidade;
x += (right - left) * velocidade;

if (fire)
{
	instance_create_layer(x, y - sprite_height/3, "PShot", obj_shot_player);
}

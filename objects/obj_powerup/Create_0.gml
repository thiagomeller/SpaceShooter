/// @description Insert description here
// You can write your code in this editor

//Criando uma chance entre 0 a 100 para ele decidir qual vai ser o upgrade

randomize();
chance = random(100); 
show_debug_message(chance);

//Movimentando-se
speed = 2;
direction = irandom(359);

//Colocando um alarme para ele desaparecer
alarm[0] = room_speed;

//Dependendo da chance a cor vai ser diferente
if (chance >= 90)
{
	cor = c_red;
}
else if (chance >= 45)
{
	cor = c_lime;
}
else
{
	cor = c_yellow;
}



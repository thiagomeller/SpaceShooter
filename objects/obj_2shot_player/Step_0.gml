/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//Mudando a direção depois que mover x pxls
// xstart = posição inicial do objeto no eixo X
// ystart = posição inicial do objeto no eixo Y

if (x > xstart + 50 || x < xstart - 50)
{
	//Inverter a velocidade horizontal
	hspeed *= -1;
}


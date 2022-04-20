/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//Checando que passou de 1/3 da tela
/* O uso da variável "posso_me_mover" torna-se obsoleto se ao inves que eu checar se o y é maior que 1/3
da altura da room eu checar somente quando ele é igual, o que acontecerá somente uma vez (trocando assim
o ">" por um "=").
*/

if (y > room_height/3 && posso_me_mover)
{
	//Checando de que lado da room que estou 
	if (x < room_width/2)
	{
		//show_debug_message("To na esquerda");
		hspeed = 3;
//Ao setar essa variável como falsa eu faço com que o evento if aconteça somente um vez
		posso_me_mover = false;
	}
	else
	{
		//show_debug_message("to na direita")
		hspeed = -3;
		posso_me_mover = false;
	}
}

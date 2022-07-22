/// @description Insert description here
// You can write your code in this editor

//Movendo a tela
view_xport[0] = random_range(-shake, shake);
view_yport[0] = random_range(-shake, shake);

//Diminuindo o valor do screenshake
shake *= .92;

if (shake < 0.5) {
	instance_destroy();
}
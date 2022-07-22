/// @description Insert description here
// You can write your code in this editor

var alturaGui = display_get_gui_height();
var posicao = 40;
var posicao2 = 41;

//Desenhando a nave para ser a vida, e fazendo ela desaparecer caso tenha dano
repeat(vida) {
	draw_sprite_ext(spr_player, 0, posicao, 50, .4, .4, 0, c_white, .5);
	posicao = posicao + 60;
}

repeat(qnt_escudo) {
	draw_sprite_ext(spr_shield, 2, posicao2, 120, .4, .4, 0, c_white, .5);
	posicao2 = posicao2 + 60;
}

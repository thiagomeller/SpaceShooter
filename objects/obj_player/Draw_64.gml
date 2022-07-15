/// @description Insert description here
// You can write your code in this editor

var alturaGui = display_get_gui_height();
var posicao = 40;

//Desenhando a nave para ser a vida, e fazendo ela desaparecer caso tenha dano
repeat(vida) {
	draw_sprite_ext(spr_player, 0, posicao, alturaGui - 40, .4, .4, 0, c_white, .5);
	posicao = posicao + 60;
}

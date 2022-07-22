/// @description Insert description here
// You can write your code in this editor

//Reiniciando somente se o player já morreu
//(!instance_exists(obj_player)) ao inves de gameover_seq)
if(gameover_seq) {
	room_restart();
}
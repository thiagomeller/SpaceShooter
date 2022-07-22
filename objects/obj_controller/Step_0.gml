/// @description Insert description here
// You can write your code in this editor

if (!instance_exists(obj_player) && !gameover_seq) {
	gameover_seq = layer_sequence_create("Sequences", 960, 540, sq_gameover);
}
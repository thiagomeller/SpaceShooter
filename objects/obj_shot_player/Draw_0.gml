/// @description Insert description here
// Essa função cuida da criação da sprite, ou seja, se eu não colocar
// a sprite que eu quero aqui nada aparece

//Ordem do código importa

//Desenhando o tiro em si
draw_self();
//Desenhando o brilho
//Alterando como o video trata as cores
gpu_set_blendmode(bm_add);
draw_sprite_ext(shine, image_index, x, y, image_xscale, image_yscale, image_angle, colors, 0.5);
//Voltando ao normal
gpu_set_blendmode(bm_normal);

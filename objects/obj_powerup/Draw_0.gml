/// @description Insert description here
// You can write your code in this editor

draw_self();
var alpha = image_alpha - 0.5;

gpu_set_blendmode(bm_add);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale + .2, image_yscale + .2, image_angle, cor, alpha);
gpu_set_blendmode(bm_normal);

/// @description Insert description here
// You can write your code in this editor
instance_create_layer(x, y, layer, obj_explosion);

//Rodando o método de ganhar pontos, acessando o obj_controller se ele existir
GanharPontos(pontos);

//Método de drop de power-ups
drop(chance);

//Criando o screenshake
Screenshake(10);
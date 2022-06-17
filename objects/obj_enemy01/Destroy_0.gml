/// @description Insert description here
// You can write your code in this editor
instance_create_layer(x, y, layer, obj_explosion);

//Rodando o método de ganhar pontos, acessando o obj_controller se ele existir
if (instance_exists(obj_controller))
{
	obj_controller.ganhar_pontos(pontos);
}

drop(chance);

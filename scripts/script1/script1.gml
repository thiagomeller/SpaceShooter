// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//Setando o screenshake e a intensidade
function Screenshake(set_shake){
	var screenshake = instance_create_layer(x, y, "Shield", obj_screenshake);
	screenshake.shake = set_shake;
}

///@method GanharPontos(quantidadeDePontos)
function GanharPontos(_pontos) {
	if(instance_exists(obj_controller)){
	//Ganha pontos
		obj_controller.ganhar_pontos(_pontos);
	}	
}

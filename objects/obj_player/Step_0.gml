/// @description Insert description here
// You can write your code in this editor

var up, down, left, right,shield;
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
shield = keyboard_check_pressed(ord("E"));

//Criando o escudo, SE eu tenho um alvo válido e SE eu tenho escudos e SE eu não estiver com escudo já 
if (shield && qnt_escudo > 0 && !instance_exists(obj_shield)) {
	
	var escudo = instance_create_layer(x, y, "Shield", obj_shield);
	
	//Identificando o alvo
	escudo.alvo = id;
	
	//Diminuindo a quantidade de escudo
	qnt_escudo--;
}


//Movendo com base nos resultados das contas booleanas, então, multiplico pela variavél da velocidade
y += (down - up) * velocidade;
x += (right - left) * velocidade;

//Limitando a movimentação do player
x = clamp(x, 60, 1860);
y = clamp(y, 64, 1024);

//Utilizando a função criada
atirando();

//Fazendo com o que lvl do tiro aumente quando clicar para cima
//Apenas se o lvl do tiro foi menor do que 5
if (keyboard_check_pressed(vk_up) && lvl_tiro < 5)
{
	lvl_tiro++;
}

if (keyboard_check_pressed(vk_down) && lvl_tiro > 1)
{
	lvl_tiro--;
}

if (keyboard_check_pressed(vk_right) && espera_tiro > 20)
{
	espera_tiro *= 0.9;
}

if (keyboard_check_pressed(vk_left))
{
	espera_tiro *= 1.1;
}


show_debug_message(vida);

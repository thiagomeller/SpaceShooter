/// @description Insert description here
// You can write your code in this editor

//Diminuindo a escala do tiro
//Lerp é uma função de aproximação, baseada em uma porcentagem
//lerp (valor que eu tenho, valor para chegar, porcentagem de aproximação)

//Step1 a 50%(0.5) = 5 - 10 (!= 5 / 2) = 7,5
//Step2 = 7,5 - 10 (!= 2,5 / 2) = 8,75
//Step3 = 8,75 - 10 (!= 1,25 / 2) = 9,375

//Fazendo meu xscale chegar no valor original que é 1 
image_xscale = lerp(image_xscale, 1, 0.3);
image_yscale = lerp(image_yscale, 1, 0.3);

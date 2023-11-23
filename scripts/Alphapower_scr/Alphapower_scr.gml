// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Alphapower_scr(){

// [Step´event]

// Alpah dinâmico
if (place_meeting(x,y,ColliderV_obj))
{
	if (image_alpha < 1) image_alpha += .05;	
}
else
{
	if (image_alpha > .5) image_alpha -= .05;
}

// Deteminações

if (image_alpha >= 1) image_alpha = 1;
if (image_alpha <= .5) image_alpha = .5;

}
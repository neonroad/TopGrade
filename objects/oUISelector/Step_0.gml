/// @description  
x = lerp(x,global.buttonHover.x,0.3);
y = lerp(y, global.buttonHover.y,0.3);


if(round(x) == round(global.buttonHover.x) && round(y) == round(global.buttonHover.y)){
	animating = true;	
}
else{
	animating = false;	
}

if(animating)
	image_speed = 0.5;
else
	image_speed = 0;
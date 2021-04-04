/// @description  

var numToString = string(numberToDisplay);
numLength = (sprite_get_bbox_right(spUI_Numbers) - sprite_get_bbox_left(spUI_Numbers))*scale;
digitLength = string_length(numToString);
for (var i = 1; i <= digitLength; i++) {
	if(string_char_at(numToString,i) != ".")
		draw_sprite_ext(spUI_Numbers, string_char_at(numToString,i), x + (numLength*(i-1)), y, scale, scale, 0, numColor, 1);
	else
		draw_sprite_ext(spUI_Symbols, 0, x + (numLength*(i-1)), y, scale, scale, 0, numColor, 1);
}

num_width = numLength*digitLength;
num_height = sprite_get_bbox_bottom(spUI_Numbers) * scale;

if(draw_check != -4){
	draw_sprite_ext(draw_check, 0, x+(num_width/2),y,scale*2,scale*2,0,c_white,1);
}

//draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,true);

image_xscale = scale*digitLength;
image_yscale = scale;
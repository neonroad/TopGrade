// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scCreateNumber(number){
	var num = instance_create_depth(x,y,depth-1, oNumber);
	num.numberToDisplay = number;
	//show_debug_message(num.numberToDisplay);
	return num.id;
}

function scInitializeNumber(number){
	with(number){
		var numToString = string(numberToDisplay);
		numLength = (sprite_get_bbox_right(spUI_Numbers) - sprite_get_bbox_left(spUI_Numbers))*scale;
		digitLength = string_length(numToString);
		num_width = numLength*digitLength;
	}	
}
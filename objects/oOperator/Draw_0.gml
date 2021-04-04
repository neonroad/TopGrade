/// @description  

if(operator == OPERATOR.LONGDIVISION){
	
	if(value1Obj != -4)
		value1Obj.scale = scale;
	if(value2Obj != -4)
		value2Obj.scale = scale;
	
	var spriteToUse = spUI_Divide;
	var spriteSize = sprite_get_width(spriteToUse)*scale;
	var spriteEnd = sprite_get_bbox_right(spriteToUse)*scale;
	
	if(value1Obj != -4 && value2Obj != -4){
		value1Obj.x = x;
		value1Obj.y = y;
		
		draw_sprite_ext(spriteToUse, 0, value1Obj.x + value1Obj.num_width, value1Obj.y, scale, scale, 0, operatorColor, 1);// )
		draw_sprite_ext(spriteToUse, 1, value1Obj.x + value1Obj.num_width, value1Obj.y, scale, scale, 0, operatorColor, 1);// --
		var desiredX = value1Obj.x + value1Obj.num_width + (spriteSize/2);
		value2Obj.x = desiredX;
		value2Obj.y = y;
		
		var splitX = value1Obj.x + value1Obj.num_width; //Location of ')'
		
		if(abs(value2Obj.numberToDisplay) < 10) // single digit
			draw_sprite_ext(spriteToUse, 3, splitX + (spriteSize*1), value2Obj.y, scale, scale, 0, operatorColor, 1);					//    --
		else{
			for (var j = 0; j <= value2Obj.digitLength/5; j++) {
				draw_sprite_ext(spriteToUse, 2, splitX + spriteEnd + (spriteSize*j), value1Obj.y, scale, scale, 0, operatorColor, 1);	// ---
			}
			draw_sprite_ext(spriteToUse, 3, splitX + spriteEnd + (spriteSize*(j)), value1Obj.y, scale, scale, 0, operatorColor, 1);				//    --
		}
		
		
	}
	else{
		draw_sprite_ext(spriteToUse, 0, x, y, scale, scale, 0, operatorColor, 1);					// )
		draw_sprite_ext(spriteToUse, 1, x, y, scale, scale, 0, operatorColor, 1);					// --
		draw_sprite_ext(spriteToUse, 2, x+(spriteSize)  , y, scale, scale, 0, operatorColor, 1);	//   ---
		draw_sprite_ext(spriteToUse, 3, x+(spriteSize*2), y, scale, scale, 0, operatorColor, 1);	//      --
	}

}

if(operator == OPERATOR.FRACTION){
	if(value1Obj != -4)
		value1Obj.scale = scale;
	if(value2Obj != -4)
		value2Obj.scale = scale;
	
	var spriteToUse = spUI_Fraction;
	var spriteSize = sprite_get_width(spriteToUse)*scale;
	var spriteEnd = sprite_get_bbox_right(spriteToUse)*scale;
	
	if(value1Obj != -4 && value2Obj != -4){
		
		
		var longest_num = value1Obj.digitLength;
		if(value1Obj.digitLength != value2Obj.digitLength)
			longest_num = max(value1Obj.digitLength, value2Obj.digitLength);
		
		value1Obj.x = x;
		value1Obj.y = y;
		
		
		value1Obj.y -= value1Obj.num_height;
		
		myX = value1Obj.x + ((value1Obj.num_width)/2);
		myY = y;
		
		if(longest_num <= 1)
			draw_sprite_ext(spriteToUse, 0, myX, myY, scale, scale, 0, operatorColor, 1);// - 
			
		else if(longest_num == 2){
			myX -= (sprite_get_width(spriteToUse)/4)*scale;
			draw_sprite_ext(spriteToUse, 1, myX-((sprite_get_width(spriteToUse)/2)*scale), myY, scale, scale, 0, operatorColor, 1);//  -
			draw_sprite_ext(spriteToUse, 3, myX+((sprite_get_width(spriteToUse)/2)*scale), myY, scale, scale, 0, operatorColor, 1);//- 
		}
		
		else{
			myX = value1Obj.x - ((((longest_num-2)*sprite_get_width(spriteToUse))/4) *scale);
			draw_sprite_ext(spriteToUse, 1, myX, myY, scale, scale, 0, operatorColor, 1);//-
			for (var i = 1; i < longest_num/2; i++) {
			   draw_sprite_ext(spriteToUse, 2, myX+(i*sprite_get_width(spriteToUse)*scale), myY, scale, scale, 0, operatorColor, 1);// - 
			}
			draw_sprite_ext(spriteToUse, 3, myX+(i*sprite_get_width(spriteToUse)*scale), myY, scale, scale, 0, operatorColor, 1);//-
			myX += ((i*sprite_get_width(spriteToUse))/2);
			
		}
		
		value2Obj.x = (value1Obj.x + (value1Obj.num_width/2) - (value2Obj.num_width/2));
		value2Obj.y = (value1Obj.y + value1Obj.num_height*1.5);
		//draw_circle(myX,myY,15,false);
		
	}
	else{
		draw_sprite_ext(spriteToUse, 0, x, y, scale, scale, 0, operatorColor, 1); //Draw line
	}
}
	
if(operator == OPERATOR.DIVISION){
	if(value1Obj != -4)
		value1Obj.scale = scale;
	if(value2Obj != -4)
		value2Obj.scale = scale;
	
	var spriteToUse = spUI_Division;
	
	if(value1Obj != -4 && value2Obj != -4){
		x = value1Obj.x + sprite_get_width(spriteToUse)*scale;
		y = value1Obj.y;
		value2Obj.x = x + sprite_get_bbox_right(spriteToUse)*scale;
	}
	draw_sprite_ext(spriteToUse, 0, x, y, scale, scale, 0, operatorColor, 1)
}

if(operator == OPERATOR.MULTIPLICATION){
	if(value1Obj != -4)
		value1Obj.scale = scale;
	if(value2Obj != -4)
		value2Obj.scale = scale;
	
	var spriteToUse = spUI_Division;
	
	if(value1Obj != -4 && value2Obj != -4){
		x = value1Obj.x + sprite_get_width(spriteToUse)*scale;
		y = value1Obj.y;
		value2Obj.x = x + sprite_get_bbox_right(spriteToUse)*scale;
	}
	draw_sprite_ext(spriteToUse, 1, x, y, scale, scale, 0, operatorColor, 1)
}
	
if(operator == OPERATOR.EQUAL){
	if(value1Obj != -4)
		value1Obj.scale = scale;
	if(value2Obj != -4)
		value2Obj.scale = scale;
	
	var spriteToUse = spUI_Division;
	
	if(value1Obj != -4 && value2Obj != -4){
		x = value1Obj.x + sprite_get_width(spriteToUse)*scale;
		y = value1Obj.y;
		value2Obj.x = x + sprite_get_bbox_right(spriteToUse)*scale;
	}
	draw_sprite_ext(spriteToUse, 2, x, y, scale, scale, 0, operatorColor, 1)
}

if(draw_check != -4){
	draw_sprite_ext(draw_check, 0, x,y,scale*2,scale*2,0,c_white,1);
}


//draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
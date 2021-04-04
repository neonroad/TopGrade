/// @description  

if(tutorial_chapter == 0){
	var text = "---";
	
	if(tutorial_step == 0){
		text = "This is a long division problem. We will be covering exactly how to solve this kind of problem.";
		
	}
	
	else if(tutorial_step == 1){
		text = "First, let's identify the different parts of the problem.";
	}
	
	else if(tutorial_step == 2){
		text = "This is the DIVISION OPERATOR. It tells us that we are doing a DIVISION PROBLEM!";
		operator.operatorColor = c_orange;
	}

	else if(tutorial_step == 3){
		text = "This is the DIVIDEND. This is the number that we are actually trying to solve.";
		number_2.numColor = c_purple;
	}

	else if(tutorial_step == 4){
		text = "This is the DIVISOR. This is the number we are reducing the DIVIDEND by!";
		number_1.numColor = c_lime;
	}
	
	else if(tutorial_step == 5){
		text = "Let's practice with what we know so far.";
	}
	
	else if(tutorial_step == 6){
		text = "CLICK on the DIVIDEND.";
		operator.operatorColor = c_white;
		number_1.numColor = c_white;
		number_2.numColor = c_white;
		number_2.selectable = true;
		number_2.correct_answer = true;
		number_1.selectable = true;
		if(number_2.draw_check != spUI_Correct)
			continue_tutorial = false;
		else
			continue_tutorial = true;
	}
	
	else if(tutorial_step == 7){
		text = "CLICK on the DIVISOR.";
		
		if(!debounce){
			number_1.draw_check = -4;
			number_2.draw_check = -4;
			number_2.correct_answer = false;
			number_1.correct_answer = true;
			debounce = true;
		}
		
		if(number_1.draw_check != spUI_Correct)
			continue_tutorial = false;
		else
			continue_tutorial = true;
		
	}
	
	else if(tutorial_step == 8){
		text = "Good! Let's do it one more time, just to be sure...";
		number_1.draw_check = -4;
		number_2.draw_check = -4;
		number_2.selectable = false;
		number_1.selectable = false;
	}
	
	else if(tutorial_step == 9){
		if(!debounce){
			number_1.numberToDisplay = 4;
			number_2.numberToDisplay = 444;
			debounce = true;
		}
		text = "CLICK on the DIVISOR.";
		
		number_2.selectable = true;
		number_1.selectable = true;
		
		number_2.correct_answer = false;
		number_1.correct_answer = true;
		
		if(number_1.draw_check != spUI_Correct)
			continue_tutorial = false;
		else
			continue_tutorial = true;
		
	}
	
	else if(tutorial_step == 10){
		text = "CLICK on the DIVIDEND.";
		
		if(!debounce){
			number_1.draw_check = -4;
			number_2.draw_check = -4;
			number_1.correct_answer = false;
			number_2.correct_answer = true;
			debounce = true;
		}
		
		if(number_2.draw_check != spUI_Correct)
			continue_tutorial = false;
		else
			continue_tutorial = true;
	}
	
	else if(tutorial_step == 11){
		text = "Great! These terms will be used throughout the session, so it is important you remember them.";
		number_1.draw_check = -4;
		number_2.draw_check = -4;
		number_2.selectable = false;
		number_1.selectable = false;
	}
	
	else if(tutorial_step == 12){
		tutorial_chapter++;
		tutorial_step = 0;
		room_goto(rmTutorialStart1);
	}

}
	
else if(tutorial_chapter == 1){
	var text = "---";
	
	if(tutorial_step == 0){
		text = "Let's begin dividing!";
		quotient.visible = false;
		scratch_numbers.visible = false;
		scratch_numbers_2.visible = false;
	}
	else if(tutorial_step == 1){
		text = "First, let's try reducing the DIVIDEND by the DIVISOR.";
		
	}
	
	else if(tutorial_step == 2){
		text = "Let's take the DIVIDEND digit-by-digit.";
		number_2.numColor = c_lime;
	}
	
	else if(tutorial_step == 3){
		text = "The first digit on the DIVIDEND is 1.";	
	}
	
	else if(tutorial_step == 4){
		text = "2 cannot be put into 1, so we will add on the next digit.";	
		number_1.numColor = c_aqua;
	}
	
	else if(tutorial_step == 5){
		text = "Now we have 16 to work with, which CAN be reduced by 2!";	
	}

	else if(tutorial_step == 6){
		text = "Let's mark the answer of what we've got so far up on top.";
		number_1.numColor = c_white;
		number_2.numColor = c_white;
		quotient.numberToDisplay = 8;
		quotient.visible = true;
	}
	
	else if(tutorial_step == 7){
		text = "Now, to reduce the digits by our answer multiplied by the DIVISOR.";
		number_1.numColor = c_orange;
		quotient.numColor = c_orange;
	}
	
	else if(tutorial_step == 8){
		text = "We'll put it down here.";
		scratch_numbers.visible = true;
		scratch_numbers.numColor = c_orange;
	}

	else if(tutorial_step == 9){
		text = "Now, let's subtract the digits we used in the DIVIDEND with our newly added number.";
		number_1.numColor = c_white;
		quotient.numColor = c_white;
		number_2.numColor = c_purple;
		scratch_numbers.numColor = c_purple;
	}
	
	else if(tutorial_step == 10){
		text = "16-16 = 0. We'll keep the answer down here as well.";
		scratch_numbers_2.visible = true;
		scratch_numbers_2.numColor = c_purple;
		scratch_numbers.numColor = c_white;
	}
	
	else if(tutorial_step == 11){
		text = "Now, we use the number we got to replace the digits we reduced.";
		scratch_numbers_2.numColor = c_lime;
		scratch_numbers.numColor = c_white;
	}

	else if(tutorial_step == 12){
		text = "Pay attention to what happens!";
		scratch_numbers_2.numColor = c_lime;
		number_2.numColor = c_white;
	}
	
	else if(tutorial_step == 13){
		text = "Keep your eye on the DIVIDEND!";
		scratch_numbers_2.visible = false;
		scratch_numbers.numColor = c_lime;
		scratch_numbers.numberToDisplay = 00;
	}
	else if(tutorial_step == 14){
		text = "And just like that, we've reduced the DIVIDEND!";
		scratch_numbers.visible = false;
		scratch_numbers.numColor = c_white;
		number_2.numColor = c_lime;
		number_2.numberToDisplay = 8;
	}	
	else if(tutorial_step == 15){
		text = "If there was any number other than 0 left over, we'd replace our digits with it instead.";	
		number_2.numColor = c_white;
	}
	else if(tutorial_step == 16){
		text = "We've succesfully completed a cycle! Now let's do it one more time to finish it off.";
	}
	
	else if(tutorial_step == 17){
		text = "How many times can 8 be reduced by 2?";
		number_2.numColor = c_lime;
		number_1.numColor = c_teal;
		
	}	
	
	else if(tutorial_step == 18){
		text = "The answer, 4, will be added to the quotient up top.";
		number_1.numColor = c_white;
		number_2.numColor = c_white;
		quotient.numColor = c_white;
		quotient.numberToDisplay = 84;
	}
	
	else if(tutorial_step == 19){
		text = "Now we can reduce the answer within by multiplying the quotient and divisor.";
		number_1.numColor = c_red;
		quotient.numColor = c_orange;
		number_2.numColor = c_white;
		
	}
	else if(tutorial_step == 20){
		text = "2 times 4 is 8, so we'll put that below.";
		scratch_numbers.visible = true;
		scratch_numbers.numColor = c_lime;
		quotient.numColor = c_white;
		scratch_numbers.numberToDisplay = 8;
	}
	else if(tutorial_step == 21){
		 text = "Now, we subtract these numbers..";
		 number_1.numColor = c_white;
		 scratch_numbers.numColor = c_blue;
		 number_2.numColor = c_blue;
	}
	else if(tutorial_step == 22){
		text = "And end up with 0.";
		scratch_numbers_2.visible = true;
		scratch_numbers_2.numColor = c_maroon;
		number_2.numColor = c_white;
		scratch_numbers.numColor = c_white;
		scratch_numbers_2.x = number_2.x;
	}
	
	else if(tutorial_step == 23){
		text = "We replace those digits of the dividend with what we've got.."
		scratch_numbers_2.visible = false;
		scratch_numbers.numberToDisplay = 0;
		scratch_numbers.numColor = c_maroon;
	}
	else if(tutorial_step == 24){
		text = "And we end up with nothing, or 0, in the dividend!"
		scratch_numbers.visible = false;
		number_2.numberToDisplay = 0;
		number_2.numColor = c_maroon;
	}
	else if(tutorial_step == 25){
		text = "When this happens, we've succesfully completed our long division problem with NO remainders.";
		number_2.numColor = c_white;
	}
	else if(tutorial_step == 26){
		text = "So here is our anwer!";
		quotient.numColor = c_yellow;
	}
	else{
		room_goto(rmCompleteTutorial);
	}
}

if(show_text){
	draw_sprite_ext(spUI_Textbox, 0, x-50,y-100, 1,1,0,c_white,1);
	draw_text_ext(x, y, text, 40, 280);	
}
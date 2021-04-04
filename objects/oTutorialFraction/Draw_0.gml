/// @description  

if(tutorial_chapter == 0){
	var text = "---";
	
	if(tutorial_step == 0){
		text = "This is a fraction division problem.";
		
	}
	
	else if(tutorial_step == 1){
		text = "Before we begin, let's break down the components of a fraction.";
	}
	
	else if(tutorial_step == 2){
		text = "These numbers on top are the NUMERATORs.";
		number_1.numColor = c_orange;
		number_3.numColor = c_orange
	}

	else if(tutorial_step == 3){
		text = "These numbers on the bottom are the DENOMINATORs.";
		number_2.numColor = c_purple;
		number_4.numColor = c_purple;
	}

	else if(tutorial_step == 4){
		text = "Remember those terms as they will be used throughout the lesson.";
	}
	
	else if(tutorial_step == 5){
		text = "Now, let's solve this problem.";
		number_1.numColor = c_white;
		number_2.numColor = c_white;
		number_3.numColor = c_white;
		number_4.numColor = c_white;
	}
	
	else if(tutorial_step == 6){
		text = "Fractional division problems are very simple with these steps:";
	}
	
	else if(tutorial_step == 7){
		text = "First, let's change this division operator to a multiplication operator.";
		
		operator_2.operatorColor = c_red;
		
	}
	
	else if(tutorial_step == 8){
		text = "There! Now, let's focus on the second fraction.";
		operator_2.operator = OPERATOR.MULTIPLICATION;
	}
	
	else if(tutorial_step == 9){
		text = "We are going to FLIP the NUMERATOR and DENOMINATOR.";
		operator_2.operatorColor = c_white;
		number_3.numColor = c_aqua;
		number_4.numColor = c_yellow;
		
	}
	
	else if(tutorial_step == 10){
		text = "Pay attention to these numbers!";
			
	}
	
	else if(tutorial_step == 11){
		text = "The numbers have been flipped!";
		if(!debounce){
			var save = number_4.numberToDisplay;
			var colorSave = number_4.numColor;
			number_4.numberToDisplay = number_3.numberToDisplay;
			number_3.numberToDisplay = save;
			number_4.numColor = number_3.numColor;
			number_3.numColor = colorSave;
			debounce = true;
		}
	}
	
	else if(tutorial_step == 12){
		text = "Now we're working with just a multiplication of fractions.";
		number_3.numColor = c_white;
		number_4.numColor = c_white;
	}
	
	else if(tutorial_step == 13){
		text = "Let's multiply them out and solve the problem!";
	}
	
	else if(tutorial_step == 14){
		tutorial_chapter++;
		tutorial_step = 0;
		room_goto(rmTutorialFraction2);
	}

}
	
else if(tutorial_chapter == 1){
	var text = "---";
	
	if(tutorial_step == 0){
		text = "First, let's look a the NUMERATORs again.";
		number_5.visible = false;
		number_6.visible = false;
	}
	else if(tutorial_step == 1){
		text = "These will be multiplied to determine the NUMERATOR of the quotient.";
		number_1.numColor = c_green;
		number_3.numColor = c_green;
		
	}
	
	else if(tutorial_step == 2){
		text = "2 times 10 is equal to 20, so we will write that on the quotient's NUMERATOR.";
		number_5.numColor = c_green;
		number_5.numberToDisplay = 20;
		number_5.visible = true;
	}
	
	else if(tutorial_step == 3){
		text = "Now, let's look to the DENOMINATORs.";
		number_1.numColor = c_white;
		number_3.numColor = c_white;
		number_5.numColor = c_white;
	}
	
	else if(tutorial_step == 4){
		text = "These will be multiplied to form the DENOMINATOR of our quotient.";	
		number_2.numColor = c_lime;
		number_4.numColor = c_lime;
	}
	
	else if(tutorial_step == 5){
		text = "8 times 5 is 40, so we will write that in our answer's DENOMINATOR.";
		number_6.visible = true;
		number_6.numberToDisplay = 40;
		number_6.numColor = c_lime;
	}

	else if(tutorial_step == 6){
		text = "And just like that, the problem is solved!";
		number_6.numColor = c_white;
		number_2.numColor = c_white;
		number_4.numColor = c_white;
	}
	
	else if(tutorial_step == 7){
		text = "Just remember that fractional division is really just multiplication in disguise!";
		operator_2.operatorColor = c_maroon;
	}
	
	else{
		room_goto(rmCompleteTutorial);
	}
}

if(show_text){
	draw_sprite_ext(spUI_Textbox, 0, x-50,y-100, 1,1,0,c_white,1);
	draw_text_ext(x, y, text, 40, 280);	
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scCreateProblemLongDivision(dividend, divisor){
	numDividend = scCreateNumber(dividend);
	numDivisor = scCreateNumber(divisor);
	opOperator = scCreateOperator(OPERATOR.LONGDIVISION);
	
	opOperator.value1Obj = numDivisor;
	opOperator.value2Obj = numDividend;
	
	var correctAnswer = dividend/divisor;
	show_debug_message(correctAnswer);
	answer1 = scCreateNumber(correctAnswer);
	answer2 = scCreateNumber(abs(correctAnswer + (choose(-1,1) * divisor*(irandom_range(2,3))) ));
	answer3 = scCreateNumber(abs(correctAnswer + (choose(-1,1) * divisor*(irandom_range(4,5))) ));
	answer4 = scCreateNumber(abs(correctAnswer + (choose(-1,1) * divisor*(irandom_range(6,7))) ));
	
	answer1.scale = 0.3;
	answer2.scale = 0.3;
	answer3.scale = 0.3;
	answer4.scale = 0.3;
	
	answer1.selectable = true;
	answer2.selectable = true;
	answer3.selectable = true;
	answer4.selectable = true;
	
	answer1.correct_answer = true;
	
	var answers = ds_list_create();
	ds_list_add(answers, answer1.id, answer2.id, answer3.id, answer4.id);
	ds_list_shuffle(answers);
	
	for (var i = 0; i < ds_list_size(answers); i++) {
		scInitializeNumber(answers[|i]);
		//answers[|i].x = (room_width *0.3) + (i * answers[|i].num_width * 1.5);
		//show_debug_message(answers[|i].num_width);
		answers[|i].y = (room_height*0.6) + (i*answers[|i].num_height * 1.1);
	}
	
	ds_list_destroy(answers);
}
	
function scCreateProblemFractionDivision(numerator1, denominator1, numerator2, denominator2){
	numNumerator1 = scCreateNumber(numerator1);
	numDenominator1 = scCreateNumber(denominator1);
	
	numNumerator2 = scCreateNumber(numerator2);
	numDenominator2 = scCreateNumber(denominator2);
	
	opOperator1 = scCreateOperator(OPERATOR.FRACTION);
	
	opOperator2 = scCreateOperator(OPERATOR.FRACTION);
	
	opOperator1.value1Obj = numNumerator1;
	opOperator1.value2Obj = numDenominator1;
	
	opOperator2.value1Obj = numNumerator2;
	opOperator2.value2Obj = numDenominator2;
	
	
	
	opOperator3 = scCreateOperator(OPERATOR.DIVISION);
	opOperator3.value1Obj = opOperator1;
	opOperator3.value2Obj = opOperator2;
	
	var correctAnswerNum = numerator1 * denominator2;
	var correctAnswerDen = denominator1 * numerator2;
	
	answer1Num = scCreateNumber(correctAnswerNum);
	answer1Den = scCreateNumber(correctAnswerDen);
	opOperatorAnswer1 = scCreateOperator(OPERATOR.FRACTION);
	opOperatorAnswer1.value1Obj = answer1Num;
	opOperatorAnswer1.value2Obj = answer1Den;
	
	
	opOperatorAnswer1.scale = 0.3;
	
	opOperatorAnswer1.selectable = true;
	
	opOperatorAnswer1.correct_answer = true;
	
	
	
	var answers = ds_list_create();
	
	ds_list_add(answers, opOperatorAnswer1.id);
	var extraAnswers = 3;
	for (var i = 0; i < extraAnswers; i++) {
	    var answerNum = scCreateNumber(correctAnswerNum*irandom_range(2,3));
		var answerDen = scCreateNumber(correctAnswerDen*irandom_range(1,3));
		
		var opOperatorAnswer = scCreateOperator(OPERATOR.FRACTION);
		opOperatorAnswer.value1Obj = answerNum.id;
		opOperatorAnswer.value2Obj = answerDen.id;
		
		opOperatorAnswer.scale = 0.3;
		
		opOperatorAnswer.selectable = true;
		ds_list_add(answers, opOperatorAnswer.id);
	}
	
	ds_list_shuffle(answers);
	
	for (i = 0; i < ds_list_size(answers); i++) {
	    answers[|i].x = 100+(i)*(room_width/ds_list_size(answers))
		answers[|i].y = room_height*.8;
		}
	
	ds_list_destroy(answers);
	
}
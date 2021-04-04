// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scCreateOperator(operator){
	switch (operator) {
	    case OPERATOR.LONGDIVISION:
	        var division = instance_create_depth(x,y,depth -10,oOperator);
			division.operator = operator;
			return division.id;
	        break;
		case OPERATOR.FRACTION:
			var fraction = instance_create_depth(x,y,depth-10, oOperator);
			fraction.operator = operator;
			return fraction.id;
			break;
		case OPERATOR.DIVISION:
			var division_expression = instance_create_depth(x,y,depth-10, oOperator);
			division_expression.operator = operator;
			return division_expression.id;
			break;	
		
	}
}
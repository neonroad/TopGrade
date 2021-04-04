/// @description  

if(selectable){
	if(global.buttonHover == id){
		if(room == rmSelection && sprite_index == spUI_ProblemNormal)
			room_goto(rmTestWhole);
		if(room == rmSelection && sprite_index == spUi_ProblemFraction)
			room_goto(rmTestFraction);
	}
}
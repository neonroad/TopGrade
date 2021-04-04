/// @description  

confetti_count--;

var randColor = irandom(90000000);
part_type_color1(particle1,randColor);
part_type_color1(particle2,randColor);
part_type_death(particle1,1,particle2);


part_emitter_region(partSystem, partEmitter, x,x,y,y,ps_shape_line,ps_distr_gaussian);


if(confetti_count > 0)
	part_emitter_stream(partSystem, partEmitter, particle1, 1);
else
	part_emitter_clear(partSystem,partEmitter);
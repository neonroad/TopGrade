/// @description  
partSystem = part_system_create();
partEmitter = part_emitter_create(partSystem);



particle2 = part_type_create();
part_type_sprite(particle2,spPrtcl_confetti,1,0,1);
part_type_size(particle2,1,1,0,0);
part_type_scale(particle2,1,1);
part_type_color1(particle2,255);
part_type_alpha1(particle2,1);
part_type_speed(particle2,0.10,0.20,0,0);
part_type_direction(particle2,245,325,-0.10,20);
part_type_gravity(particle2,0.01,270);
part_type_orientation(particle2,0,0,0,0,1);
part_type_blend(particle2,0);
part_type_life(particle2,60,240);


particle1 = part_type_create();
part_type_sprite(particle1,spPrtcl_stream,1,0,1);
part_type_size(particle1,1,1,0,0);
part_type_scale(particle1,1,1);
part_type_alpha1(particle1,1);
part_type_speed(particle1,4,20,-0.05,0);
part_type_direction(particle1,0,80,0,0);
part_type_gravity(particle1,0.01,270);
part_type_orientation(particle1,90,90,0,0,1);
part_type_life(particle1,60,120);
part_type_death(particle1,1,particle2);




confetti_count = 60;

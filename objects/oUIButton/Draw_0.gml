/// @description
localTimer+= 0.1;

if(animate){
	animateY = 4*sin(localTimer);
	draw_sprite_ext(sprite_index, image_index, x, y+animateY, image_xscale, image_yscale, 0, c_white, 1);
}
else
	draw_self();
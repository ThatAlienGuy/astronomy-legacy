/// @desc draw black bars

if (mode != Trans_MOdE.OFF)
{
	draw_set_color(c_black);
	draw_rectangle(0,0,w,percent*h_half,false);	
	draw_rectangle(0,h,w,h-(percent*h_half),false);	
}
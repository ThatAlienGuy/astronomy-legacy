/// @desc screen share(magnitudes,frames)
///@ arg magnitude sets the strength of the shake (radius in pixels)
///@ arg frames sets the length of the shake in frames (60 = 1 second at 60fps)

with(Ocamera)
{
	if(argument0 > shake_remain)
	{
	shake_magnitude = argument0;
	shake_remain = argument0;
	shake_length = argument1;
	}
}	
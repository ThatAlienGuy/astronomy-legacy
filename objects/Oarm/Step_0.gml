with(Oplayer)
if (hp <=0)
{
instance_destroy(other)
}
if (place_meeting(x+ hsp,y,Owall))
{
hsp = -hsp;
image_xscale = sign(hsp);
}
x = x+hsp+(random_range(-3,3));
y =y+vsp

if (object_exists(Oplayer))
{
	if (x+4 > Oplayer.x) and (x-4 <= Oplayer.x) && (!place_meeting(x,y,Owall))
	{
		vsp = 4
		hsp = 0
	}
}

if (place_meeting(x,y+vsp,Owall))
{
vsp = -3;
}
y = max(ystart,y);
if ( y = ystart) and (vsp = -3) && hsp = 0
{
	hsp = 4;
	vsp = 0;
}
if (vsp > 0) 
{
	image_index = 1;	
}	
else
{
	image_index = 0;
}	
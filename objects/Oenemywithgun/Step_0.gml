vsp = vsp + grv; 

//Do not walk off edges
if (grounded) && (afraidofheights) && (!place_meeting(x + hsp,y +1,Owall))
{
	hsp = -hsp;	
	
}

//Horizontal Collision
if (place_meeting(x+hsp,y,Owall))
{
 while (!place_meeting(x+sign(hsp),y,Owall))
 {
	  	  x = x + sign(hsp);
 }
 hsp = -hsp;
}
x = x + hsp;

//vertical Collision
if (place_meeting(x,y+vsp,Owall))
{
 while (!place_meeting(x,y+sign(vsp),Owall))
 {
	  	  y = y + sign(vsp);
   }
   vsp = 0;
}
y = y + vsp;

//Animation
if (!place_meeting(x,y+1,Owall))
{
	grounded = true;
	sprite_index = Senemy; 	
	image_speed = 0;
	if (sign (vsp) > 0) image_index = 1 else image_index = 0;
}
else
{
grounded = true;	
image_speed = 1;
if (hsp == 0)
{
sprite_index = Senemy; 
}
else
{
	sprite_index = SenemywithgunR; 
}
}

if (hsp != 0) image_xscale = sign(hsp) * size;
image_yscale =  size;


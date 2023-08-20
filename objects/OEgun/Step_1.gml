x = owner.x;
y = owner.y+10;

image_xscale = abs(owner.image_xscale);
image_yscale = abs(owner.image_yscale);

if (image_angle > 90) && (image_angle < 270)
{
	image_yscale = -1;
}
else
{
	image_yscale = 1;
}
if (instance_exists(Oplayer))
{
	if (Oplayer.x < x) image_yscale = -image_yscale;
	if(point_distance(Oplayer.x,Oplayer.y,x,y) < 600)
	{
		image_angle = point_direction(x,y,Oplayer.x,Oplayer.y);
		countdown--
		if (countdown <=0)
		{
			countdown = countdownrate ;
			if (!collision_line(x,y,Oplayer.x,Oplayer.y,Owall,false,false))
			audio_sound_pitch(Sn_shot,choose(0.8,1,1.2));
	audio_play_sound(Sn_shot,5,false);
	with (instance_create_layer(x+10,y,"Bullet",OEbullet))
   {
	speed = 3;
	direction = other.image_angle + random_range(-3,3);
	image_angle = direction;
image_yscale = -1;
image_xscale = -1;
   }
			
			
			
		}	
		
	}
	
}	

if (hp <= 0)
{
	with(instance_create_layer(x,y,layer,OenemyD))
	{
		direction = other.hitfrom;
		hsp = lengthdir_x(6,direction);
		vsp = lengthdir_y(4,direction)-2;
		if (sign(hsp) != 0) image_xscale = sign(hsp) * other.size;
		image_yscale = other.size
	}
	
	with (mygun) instance_destroy();		
	instance_destroy();
}
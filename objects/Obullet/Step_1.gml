if (place_meeting(x,y,pShootable))
{
	with (instance_place(x,y-10,pShootable))
	{
		hp--;
		flash = 3;
		hitfrom = other.direction;
	}	
	instance_destroy();	
}	

	
	
if (place_meeting(x,y,Owall)) && (image_index !=0) instance_destroy();





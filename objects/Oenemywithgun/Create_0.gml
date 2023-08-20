vsp = 0;
grv = 0.3;
walksp = 3;
hsp = walksp;
hp = 4;
flash = 0;
hitfrom = 0;
if (hasweapn) 
{
	mygun = instance_create_layer(x,y,"Gun",OEgun)	
	with (mygun)
	{
		owner = other.id
	}	
}	
else mygun = noone;
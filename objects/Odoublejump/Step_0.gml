with(Oplayer)
{
if (other.PickedUp = true)
{
    other.x = x + other.wasd;
    other.y = y 
}
}
if (PickedUp == true)
{
with(Oplayer)
{
	if (image_xscale == 1)
	{
		other.wasd = -8;
		other.image_xscale = -1;
	}
	else
	{
		other.wasd = 8;
		other.image_xscale = 1;
	}
}
}

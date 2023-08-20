 if (point_in_circle(Oplayer.x,Oplayer.y,x,y,64)) && (!instance_exists(Otext))
{ 
	with (instance_create_layer(x,y-64,layer,Otext))
	{
		text = other. text;
		length = string_length(text);
	}	

	with (Ocamera)
	{
		follow = other.id;
	}
}
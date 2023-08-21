/// @description here update camera

// update destination
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;	

	if ((follow).object_index == OPdead)
	{
		x = xTo;	
		y = yTo;
	}	
} 

// update object position
x += (xTo-x) / 5;
y += (yTo-y) / 5;

// keep camera center inside room
x = clamp(x,view_w_half + buffer,room_width-view_w_half - buffer);
y = clamp(y,view_h_half + buffer,room_height-view_h_half - buffer);
// screen shake
x += random_range(-shake_remain,shake_remain);
y += random_range(-shake_remain,shake_remain);
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));
// update camera view
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);

if (layer_exists("SBackground7"))
{
	layer_x("SBackground7",x/2);
}	

if (layer_exists("SBackground6"))
{
	layer_x("SBackground6",x/4);
}	

if (layer_exists("SBackground5"))
{
	layer_x("SBackground5",x/6);
}	

if (layer_exists("SBackground4"))
{
	layer_x("SBackground4",x/7);
}	

if (layer_exists("SBackground3"))
{
	layer_x("SBackground3",x/8);
}	

if (layer_exists("SBackground2"))
{
	layer_x("SBackground2",x/9);
}	

if (layer_exists("SBackground1"))
{
	layer_x("SBackground1",x/10);
}	








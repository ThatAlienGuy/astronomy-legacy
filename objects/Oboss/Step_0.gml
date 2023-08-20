with(Oplayer)
if (hp <=0)
{
instance_destroy(other)
}

if boss_cool_Down = 0
{
	with (instance_create_layer(x,y+30,"Arms",Oarm))
   {
   }
	boss_cool_Down = boss_cool_Down + phase;
}

boss_cool_Down--;


with (Oplayer)
{
if (other.x - other.X1 < x) and (other.x + other.X2 >= x)
{
other.spawner_cool_down--
other.spawner_finish--
}
}
if (spawner_cool_down = 0)
	{
        instance_create_layer(x, y,"Enemy",enemy);
		spawner_cool_down = new_spawn;
	}
spawner_cool_down= max(spawner_cool_down,0);
spawner_finish = max(spawner_finish,0);




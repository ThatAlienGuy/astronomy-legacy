if (hp <= 0)
{
    room_goto_next();
	instance_destroy();
}
if (hp <= 60)
{
	sprite_index = SBoss2
	phase = 70
}
if (hp <= 20)
{
	sprite_index = SBoss3
	phase = 30
}
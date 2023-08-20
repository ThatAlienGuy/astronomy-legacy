with (Oplayer)
{
	if (detected = other.zeb2) and (other.door = true)
{
	other.open_cooldown--
}
if (detected = other.zeb2) and (other.door = true) and (other.open_cooldown < 0)
{
	instance_destroy(other)
}
}
open_cooldown = max(open_cooldown,0)
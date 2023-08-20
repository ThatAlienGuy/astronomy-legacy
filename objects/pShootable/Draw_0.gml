 draw_self();

if (flash > 0)
{
		flash = flash -1;
	shader_set(shWhite);
	draw_self();
	shader_reset();
}
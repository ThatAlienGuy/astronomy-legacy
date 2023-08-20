Title_Anim_Delay--;
if (Title_Anim_Delay < 0) && (Title_Dir_y == 0)
{
	y = y + 4;
	Title_Anim_Delay = 60;
	Title_Dir_y = 1;
}

if (Title_Anim_Delay < 0) && (Title_Dir_y == 1)
{
	y = y - 4;
	Title_Anim_Delay = 60;
	Title_Dir_y = 0;
}






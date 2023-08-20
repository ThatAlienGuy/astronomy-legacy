/// @desc progress the transition

if (mode != Trans_MOdE.OFF)
{
	if(mode == Trans_MOdE.INTRO)
	{
		percent = max(0,percent-0.05);
	}
	else
	{
		percent = min(1.3,percent+0.05);
	}
	
	if (percent== 1.3) or (percent == 0)
	{
		switch (mode)
		{
			case Trans_MOdE.INTRO:
			{
			mode = Trans_MOdE.OFF	
				break;	
			}
			case Trans_MOdE.NEXT:
			{
			mode = Trans_MOdE.INTRO;
			room_goto_next();
				break;
			}
					case Trans_MOdE.GOTO:
			{
				mode = Trans_MOdE.INTRO;
			room_goto(target)
				break;			
			}
		case Trans_MOdE.RESTART:
		{
			game_restart();
			break;
		}				
	}				
}			
}



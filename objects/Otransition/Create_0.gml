/// @desc variables and mode setup

w = display_get_gui_width();
h = display_get_gui_height();
h_half = h * 0.5;
enum Trans_MOdE
{
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO,
}
mode = Trans_MOdE.INTRO;
percent = 1;
target = room;

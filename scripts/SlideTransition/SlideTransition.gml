/// @desc slide transition (mode, targetroom)
/// @arg mode sets transitions mode betwen next, restart and goto.
/// @arg Target sets target room when using the goto mode.

with (Otransition) 
{
	mode = argument[0]
	if (argument_count > 1) target = argument[1];
}

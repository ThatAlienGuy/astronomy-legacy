/// @desc Move to the next room

with (Oplayer)
{
	if(hascontrol)
	{
		hascontrol = false;
		SlideTransition(Trans_MOdE.GOTO,other.target);
	}
}
/// @desc progress text
letters += spd; 
text_current = string_copy(text,1,floor(letters));

draw_set_font(Fsign);
if (h == 0) h = string_height(text);
w = string_width(text_current);

// Destroy When Done 
if (letters >= length) && (keyboard_check_pressed(vk_shift))
{
	instance_destroy();	
	with (Ocamera) follow = Oplayer;
}	
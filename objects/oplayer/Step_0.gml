 
//Get Player Input
if(hascontrol)
{
	key_left = keyboard_check (vk_left) or keyboard_check(ord("A"));
	key_right = keyboard_check (vk_right) or keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed (vk_space);
	key_sheild = keyboard_check_pressed (vk_shift);
	
	
	if key_right or key_left or key_jump
	{
	controller = 0;
	}

	if (abs(gamepad_axis_value(0,gp_axislh)) > 0.2)
	{
			key_left = abs(min(gamepad_axis_value(0,gp_axislh),0));
			key_right = max(gamepad_axis_value(0,gp_axislh),0);	
		controller = 1;
	}
	
	if (gamepad_button_check_pressed(0,gp_face1))
	{
		key_jump = 1;
		controller = 1;
	}
}
else
{
	key_right = 0
	key_left = 0
	key_jump = 0
}
//Calculate Movement
var move = key_right - key_left;

//hsp = move * walksp;

//This if code I added make slide effect
if (move != 0)
{
	hsp = move * walksp
}
hsp = 0.7 * hsp;



vsp = vsp + grv;

if   place_meeting(x,y,Odoublejump) && place_meeting(x,y+1,Owall)
{jumps = jumps_max}
else if place_meeting(x,y+1,Owall)
{    jumps = base_jump }
if   (key_jump) && (jumps > 0)
{
    jumps--;
	vsp = -canjump
}

//Horizontal Collision
if (place_meeting(x+hsp,y,Owall))
{
 while (!place_meeting(x+sign(hsp),y,Owall))
 {
	  	  x = x + sign(hsp);
 }
 hsp = 0;
}

x = x + hsp;

//vertical Collision
if (place_meeting(x,y+vsp,Owall))
{
 while (!place_meeting(x,y+sign(vsp),Owall))
 {
	  	  y = y + sign(vsp);
   }
   vsp = 0;
}
y = y + vsp;

//Animation

if (!place_meeting(x,y+1,Owall))
{
    sprite_index = SplayerA;
    image_speed = 0;
    if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
    image_speed = 1;
    if (hsp == 0)
    {
        sprite_index = Splayer;
    }
    else
    {
        sprite_index = SplayerR;
    }
}
//Animation with Shield
if (hp > 3)
{
if (!place_meeting(x,y+1,Owall))
{
    sprite_index = SplayerSA;
    image_speed = 0;
    if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
    image_speed = 1;
    if (hsp == 0)
    {
        sprite_index = SplayerS;
    }
    else
    {
        sprite_index = SplayerSR;
    }
}
}
canjump = 7;
// sheild stuff
if (shield = 1)
{	
if (key_sheild) and shields_cool_Down = 0
{
	image_index = 1
	shields_cool_Down = shields_cool_Down + 400;
	hp = hp + 3
}
shields_cool_Down--;
shields_cool_Down = max(shields_cool_Down,0);
if (shields_cool_Down = 100)
{
	image_index = 0
	hp = 3
}
}
hp = min(hp,12)

if (hp <= 0)
{
	with (Ogun) instance_destroy();
	instance_change(OPdead,true);
}	
//arm damage
if (place_meeting(x,y,Oarm)) and (hit_cool_down = 0)
	{
		hp = hp - 1;
		hit_cool_down = hit_cool_down + 120;
	}
hit_cool_down--;
hit_cool_down = max(hit_cool_down,0)
//3esam yosef damage
if (place_meeting(x,y,Oenemy)) and (hit_cool_down = 0)
	{
		hp = hp - 1;
		hit_cool_down = hit_cool_down + 120;
	}
hit_cool_down--;
hit_cool_down = max(hit_cool_down,0)
if instance_exists(Ogun)
{image_xscale = Ogun.image_yscale}
else
{if (hsp != 0) image_xscale = sign(hsp);}
//dead restart


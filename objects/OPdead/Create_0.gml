hsp = 0;
vsp = 0;
grv = 0.2;
done = 0;

image_speed = 0;
image_index = 0;
ScreenShake(1,5);
audio_play_sound(sn_death,10,false);
game_set_speed(30,gamespeed_fps);
with (Ocamera) follow = other.id;
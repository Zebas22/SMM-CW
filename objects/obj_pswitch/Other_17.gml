audio_play_sound(snd_warning, 0, false)
instance_create(x, y, obj_pswitch_press)
with (obj_levelmanager)
{
    pwarning = 0
    alarm[10] = 600
    event_user(1)
}
instance_destroy()

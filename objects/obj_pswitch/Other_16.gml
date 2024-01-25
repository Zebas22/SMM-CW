if (press == 0)
{
    audio_play_sound(snd_warning, 0, false)
    sprite_index = spr_pswitch_press
    image_index = global.apariencia
    image_speed = 0
    with (obj_levelmanager)
    {
        pwarning = 0
        alarm[10] = 600
        event_user(1)
    }
    press = 1
    alarm[1] = 10
}


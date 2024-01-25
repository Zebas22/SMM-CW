audio_play_sound(scr_snd_powerdown(), 0, false)
global.hammerbro = 0
with (instance_create((x - 16), y, obj_hammerbro_res))
{
    wings = other.wings
    paracaidas = other.paracaidas
}
instance_destroy()



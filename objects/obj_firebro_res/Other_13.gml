audio_play_sound(scr_snd_powerup(), 0, false)
global.hammerbro = 1
with (instance_create((x + 16), y, obj_sledgebro_res))
{
    wings = other.wings
    paracaidas = other.paracaidas
}
instance_destroy()



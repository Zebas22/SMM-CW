var icecoin;
audio_stop_sound(scr_snd_bump())
audio_play_sound(scr_snd_bump(), 0, false)
instance_create((x - 8), y, obj_smoke)
icecoin = collision_rectangle((bbox_left - 2), (bbox_top - 2), (bbox_right + 2), (bbox_bottom + 2), obj_icecoin, 0, 0)
if icecoin
{
    with (icecoin)
        event_user(1)
    event_user(0)
}
instance_destroy()


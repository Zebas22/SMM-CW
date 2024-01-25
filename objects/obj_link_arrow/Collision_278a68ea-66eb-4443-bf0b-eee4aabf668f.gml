if (other.object_index != obj_grinder && other.hardness < 99 && other.visible == true)
{
    audio_stop_sound(scr_snd_kick())
    audio_play_sound(scr_snd_kick(), 0, false)
    if (other.object_index == obj_bobomb || other.object_index == obj_bobomb_ready)
    {
        with (instance_create((other.x - 8), other.y, obj_bobomb_hold))
        {
            if (__background_get( e__BG.Index, 0 ) == scr_bg_underwater())
                vspeed = -0.5
            else
                vspeed = -1
            if ((obj_mario.bbox_left + (bbox_right / 2)) > (bbox_left + (bbox_right / 2)))
            {
                hspeed = -1.2
                direct = -1
            }
            else
            {
                hspeed = 1.2
                direct = 1
            }
        }
        with (other)
            instance_destroy()
        event_user(0)
    }
    else if (other.object_index != obj_buzzybeetle && other.object_index != obj_buzzybeetle_b)
    {
        with (other)
        {
            with (instance_create(((round((bbox_left + bbox_right)) / 2) - 8), y, obj_score))
                event_user(0)
            event_user(0)
        }
    }
    event_user(1)
}
else
    event_user(0)



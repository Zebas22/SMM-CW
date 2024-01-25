if (ready == 0)
{
    if (global.keys < instance_number(obj_door_lock))
    {
        audio_play_sound(snd_SMB3_getkey, 0, false)
        with (instance_create(x, y, obj_smoke))
        {
            image_speed = 0.21
            sprite_index = other.sparkles
        }
        global.keys++
        followers = (global.keys + 1)
        if (!instance_exists(obj_key_fallow))
            instance_create(x, y, obj_key_fallow)
        else
        {
            with (obj_key_fallow)
                followers = other.followers
        }
        instance_destroy()
    }
    else
        event_user(0)
}


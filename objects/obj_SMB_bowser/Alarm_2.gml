audio_play_sound(snd_SMB3_bowser_fire, 0, false)
if (direct == 1)
{
    with (instance_create((x + 29), (y - 2), obj_bowser_fire))
    {
        hspeed = (1.5 * other.direct)
        direct = other.direct
        decender = choose(0, 1, 2, 1, 0, 2)
    }
}
else
{
    with (instance_create((x - 29), (y - 2), obj_bowser_fire))
    {
        hspeed = (1.5 * other.direct)
        direct = other.direct
        decender = choose(0, 1, 2, 1, 0, 2)
    }
}
sprite_index = spr_SMB_bowser
image_speed = 0.1
alarm[1] = choose(90, 90, 60, 90)


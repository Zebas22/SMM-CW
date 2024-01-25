if (instance_exists(obj_mario_transform2) || instance_exists(obj_frozenmario))
    exit
if (global.powerup != 0 && (collision_rectangle(other.bbox_left, (other.bbox_top - 16), other.bbox_right, other.bbox_top, obj_solid, 1, 0) || collision_rectangle(other.bbox_left, (other.bbox_top - 16), other.bbox_right, other.bbox_top, obj_physicssolid, 1, 0) || collision_rectangle(other.bbox_left, (other.bbox_top - 16), other.bbox_right, other.bbox_top, obj_solidphy, 1, 0) || collision_rectangle(other.bbox_left, (other.bbox_top - 16), other.bbox_right, other.bbox_top, obj_bullebill_base, 1, 0)))
{
    if (other.holding == 2 && global.apariencia == 2)
    {
        other.isduck = 1
        other.isduckhold = 1
    }
    else
        other.isduck = 1
}
with (instance_create(x, y, obj_score))
    event_user(3)
if (global.powerup == 0)
{
    audio_stop_sound(scr_snd_powerup())
    audio_play_sound(scr_snd_powerup(), 0, false)
    if instance_exists(obj_mario)
    {
        with (instance_create(0, 0, obj_mario_transform2))
        {
            c_powerup = 1
            small = 1
            sprite_powerup = other.sprite_index
        }
    }
}
else
{
    audio_stop_sound(scr_snd_powerup())
    audio_play_sound(scr_snd_powerup(), 0, false)
}
instance_destroy()


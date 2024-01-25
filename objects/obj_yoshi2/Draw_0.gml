if instance_exists(obj_mario)
{
    if (turning != 0)
    {
        event_user(2)
        draw_sprite_ext(sprite_index, -1, (round(x) + obj_mario.shake), round(y), direct, 1, 0, c_white, 1)
    }
    else
    {
        draw_sprite_ext(sprite_index, -1, (round(x) + obj_mario.shake), round(y), direct, 1, 0, c_white, 1)
        event_user(2)
    }
}

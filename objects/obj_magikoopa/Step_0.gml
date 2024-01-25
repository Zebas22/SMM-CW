if (ready == 0)
{
    if (instance_exists(obj_mario) && obj_mario.x > xmin && obj_mario.x < xmax)
    {
        sprite_index = s_magikoopa_disappear
        image_index = 0
        image_speed = 0.4
        with (instance_create(x, y, obj_smoke))
        {
            sprite_index = spr_magikoopa_effect
            image_speed = 0.4
            depth = (other.depth + 1)
        }
        hardness = 100
        stomp = -1
        ready = 1
    }
}
else if (ready == 2)
{
    visible = true
    sprite_index = s_magikoopa_appear
    image_index = 0
    image_speed = 0.4
    with (instance_create(x, y, obj_smoke))
    {
        sprite_index = spr_magikoopa_effect
        image_speed = 0.4
        depth = (other.depth + 1)
    }
    ready = 1
}
if ((!instance_exists(obj_mario)) || obj_mario.x < x)
    direct = -1
else
    direct = 1
if (ready == 1)
    event_user(4)
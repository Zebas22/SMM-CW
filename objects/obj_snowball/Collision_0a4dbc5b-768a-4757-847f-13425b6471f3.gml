var frozen = instance_create(other.x, other.y, obj_enemyfrozen)
if (other.sprite_height < 30 && other.visible == true)
{
    frozen.sprite = other.sprite_index
    frozen.index = other.image_index
    frozen.enemy = other.object_index
    frozen.direct = other.direct
    if (other.vspeed != 0)
    {
        frozen.enable_gravity = 0
        with (frozen)
        {
            alarm[4] = 120
            alarm[6] = 180
        }
    }
    with (other)
        instance_destroy()
    event_user(0)
}



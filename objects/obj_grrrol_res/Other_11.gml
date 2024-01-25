with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.grrrol = 0
instance_create(x, (y + 16), obj_thwomp_res)
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == obj_grrrol_res)
        {
            obj = obj_thwomp_res
            obj_draw = 132
        }
    }
}
instance_destroy()

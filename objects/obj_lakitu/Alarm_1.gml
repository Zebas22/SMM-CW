var sprite,spd_h, spd_v;
if (sprout == 0)
{
    with (instance_create(x, (y - 8), obj_spiny_thrown))
    {
        if place_meeting(x, y, obj_solid)
            instance_destroy()
        else
        {
            vspeed = -3.5
            hspeed = ((abs(other.hspeed) + 1.4) * other.direct)
            direct = other.direct
        }
    }
    if (global.apariencia == 2)
    {
        image_speed = 0.15
        alarm[2] = 1
    }
    else
        alarm[2] = 10
}
else
{
    sprite = scr_constant_get_sprite(sprout)
	if wings == 0{
	if count < 3{
    if (sprout == -1)
    {
        for (i = 0; i < 10; i++)
        {
        with (instance_create(x, (y - 8), obj_coin_pow))
        {
             spd_h = random_range(-2, 2)
             spd_v = random_range(0.5, 1.4)
            vspeed = (-(spd_v - (2.5 * other.swimming)))
            hspeed = ((abs(other.hspeed) + spd_h) * other.direct)
            }
        }
		 for (i = 0; i < 1; i++)
        {
		count ++
		}
    }
	}
	}
	else if wings == 1{
		if (sprout == -1)
			{
        for (i = 0; i < 10; i++)
        {
        with (instance_create(x, (y - 8), obj_coin_pow))
        {
             spd_h = random_range(-2, 2)
             spd_v = random_range(0.5, 1.4)
            vspeed = (-(spd_v - (2.5 * other.swimming)))
            hspeed = ((abs(other.hspeed) + spd_h) * other.direct)
            }
        }
    }
}
    else
    {
        object = scr_sprite_make_object(x, (y - 8), sprite)
        with (object)
        {
            if place_meeting(x, y, obj_solid)
                instance_destroy()
            else
            {
                if (object_index == obj_cheepcheep || object_index == obj_cheepcheep2 || object_index == obj_mushroom || object_index == obj_1up || object_index == obj_star || object_index == obj_hen_mushroom || object_index == obj_megamushroom)
                    alarm[10] = -1
                if (object_index == obj_cheepcheep || object_index == obj_cheepcheep2)
                    direct = other.direct
                if (object_index == obj_1up)
                    alarm[11] = 4
                vspeed = (-(3.5 - (2.5 * other.swimming)))
                hspeed = ((abs(other.hspeed) + 1.4) * other.direct)
            }
        }
        if (global.apariencia == 2)
        {
            image_speed = 0.15
            alarm[2] = 1
        }
        else
            alarm[2] = 10
    }
}
if (global.apariencia == 2)
{
    image_speed = 0.15
    alarm[2] = 1
}
else
    alarm[2] = 10


var v;
if ready
{
    if (global.apariencia == 3)
        v = 0
    else
        v = 16
    if (color == 0)
    {
        with (instance_create((x - 1), (y + v), obj_yoshi_abandon)){
			sprite_index = spr_yoshi_wait
            vspeed = -1.5
			wings = other.wings
		}
    }
    else if (color == 1)
    {
        with (instance_create((x - 1), (y + v), obj_yoshi_abandon))
        {
            color = 1
            sprite_index = spr_yoshi_wait_red
            vspeed = -1.5
        }
    }
    else if (color == 2)
    {
        with (instance_create((x - 1), (y + v), obj_yoshi_abandon))
        {
            color = 2
            sprite_index = spr_yoshi_wait_blue
            vspeed = -1.5
        }
    }
    instance_destroy()
}


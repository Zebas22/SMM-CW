var sprite;
    if (direction == 90 || direction == 270)
        sprite = scr_marioidle()
    else
        sprite = scr_mariowalk()
    if (holding == 0)
        sprite_index = sprite
    else
        sprite_index = scr_mariohold()
    if (vspeed != 0)
    {
        image_speed = 0
        image_index = 0
    }
    else
        image_speed = 0.15



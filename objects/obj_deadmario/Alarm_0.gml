    image_speed = 0.15
    gravity = 0.2
    vspeed = -3.5
if (global.apariencia < 2)
    alarm[1] = 160
else
    alarm[1] = 120
if (global.nm_play != 0)
    instance_create(x, y, obj_icon_dead)


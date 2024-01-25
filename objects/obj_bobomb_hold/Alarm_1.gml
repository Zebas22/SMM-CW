if instance_exists(obj_player_warp)
{
    if (global.apariencia == 3)
        image_speed = 0.5
    else
        image_speed = 0.1
    alarm[2] = 240
    alarm[1] = 300
}
else
{
    instance_create((x - 8), y, obj_explosion)
    instance_destroy()
}

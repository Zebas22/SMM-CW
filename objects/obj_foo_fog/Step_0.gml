friction = 0.005
player = collision_rectangle((bbox_left - 2), (bbox_top - 2), (bbox_right + 2), (bbox_bottom + 2), obj_mario, 1, 0)
if (player && player.stompstyle > 0)
{
    alpha -= 0.05
    if (alpha < 0.05)
        instance_destroy()
}
else{
    alpha -= 0.0025
    if (alpha < 0.0025)
        instance_destroy()
}
angle -= (1 * hspeed)
scale += 0.02
if (scale > 1)
    scale = 1


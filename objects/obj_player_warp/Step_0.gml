var altura, mario2;
if (destruir == 1)
{
    if (global.powerup == 0)
        altura = 17
    else
        altura = 27
    if ((vspeed > 0 && y > (ystart + 32) && direction == 270) || (vspeed < 0 && y < (ystart - altura) && direction == 90) || (hspeed < 0 && x < (xstart - 24) && direction == 180) || (hspeed > 0 && x > (xstart + 24) && direction == 0))
        instance_destroy()
    if ((direction == 90 || direction == 270) && x != pos_center)
        x += ((pos_center - x) * 0.4)
}
if (salir == 1)
{
    if ((vspeed > 0 && y > (ystart + 20) && direction == 270) || (vspeed > 0 && direction == 270 && collision_rectangle((x - 8), (y + 32), (x + 8), (y + 34), obj_solidtop, 0, 0) && y > (ystart + 16)) || (vspeed < 0 && y < (ystart - 32) && direction == 90) || (hspeed < 0 && x < (xstart - 24) && direction == 180) || (hspeed > 0 && x > (xstart + 24) && direction == 0))
    {
        mario2 = obj_mario
        with (instance_create(x, y, mario2))
        {
            if (other.direction == 180)
                direct = -1
            if (global.powerup != 0 && (other.direction == 90 || other.direction == 270) && collision_rectangle((other.x - 8), other.y, (other.x + 8), (other.y + 8), obj_solid, 0, 0))
            {
                if (holding == 2 && global.apariencia == 2)
                    isduckhold = 1
                isduck = 1
            }
            holding = other.holding
            helmet = other.helmet
            global.warp_item = -4
        }
        instance_destroy()
    }
}
if (canmove == 1)
{
    if (direction == 90 || direction == 270)
        speed = 1
    else
        speed = 0.6
}
if (hspeed > 0)
    direct = 1
else if (hspeed < 0)
    direct = -1
if (global.effect_star == 1){
switch global.apariencia
{
    case 3:
        if (cp_cont == 0)
        {
            flashAlpha -= 0.05
            if (flashAlpha < 0.6)
            {
                cp_cont = 1
                if (cp < 1)
                    cp++
                else
                    cp = 0
            }
        }
        else
        {
            flashAlpha += 0.05
            if (flashAlpha > 0.8)
                cp_cont = 0
        }
        break
    default:
        if (cp_cont == 0)
        {
            flashAlpha -= 0.15
            if (flashAlpha < 0.3)
            {
                cp_cont = 1
                if (cp < 2)
                    cp++
                else
                    cp = 0
            }
            break
        }
        else
        {
            flashAlpha += 0.15
            if (flashAlpha > 0.9)
                cp_cont = 0
        }
}
blend_star = color[cp]
}

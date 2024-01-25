event_inherited()
switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_pswitch
        image_speed = 0.15
        break
    case 1:
        sprite_index = spr_SMB3_pswitch
        image_speed = 0.15
        break
    case 2:
        sprite_index = spr_pswitch
        image_speed = 0.15
        break
}

inup = 0
press = 0
mytop = instance_create(x, y, obj_solidtop)


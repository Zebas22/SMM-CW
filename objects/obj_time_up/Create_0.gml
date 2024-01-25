if (obj_persistent.modo_android == 1 && global.controles_tactiles == 1)
{
    with (obj_persistent)
    {
        event_user(4)
        event_user(5)
    }
}
switch global.idioma
{
    case 0:
	sprite_index = spr_timeup
        break
    case 1:
	sprite_index = spr_timeup_en
        break
    default:
	sprite_index = spr_timeup
        break
}
image_speed = 0.4


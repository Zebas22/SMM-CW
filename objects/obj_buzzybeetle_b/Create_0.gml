var dark;
if (global.bg_level == "castle" || global.bg_level == "ghost" || global.bg_level == "underground" || global.modo_noche == 1)
    dark = 1
else
    dark = 0
switch global.apariencia
{
    case 0:
        if (dark == 1)
            sprite_index = spr_SMB_buzzybeetle_night_b
        else
            sprite_index = spr_SMB_buzzybeetle_b
        sprite_wings = spr_SMB_wings_b
        break
    case 1:
        if (dark == 1)
            sprite_index = spr_SMB3_buzzybeetle_night_b
        else
            sprite_index = spr_SMB3_buzzybeetle_b
        sprite_wings = spr_SMB3_wings_b
        break
    case 2:
        sprite_wings = spr_wings_b
        break
}

hardness = 1
stomp = 0
edible = 0
direct = -1
inup = 0
draw_invert = 0
big = 0
wings = 0
wings_anim = 0
paracaidas = 0
mytopid = obj_lighting
ready = 0
big = 0
innave = 0
dead_h = 0
apilar = 0
swimming = 0
modo_lava = 0
cankill = 0
alarm[0] = 5
alarm[10] = 2
if (global.apariencia == 3)
    image_speed = 0.5
else
    image_speed = 0.15


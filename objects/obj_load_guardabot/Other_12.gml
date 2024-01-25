__background_set((7 << 0), 3, 0x000001 )
switch global.bg_level
{
    case "ground":
        __background_set( e__BG.Index, (0 << 0), scr_bg_ground( ))
        obj_levelmanager.levelmusic = scr_snd_ground()
        break
    case "underground":
        __background_set( e__BG.Index, (0 << 0), scr_bg_underground( ))
        obj_levelmanager.levelmusic = scr_snd_underground()
        break
    case "castle":
        __background_set( e__BG.Index, (0 << 0), scr_bg_castle( ))
        obj_levelmanager.levelmusic = scr_snd_castle()
        break
    case "underwater":
        __background_set( e__BG.Index, (0 << 0), scr_bg_underwater( ))
        obj_levelmanager.levelmusic = scr_snd_underwater()
        break
    case "ghost":
        __background_set( e__BG.Index, (0 << 0), scr_bg_ghost_house())
        obj_levelmanager.levelmusic = scr_snd_ghost_house()
        break
    case "airship":
        __background_set( e__BG.Index, (0 << 0), scr_bg_airship( ))
        obj_levelmanager.levelmusic = scr_snd_airship()
        break
    case "sky":
        __background_set( e__BG.Index, (0 << 0), scr_bg_sky( ))
        obj_levelmanager.levelmusic = scr_snd_sky()
        break
    case "desert":
        __background_set( e__BG.Index, (0 << 0), scr_bg_desert( ))
        obj_levelmanager.levelmusic = scr_snd_desert()
        break
    case "snow":
        __background_set( e__BG.Index, (0 << 0), scr_bg_snow( ))
        obj_levelmanager.levelmusic = scr_snd_snow()
        break
}

obj_levelmanager.levelmusic_original = obj_levelmanager.levelmusic
if (room == rm_title)
{
        obj_levelmanager.levelmusic = snd_titlemusic
}
if (global.bg_level == "castle")
{
    if instance_exists(obj_lava_water)
    {
        with (obj_lava_water)
            instance_destroy()
    }
    with (instance_create(camera_get_view_x(view_get_camera(0)), (pos_y + 12), obj_lava_water))
    {
        switch global.apariencia
        {
            case 0:
                sprite_index = spr_SMB_lava
                break
            case 1:
                sprite_index = spr_SMB3_lava
                break
            case 2:
                sprite_index = spr_lava
                break
        }

        pos_y = other.pos_y
        pos_y_limit = other.pos_y_limit
    }
}else
if instance_exists(obj_lava_water)
{
    with (obj_lava_water)
        instance_destroy()
}
scr_create_bg_anim()
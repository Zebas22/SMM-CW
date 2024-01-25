with (instance_create((x - 8), (y - 8), obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
audio_play_sound(snd_change_night_day, 0, false)
if (global.modo_noche == 0)
    global.modo_noche = 1
else
    global.modo_noche = 0
__background_set((7 << 0), 3, 0x000001 )
switch global.bg_level
{
    case "ground":
        event_user(0)
        __background_set( e__BG.Index, (0 << 0), scr_bg_ground( ))
        obj_levelmanager.levelmusic = scr_snd_ground()
        s_music_editor = scr_snd_editor_ground()
        break
    case "underground":
        event_user(0)
        __background_set( e__BG.Index, (0 << 0), scr_bg_underground( ))
        obj_levelmanager.levelmusic = scr_snd_underground()
        s_music_editor = scr_snd_editor_underground()
        break
    case "castle":
        event_user(0)
        __background_set( e__BG.Index, (0 << 0), scr_bg_castle( ))
        obj_levelmanager.levelmusic = scr_snd_castle()
        s_music_editor = scr_snd_editor_castle()
        break
    case "underwater":
        event_user(0)
        __background_set( e__BG.Index, (0 << 0), scr_bg_underwater( ))
        obj_levelmanager.levelmusic = scr_snd_underwater()
        s_music_editor = scr_snd_editor_underwater()
        break
    case "ghost":
        event_user(0)
        __background_set( e__BG.Index, (0 << 0), scr_bg_ghost_house())
        obj_levelmanager.levelmusic = scr_snd_ghost_house()
        s_music_editor = scr_snd_editor_ghost()
        break
    case "airship":
        event_user(0)
        __background_set( e__BG.Index, (0 << 0), scr_bg_airship( ))
        obj_levelmanager.levelmusic = scr_snd_airship()
        s_music_editor = scr_snd_editor_airship()
        break
    case "sky":
        event_user(0)
        __background_set( e__BG.Index, (0 << 0), scr_bg_sky( ))
        obj_levelmanager.levelmusic = scr_snd_sky()
        s_music_editor = scr_snd_editor_sky()
        break
    case "desert":
        event_user(0)
        __background_set( e__BG.Index, (0 << 0), scr_bg_desert( ))
        obj_levelmanager.levelmusic = scr_snd_desert()
        s_music_editor = scr_snd_editor_desert()
        break
    case "snow":
        event_user(0)
        __background_set( e__BG.Index, (0 << 0), scr_bg_snow( ))
        obj_levelmanager.levelmusic = scr_snd_snow()
        s_music_editor = scr_snd_editor_snow()
        break
}

obj_levelmanager.levelmusic_original = obj_levelmanager.levelmusic
scr_create_bg_anim()
audio_stop_sound(obj_creator_jugar_editar.music_editor)
audio_play_sound(s_music_editor, 99, true)
obj_creator_jugar_editar.music_editor = s_music_editor
event_user(4)
if (obj_levelmanager.editor == 1 && instance_exists(obj_card_logo))
{
	__background_set((7 << 0), 3, 0x000001 )
    audio_play_sound(snd_seleccion_entorno1, 0, false)
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
            __background_set( e__BG.Index, (0 << 0), scr_bg_underwater())
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
    if (global.apariencia != 0 && instance_exists(obj_card_item))
    {
        global.flower = 0
        with (obj_card_item)
        {
            if (obj == obj_superflower_res)
            {
                obj = obj_fireflower_res
                obj_draw = 61
            }
        }
    }
    scr_create_bg_anim()
    audio_stop_sound(obj_creator_jugar_editar.music_editor)
    audio_play_sound(s_music_editor, 99, true)
    obj_creator_jugar_editar.music_editor = s_music_editor
    instance_activate_object(obj_player_trail)
    if instance_exists(obj_player_trail)
    {
        with (obj_player_trail)
            instance_destroy()
    }
    with (obj_apariencia)
        event_user(0)
    with (obj_editormanager)
        alarm[0] = 15
	with (obj_ground)
		alarm[3] = 1
	with (obj_ground2)
		alarm[3] = 1
	with (obj_ground3)
		alarm[3] = 1
}
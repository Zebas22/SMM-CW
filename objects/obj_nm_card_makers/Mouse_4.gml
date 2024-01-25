if (obj_makers.active == 1  && (!instance_exists(obj_edit_menu)) && (!instance_exists(obj_settings_panel)) && obj_makers.loading == 0 && y > 40)
{
    audio_play_sound(snd_aceptar, 0, false)
    obj_makers.active = 0
	with (instance_create_depth(0, 0, -10, obj_panel_makers))
    {
        alias = other.alias
    }
}
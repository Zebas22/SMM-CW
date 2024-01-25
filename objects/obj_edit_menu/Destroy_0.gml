if instance_exists(obj_button_home)
{
    with (obj_button_home)
        instance_destroy()
}
with (obj_button_close_menu)
    instance_destroy()
with (obj_settings_button)
    instance_destroy()
with (obj_profile)
    instance_destroy()
if instance_exists(obj_expand)
{
    with (obj_expand)
        active = 0
}
if ((!instance_exists(obj_settings_panel)) && (!instance_exists(obj_window_alert)) && instance_exists(obj_creator_jugar_editar))
    audio_resume_sound(obj_creator_jugar_editar.music_editor)
if (instance_exists(obj_gb_button) && (!instance_exists(obj_settings_panel)))
{
    with (obj_gb_button)
        alarm[0] = 10
    with (obj_btn_reload)
        alarm[0] = 10
}
if (instance_exists(obj_nivelesmundiales) && (!instance_exists(obj_settings_panel)) && (!instance_exists(obj_nm_card_expand)) && ((!instance_exists(obj_nm_button_retry)) || (instance_exists(obj_nm_button_retry) && obj_nm_button_retry.image_index == 0)))
{
    with (obj_nivelesmundiales){
        alarm[1] = 4
	}
}



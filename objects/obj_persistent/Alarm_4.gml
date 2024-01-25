if (ready == 0)
{
    ready = 1
    room_goto(rm_intro)
}
else
{
    with (obj_intro_controller)
        instance_destroy()
    audio_play_sound(snd_add_paracaidas, 0, false)
    __background_set( e__BG.Index, (0 << 0), bg_lg )
    instance_create(0, 0, obj_login_control)
    instance_create(192, 123, obj_btn_invitado)
    instance_create(192, 150, obj_btn_iniciar)
    instance_create(192, 177, obj_btn_reg)
    instance_create(0, 0, obj_cursor)
	with (instance_create((camera_get_view_x(view_get_camera(0)) + 349), (camera_get_view_y(view_get_camera(0)) + 187), obj_settings_button)){
    sprite_index = spr_settings_button_about2
	image_index = 2
	}
    instance_create((camera_get_view_x(view_get_camera(0)) + 16), (camera_get_view_y(view_get_camera(0)) + 192), obj_version)
	}


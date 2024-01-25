if (sprite_index == spr_panel_autoavance_anim)
{
    image_speed = 0
    image_index = 4
    with (instance_create((camera_get_view_x(view_get_camera(0)) + 72), (camera_get_view_y(view_get_camera(0)) + 61), obj_button_autoavance))
    {
        if (global.autoavance == 0)
        {
            image_index = 1
            c_button = 16777215
        }
    }
    with (instance_create((camera_get_view_x(view_get_camera(0)) + 72), (camera_get_view_y(view_get_camera(0)) + 84), obj_button_autoavance))
    {
        sprite = spr_btn_autoscroll_slow
        if (global.idioma == 0)
			text = "Lento"
        else if (global.idioma == 1)
			text = "Slow"
        else
			text = "Lento"
        value = 1
        if (global.autoavance == 1)
        {
            image_index = 1
            c_button = 16777215
        }
    }
    with (instance_create((camera_get_view_x(view_get_camera(0)) + 72), (camera_get_view_y(view_get_camera(0)) + 107), obj_button_autoavance))
    {
        sprite = spr_btn_autoscroll_medium
        if (global.idioma == 0)
        {
        text = "Normal"
        }
        else if (global.idioma == 1)
        {
        text = "Normal"
        }
        else if (global.idioma == 2)
        {
        text = "Normale"
        }
        else if (global.idioma == 2)
        {
        text = "Normal"
        }
        value = 2
        if (global.autoavance == 2)
        {
            image_index = 1
            c_button = 16777215
        }
    }
    with (instance_create((camera_get_view_x(view_get_camera(0)) + 72), (camera_get_view_y(view_get_camera(0)) + 130), obj_button_autoavance))
    {
        sprite = spr_btn_autoscroll_fast
        if (global.idioma == 0)
        {
        text = "Rapido"
        }
        else if (global.idioma == 1)
        {
        text = "Fast"
        }
        else if (global.idioma == 2)
        {
        text = "Veloce"
        }
        else if (global.idioma == 2)
        {
        text = "Rapido"
        }
        value = 3
        if (global.autoavance == 3)
        {
            image_index = 1
            c_button = 16777215
        }
    }
    instance_create((camera_get_view_x(view_get_camera(0)) + 103), (camera_get_view_y(view_get_camera(0)) + 158), obj_button_ok)
}



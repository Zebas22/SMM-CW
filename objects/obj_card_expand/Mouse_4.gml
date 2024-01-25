if (obj_levelmanager.editor == 1)
{
    with (obj_card_item)
    {
        if (value == 0)
            other.id_card_0 = id
        if (value == 1)
            other.id_card_1 = id
        if (value == 2)
            other.id_card_2 = id
        if (value == 3)
            other.id_card_3 = id
        if (value == 4)
            other.id_card_4 = id
        if (value == 5)
            other.id_card_5 = id
        if (value == 6)
            other.id_card_6 = id
        if (value == 7)
            other.id_card_7 = id
        if (value == 8)
            other.id_card_8 = id
        if (value == 9)
            other.id_card_9 = id
		if (value == 10)
            other.id_card_10 = id
       
       
    }
    if (obj != id_card_0.obj && obj != id_card_1.obj && obj != id_card_2.obj && obj != id_card_3.obj && obj != id_card_4.obj && obj != id_card_5.obj && obj != id_card_6.obj && obj != id_card_7.obj && obj != id_card_8.obj && obj != id_card_9.obj && obj != id_card_10.obj)
    {
        with (id_card_0)
        {
            obj = other.id_card_1.obj
            obj_draw = other.id_card_1.obj_draw
        }
        with (id_card_1)
        {
            obj = other.id_card_2.obj
            obj_draw = other.id_card_2.obj_draw
        }
        with (id_card_2)
        {
            obj = other.id_card_3.obj
            obj_draw = other.id_card_3.obj_draw
        }
        with (id_card_3)
        {
            obj = other.id_card_4.obj
            obj_draw = other.id_card_4.obj_draw
        }
        with (id_card_4)
        {
            obj = other.id_card_5.obj
            obj_draw = other.id_card_5.obj_draw
        }
        with (id_card_5)
        {
            obj = other.id_card_6.obj
            obj_draw = other.id_card_6.obj_draw
        }
        with (id_card_6)
        {
            obj = other.id_card_7.obj
            obj_draw = other.id_card_7.obj_draw
        }
        with (id_card_7)
        {
            obj = other.id_card_8.obj
            obj_draw = other.id_card_8.obj_draw
        }
        with (id_card_8)
        {
            obj = other.id_card_9.obj
            obj_draw = other.id_card_9.obj_draw
        }
		with (id_card_9)
        {
            obj = other.id_card_10.obj
            obj_draw = other.id_card_10.obj_draw
        }
       
        with (obj_card_item)
            active = 0
        with (id_card_10)
        {
            obj = other.obj
            obj_draw = other.obj_draw
            if (other.obj == obj_pink_coin && instance_number(obj_pink_coin) == 5)
            {
            }
            else if (other.obj != obj_angrysun)
                active = 1
        }
        with (obj_cursor)
        {
            item_add_temp = other.obj
            alarm[0] = 15
        }
        audio_play_sound(snd_select_tile, 0, false)
        with (obj_cursor)
        {
            if (cont_panel_right == 3)
                cont_panel_right = 2
            if (cont_panel_left == 3)
                cont_panel_left = 2
            if (cont_panel_top == 3)
                cont_panel_top = 2
            cont_panel_creator = 2
        }
        if (obj_persistent.modo_android == 1)
            obj_creator_jugar_editar.visible = true
        obj_expand.visible = true
        with (obj_panel_expand)
            instance_destroy()
        if (obj_persistent.modo_android == 1 && global.controles_tactiles == 1)
        {
            with (obj_persistent)
                event_user(2)
        }
    }
    else
        audio_play_sound(snd_wrong, 0, false)
}
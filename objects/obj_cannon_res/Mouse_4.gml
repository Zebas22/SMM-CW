if (obj_levelmanager.editor == 1 && global.resource_create == 0 && scr_insideview() && obj_levelmanager.editor_sonidos == 0 && object_index != obj_resource_empty && obj_editormanager.expand_open == 0 && (!collision_rectangle((floor((mouse_x / 16)) * 16), (floor((mouse_y / 16)) * 16), ((floor((mouse_x / 16)) * 16) + 15), ((floor((mouse_y / 16)) * 16) + 15), obj_parent_layout, 1, 1)) && (!place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_parent_layout)))
{
    if (global.editor_activity == 1 && obj_editormanager.expand_open == 0 && (!place_meeting(x, y, obj_creator_jugar_editar)) && (!place_meeting(x, y, obj_panel_expand)))
    {
        if (global.cursor == 0)
        {
            if (obj_parent_resource.alarm[0] == -1 && alarm[0] == -1)
            {
                if (mouse_x > (x + 4) && mouse_x < (x + 12) && mouse_y > (y + 4) && mouse_y < (y + 12))
                {
                    audio_play_sound(snd_change_arrow, 0, false)
                    if (d == 1)
                    {
                        if (direct == 4)
                            direct = 0
                        else
                            direct++
                    }
                    else if (u == 1)
                    {
                        if (direct == 0)
                            direct = 4
                        else if (direct == 7)
                            direct = 0
                        else
                            direct++
                    }
                    else if (r == 1)
                    {
                        if (direct == 6)
                            direct = 2
                        else
                            direct++
                    }
                    else if (l == 1)
                    {
                        if (direct == 7)
                            direct = 0
                        else if (direct == 2)
                            direct = 6
                        else
                            direct++
                    }
                    expand = 1
                }
                else
                {
                    audio_play_sound(snd_ground_bomb, 0, false)
                    xx = (x - mouse_x)
                    yy = (y - mouse_y)
                    with (obj_creation_preview)
                    {
                        xx = other.xx
                        yy = other.yy
                    }
                    x_start = x
                    y_start = y
                    global.resource_block = 1
                    drag = 1
                    obj_cursor.move = 1
                    ventana = 1
                    global.cursor = 1
                    with (obj_cursor)
                        event_user(0)
                    if (!instance_exists(obj_effect_touch))
                        instance_create(mouse_x, mouse_y, obj_effect_touch)
                    global.resource_move = object_index
                    alarm[0] = 1
                }
            }
        }
    }
}


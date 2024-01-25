if (room == rm_editor && instance_exists(obj_levelmanager) && obj_levelmanager.editor == 1 && instance_exists(obj_editormanager) && scr_insideview() && obj_editormanager.zoom == 0 && (obj_editormanager.expand_open == 0 || obj_levelmanager.editor_sonidos == 1))
{
    if ((!(place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_parent_layout))) && (!(collision_rectangle((floor((mouse_x / 16)) * 16), (floor((mouse_y / 16)) * 16), ((floor((mouse_x / 16)) * 16) + 15), ((floor((mouse_y / 16)) * 16) + 15), obj_ground2, 1, 1))) && (!(place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_ground2))) && (!(collision_rectangle((floor((mouse_x / 16)) * 16), (floor((mouse_y / 16)) * 16), ((floor((mouse_x / 16)) * 16) + 15), ((floor((mouse_y / 16)) * 16) + 15), obj_ground3, 1, 1))) && (!(place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_ground3))))
    {
        if (global.cursor == 0 && global.editor_activity == 1 && global.select_resource != obj_resource_empty && (((!(collision_rectangle((floor((mouse_x / 16)) * 16), (floor((mouse_y / 16)) * 16), ((floor((mouse_x / 16)) * 16) + 15), ((floor((mouse_y / 16)) * 16) + 15), obj_parent_resource, 1, 1))) && (!(place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_parent_resource)))) || (place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_parent_sounds) && obj_levelmanager.editor_sonidos == 0)) && (!(place_meeting(x, y, obj_arrow_lock))) && obj_creation_preview.place == 0 && (obj_cursor.dont_move == 0 || obj_cursor.dont_move == 2) && global.select_resource != obj_ground && global.select_resource != obj_block_res && global.select_resource != obj_rock_res && global.select_resource != obj_ice_res && global.select_resource != obj_onoffplatform_res && global.select_resource != obj_onoffplatform_blue_res && global.select_resource != obj_pblock_res && global.select_resource != obj_pblock2_res && global.select_resource != obj_qblock_res && global.select_resource != obj_block_hidden_res && global.select_resource != obj_pinchos_res)
        {
            global.resource_create = 1
            event_user(1)
        }
        else if (obj_levelmanager.editor_sonidos == 1)
        {
            if (obj_persistent.modo_android == 1 && move_view == 0 && global.select_resource == obj_resource_empty && ((!(collision_rectangle((floor((mouse_x / 16)) * 16), (floor((mouse_y / 16)) * 16), ((floor((mouse_x / 16)) * 16) + 15), ((floor((mouse_y / 16)) * 16) + 15), obj_parent_resource, 1, 1))) || collision_rectangle((floor((mouse_x / 16)) * 16), (floor((mouse_y / 16)) * 16), ((floor((mouse_x / 16)) * 16) + 15), ((floor((mouse_y / 16)) * 16) + 15), obj_ground, 1, 1)) && ((!(place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_parent_resource))) || place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_ground)) && (!(collision_rectangle((floor((mouse_x / 16)) * 16), (floor((mouse_y / 16)) * 16), ((floor((mouse_x / 16)) * 16) + 15), ((floor((mouse_y / 16)) * 16) + 15), obj_mario_editor, 1, 1))) && (!(place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_mario_editor))) && move_tuberia == 0 && global.cursor == 0)
                move_view = 1
        }
    }
}
if instance_exists(obj_ventana)
{
    with (obj_ventana)
    {
        if (can_anim == 0)
            can_anim2 = 1
    }
}
if instance_exists(obj_ventana_mario)
{
    with (obj_ventana_mario)
    {
        if (can_anim == 0)
            can_anim2 = 1
    }
}

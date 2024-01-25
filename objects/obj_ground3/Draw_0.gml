if (obj_levelmanager.editor == 1)
{
    switch global.apariencia
    {
        case 0:
            if (global.bg_level == "snow")
            {
                draw_sprite(spr_SMB_meta_res, 0, (x - 8), (y - 168))
                draw_sprite(spr_castles_res, 1, (x + 80), (y - 80))
            }
            else if (global.bg_level == "castle")
            {
                draw_sprite(spr_hacha_res, 0, x, y)
                draw_sprite(spr_hacha2_res, 0, x, y)
                draw_sprite(spr_castles_res, 2, (x + 80), (y - 80))
            }
            else
            {
                draw_sprite(spr_SMB_meta_res, 0, (x - 8), (y - 168))
                draw_sprite(spr_castles_res, 0, (x + 80), (y - 80))
            }
            break
        case 1:
            if (global.bg_level == "castle")
            {
                draw_sprite(spr_hacha_res, 1, x, y)
                draw_sprite(spr_hacha2_res, 1, x, y)
                draw_sprite(spr_castles_res, 3, (x + 80), (y - 80))
            }
            else
            {
                draw_sprite(spr_SMB3_bg_goal, 0, (room_width - 310), 0)
                draw_sprite(spr_SMB3_goal_draw, 0, (room_width - 307), (y - 97))
                draw_sprite(spr_SMB3_meta_res, 0, x, (y - 95))
            }
            break
        case 2:
            if (global.bg_level == "castle")
            {
                draw_sprite(spr_hacha_res, 2, x, y)
                draw_sprite(spr_hacha2_res, 2, x, y)
                draw_sprite(spr_castles_res, 4, (x + 80), (y - 80))
            }
            else
                draw_sprite(spr_SMW_meta_res, 0, x, (y - 137))
            break
    }

}
for (v = 0; v < size_y; v++)
{
    for (h = 0; h < size_x; h++)
    {
        if (v == 0)
        {
            if (h == 0)
                image_index = 9
            else
                image_index = 21
        }
        else if (h == 0)
            image_index = 18
        else
            image_index = 47
        draw_sprite_ext(sprite_index, image_index, (x + (h * 16)), (y + (v * 16)), 1, 1, 0, c_white, 1)
    }
}
if (obj_levelmanager.editor == 1)
{
    if (draw_p == 1)
        draw_sprite_ext(spr_move_ground3_move, anim, x, y, 1, 1, 0, c_white, 1)
    else
        draw_sprite_ext(spr_move_ground3, 0, x, y, 1, 1, 0, c_white, 1)
}

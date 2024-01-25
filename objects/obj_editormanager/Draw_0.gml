if instance_exists(obj_erase)
{
    if (obj_erase.active == 1 && zoom == 0)
        draw_sprite(spr_bg_goma_de_borrar, anim_goma, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)))
}
draw_sprite_ext(spr_panel_right, 0, (((camera_get_view_x(view_get_camera(0)) + camera_get_view_width(view_get_camera(0))) - 36) + obj_cursor.anim_right), camera_get_view_y(view_get_camera(0)), 1, 1, 0, c_white, 1)
draw_sprite_ext(spr_banner, 0, camera_get_view_x(view_get_camera(0)), (camera_get_view_y(view_get_camera(0)) - obj_cursor.anim_top), 1, 1, 0, c_white, 1)
if (instance_exists(obj_erase) && obj_erase.active == 1 && zoom == 0)
    draw_sprite(spr, 3, ((camera_get_view_x(view_get_camera(0)) + 60) - obj_cursor.anim_left), ((camera_get_view_y(view_get_camera(0)) + 34) - obj_cursor.anim_top))


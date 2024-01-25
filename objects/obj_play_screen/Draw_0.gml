draw_set_font(global.font_hd2)
draw_set_color(c_white)
if (object_index == obj_play_screen)
{
    draw_sprite_ext(spr_creator_top, 0, (camera_get_view_x(view_get_camera(0)) + 197), (camera_get_view_y(view_get_camera(0)) + 130), image_xscale, image_yscale, rot2, c_white, 1)
    draw_sprite_ext(sprite_index, global.idioma, (camera_get_view_x(view_get_camera(0)) + 197), (camera_get_view_y(view_get_camera(0)) + 130), image_xscale, image_yscale, rot1, c_white, 1)
	draw_text_transformed((camera_get_view_x(view_get_camera(0)) + 208), y + 12, "Jugar",0.3335,0.3335,rot1)
}
else
{
    draw_sprite_ext(spr_creator_top, 0, (camera_get_view_x(view_get_camera(0)) + 135), (camera_get_view_y(view_get_camera(0)) + 130), image_xscale, image_yscale, rot2, c_white, 1)
    draw_sprite_ext(sprite_index, global.idioma, (camera_get_view_x(view_get_camera(0)) + 135), (camera_get_view_y(view_get_camera(0)) + 130), image_xscale, image_yscale, rot1, c_white, 1)
	draw_text_transformed((camera_get_view_x(view_get_camera(0)) + 146), y + 12, "Crear",0.3335,0.3335,rot1)
}
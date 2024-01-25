var pos;
if (camera_get_view_y(view_get_camera(0)) >= (y + 16))
    pos = camera_get_view_y(view_get_camera(0))
else
    pos = (y + 4)
draw_sprite_ext(img_sprite, global.apariencia, camera_get_view_x(view_get_camera(0)), pos, ((camera_get_view_width(view_get_camera(0)) + 16) / 16), ((camera_get_view_height(view_get_camera(0)) + 16) / 16), 0, c_white, image_alpha)
num_tile_ancho = 16
num_ancho = ceil((room_width / num_tile_ancho))
for (i = 0; i < num_ancho; i++)
	draw_sprite_ext(sprite_index, image_index, (i * num_tile_ancho), (y - 12), 1, 1, 0, c_white, image_alpha)
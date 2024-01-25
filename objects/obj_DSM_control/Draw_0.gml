var alpha = 0.5
draw_sprite(spr_DSM_bg, difficulty, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)))
draw_sprite(spr_DSM_grid, 0, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)))
draw_sprite(spr_DSM_banner, 0, 0, 24)
draw_sprite_ext(spr_nm_bg2, 0, 0, 0,0.3334,0.3334,0,c_white,1)
draw_sprite_ext(spr_nm_bg2, 1, 192, 0,0.3334,0.3334,0,c_white,1)
draw_sprite_ext(spr_dsm_panel_, 0, 163, 59,0.3334,0.3334,0,c_white,1)
draw_set_font(global.font_hd)
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_text_transformed(203, 63, string(livess),0.3334,0.3334,0)
draw_text_transformed(190, 74, string(nivel),0.3334,0.3334,0)
draw_sprite_ext(spr_dsm_panel_, 1, 9, 59,0.3334,0.3334,0,c_white,1)
draw_text_transformed(38, 64, "Record",0.3334,0.3334,0)
draw_text_transformed(40, 74, string(record),0.3334,0.3334,0)
draw_sprite_ext(spr_dsm_panel_, 1, 317, 59,0.3334,0.3334,0,c_white,1)
draw_text_transformed(346, 64, "Ranking",0.3334,0.3334,0)
draw_text_transformed(348, 74, string(rank),0.3334,0.3334,0)
draw_set_halign(fa_left)
draw_sprite_ext(spr_DSM_line1, 0, 36,  136, image_xscale, image_yscale, image_angle, image_blend, alpha)
draw_sprite_ext(spr_DSM_line2, 0, 100, 158, image_xscale, image_yscale, image_angle, image_blend, alpha)
draw_sprite_ext(spr_DSM_line3, 0, 145, 113, image_xscale, image_yscale, image_angle, image_blend, alpha)
draw_sprite_ext(spr_DSM_line2, 0, 191, 158, image_xscale, image_yscale, image_angle, image_blend, alpha)
draw_sprite_ext(spr_DSM_line3, 0, 236, 113, image_xscale, image_yscale, image_angle, image_blend, alpha)
draw_sprite_ext(spr_DSM_line4, 0, 282, 158, image_xscale, image_yscale, image_angle, image_blend, alpha)
for (var i = 0; i < 48; i++)
    draw_sprite_ext(spr_DSM_footer, difficulty, (i * 8), (room_height - 29),0.3334,0.3334,0,c_white,1)
if (loading == 1)
{
    draw_set_color(c_white)
    draw_set_halign(fa_center)
     draw_text((camera_get_view_x(view_get_camera(0)) + 304), (camera_get_view_y(view_get_camera(0)) + 196), string_hash_to_newline("Please wait..."))
    draw_sprite_ext(spr_load_image, 1, (camera_get_view_x(view_get_camera(0)) + 350), (camera_get_view_y(view_get_camera(0)) + 203), 1, 1, rot, c_white, 1)
    draw_set_halign(fa_left)
}
if(global.init_DSM == 0)
	draw_sprite(spr_dsm_level_point,1,x_nivel0,y_nivel0)
if (global.init_DSM >= 1) {
	draw_sprite(spr_dsm_level_point,0,x_nivel0,y_nivel0)
	if(global.init_DSM == 1)
	    draw_sprite(spr_dsm_level_point,1,x_nivel1,y_nivel1)
}
if (global.init_DSM >= 2) {
	draw_sprite(spr_dsm_level_point,0,x_nivel1,y_nivel1)
	if(global.init_DSM == 2)
	    draw_sprite(spr_dsm_level_point,1,x_nivel2,y_nivel2)
}
if (global.init_DSM >= 3) {
	draw_sprite(spr_dsm_level_point,0,x_nivel2,y_nivel2)
	if(global.init_DSM == 3)
	    draw_sprite(spr_dsm_level_point,1,x_nivel3,y_nivel3)
}
if (global.init_DSM >= 4) {
	draw_sprite(spr_dsm_level_point,0,x_nivel3,y_nivel3)
	if(global.init_DSM == 4)
		draw_sprite(spr_dsm_level_point,1,x_nivel4,y_nivel4)
}
if (global.init_DSM == 5) {
	draw_sprite(spr_dsm_level_point,0,x_nivel4,y_nivel4)
	draw_sprite(spr_dsm_level_point,1,x_nivel5,y_nivel5)
}
draw_sprite(spr_SMB_mario_small_idle, 0, x_mario, y_mario)
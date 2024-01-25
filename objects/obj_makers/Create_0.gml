image_speed = 0
depth = 0
global.powerup = 0
global.mariostart = 0
global.modojuego = 0
global.cooldown = 0
global.minutos = 0
timer = 0
c_cont = make_colour_rgb(89, 15, 16)
type_consulta = 0
url = ""
num_rows = 0
rows_perpage = 0
pages = 0
levels = 0
page = global.pages_nm
active = 0
loading = 1
rot = 0
mensaje = ""
codigo = ""
audio_stop_sound(snd_niveles_mundiales)
audio_play_sound(snd_niveles_mundiales, 99, true)
pos = 54
list_post = 1
__background_set( e__BG.HSpeed, 0, -0.4)
__background_set( e__BG.VSpeed, 0, -0.4)
var lay_id = layer_get_id("Compatibility_Background_0_bg_nivelesmundiales");
var back_id = layer_background_get_id(lay_id);
layer_background_xscale(back_id, 0.3334);
layer_background_yscale(back_id, 0.3334);
instance_create((camera_get_view_x(view_get_camera(0)) + 360), camera_get_view_y(view_get_camera(0)) + 2, obj_menu_editor_ext)
instance_create((camera_get_view_x(view_get_camera(0)) + 4), (camera_get_view_y(view_get_camera(0)) + 185), obj_button_back)
with (instance_create_depth(20, 28, -2, obj_nm_tabs2))
{
	
	if (global.idioma == 0)
		text = "Rank de subidas"
	else if (global.idioma == 1)
			text = "Uploads Ranking"
	else if (global.idioma == 2)
			text = "Carregar Rank"
    value = 2
    if (global.tabmaker == 2)
    {
        obj_makers.type_consulta = 2
        image_index = 1
        c_color = 16777215
    }
}
with (instance_create_depth(106, 28, -2, obj_nm_tabs2))
{
	
	if (global.idioma == 0)
		text = "Rank de estrellas"
	else if (global.idioma == 1)
			text = "Star Ranking"
	else if (global.idioma == 2)
			text = "Rank por estrelas"
    value = 0
    if (global.tabmaker == 0)
    {
        obj_makers.type_consulta = 0
        image_index = 1
        c_color = 16777215
    }
}
with (instance_create_depth(193, 28, -2, obj_nm_tabs2))
{
    value = 1
	if (global.tabmaker == 1)
    {
		obj_makers.type_consulta = 1
        image_index = 1
        c_color = 16777215
    }
}
with (instance_create_depth(280, 28, -2, obj_nm_tabs2))
{
	if (global.idioma == 0)
		text = "Mi usuario"
	else if (global.idioma == 1)
			text = "My User"
	else if (global.idioma == 2)
			text = "Meu usuário"
	value = 4
	if (global.tabmaker == 4)
    {
		obj_makers.type_consulta = 4
        image_index = 1
        c_color = 16777215
    }
}
instance_create_depth(0, 96, 0, obj_nm_search_id_maker)
instance_create_depth(376, 58, 0, obj_scrollbar3)
alarm[0] = 5
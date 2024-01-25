image_speed = 0
search_advanced = ""
style_game = -1
course_theme = -1
dificultad = -1
tiempo = -1
historial = -1
reaccion = -1
orden = 0
explorelevel = "Courses"
global.powerup = 0
global.mariostart = 0
global.modojuego = 0
global.cooldown = 0
global.minutos = 0
robot_rot = 0
ry = 10
ry_start = 10
timer = 0
c_cont = make_colour_rgb(89, 15, 16)
type_consulta = 2
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
__background_set( e__BG.HSpeed, 0, -0.5)
__background_set( e__BG.VSpeed, 0, -0.5)
var lay_id = layer_get_id("Compatibility_Background_0_bg_nivelesmundiales");
var back_id = layer_background_get_id(lay_id);
layer_background_xscale(back_id, 0.3334);
layer_background_yscale(back_id, 0.3334);
instance_create((camera_get_view_x(view_get_camera(0)) + 360), camera_get_view_y(view_get_camera(0)) + 2, obj_menu_editor_ext)
instance_create((camera_get_view_x(view_get_camera(0)) + 4), (camera_get_view_y(view_get_camera(0)) + 185), obj_button_back)
with (instance_create(7, 28, obj_nm_tabs))
{
    if (global.tabvalue == 0)
    {
        obj_nivelesmundiales.type_consulta = 0
        image_index = 1
        c_color = 16777215
    }
}
with (instance_create(100, 28, obj_nm_tabs))
{
	
	if (global.idioma == 0)
			text = "Rank de Estrellas"
	else if (global.idioma == 1)
			text = "Star Ranking"
	else if (global.idioma == 2)
			text = "Rank de Estrelas"
    value = 1
    if (global.tabvalue == 1)
    {
        obj_nivelesmundiales.type_consulta = 1
        image_index = 1
        c_color = 16777215
    }
}
with (instance_create(193, 28, obj_nm_tabs))
{
	if (global.idioma == 0)
			text = "Nuevos Niveles"
	else if (global.idioma == 1)
			text = "New Arrivals"
	else if (global.idioma == 2)
			text = "Novos níveis"
    value = 2
    if (global.tabvalue == 2)
    {
        obj_nivelesmundiales.type_consulta = 2
        image_index = 1
        c_color = 16777215
    }
}
with (instance_create(286, 28, obj_nm_tabs))
{
	if (global.idioma == 0)
			text = "Desafío de Niveles"
	else if (global.idioma == 1)
			text = "Levels challenge"
	else if (global.idioma == 2)
			text = "Desafio de níveis"
    value = 4
    if (global.tabvalue == 3)
    {
        obj_nivelesmundiales.type_consulta = 4
        image_index = 1
        c_color = 16777215
    }
}
instance_create(376, 58, obj_scrollbar)
instance_create_depth(0, 131, -20, obj_nm_refresh)
instance_create_depth(0, 96, -20, obj_nm_search_id_btn)
with (instance_create(41, 4, obj_pages_button))
    direct = 2
with (instance_create(322, 4, obj_pages_button))
    direct = 1
alarm[0] = 5



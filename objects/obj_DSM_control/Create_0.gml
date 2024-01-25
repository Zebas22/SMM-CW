image_speed = 0
image_index = 0
x_nivel0 = 98
y_nivel0 = 157
x_nivel1 = 144
y_nivel1 = 112
x_nivel2 = 190
y_nivel2 = 157
x_nivel3 = 235
y_nivel3 = 112
x_nivel4 = 280
y_nivel4 = 157	
x_nivel5 = 341
y_nivel5 = 157
ready = 0
ready2 = 0
castle_pech = 0
flower = 0
anim_nubes = 0
if (global.DSM_level >= 0 && global.DSM_level < 5)
    world = 1
else if (global.DSM_level > 4 && global.DSM_level < 9)
    world = 2
else if (global.DSM_level > 8 && global.DSM_level < 13)
    world = 3
else
    world = 4
global.powerup = 0
global.mariostart = 0
global.modojuego = 0
global.dsm = 0
x_mario = 38
y_mario = 131
robot_rot = 0
timer = 0
c_cont = make_colour_rgb(89, 15, 16)
type_consulta = 5
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
pos = 54
list_post = 1
difficulty = 0
level_name = ""
creator_name = ""
style_game = ""
course_theme = ""
dificultad = ""
tiempo = ""
historial = ""
reaccion = ""
orden = ""
search_advanced = ""
livess = 10
nivel = 0
record = 0
rank = 0
switch difficulty
{
    case 0:
        dsm_music = snd_DSM_1
        break
    case 1:
        dsm_music = snd_DSM_2
        break
    case 2:
        dsm_music = snd_DSM_3
        break
    case 3:
        dsm_music = snd_DSM_4
        break
}

instance_create_depth((camera_get_view_x(view_get_camera(0)) + 317), (camera_get_view_y(view_get_camera(0)) + 89), -10, obj_DSM_castle_bowser)
instance_create((camera_get_view_x(view_get_camera(0)) + 360), (camera_get_view_y(view_get_camera(0)) + 2), obj_menu_editor_ext)
instance_create((camera_get_view_x(view_get_camera(0)) + 4), (camera_get_view_y(view_get_camera(0)) + 192), obj_button_back)
with (instance_create((camera_get_view_x(view_get_camera(0)) + 53), (camera_get_view_y(view_get_camera(0)) + 27), obj_DSM_tabs))
{
    text = "Facil"
    value = 0
	image_index = 1
	c_button = c_white
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 147), (camera_get_view_y(view_get_camera(0)) + 27), obj_DSM_tabs))
{
    text = "Normal"
	image_index = 0
    value = 1
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 241), (camera_get_view_y(view_get_camera(0)) + 27), obj_DSM_tabs))
{
    text = "Dificil"
	image_index = 0
    value = 2
}
alarm[0] = 80
image_speed = 0
image_index = 0
ready = 0
ready2 = 0
castle_pech = 0
flower = 0
anim_nubes = 0
x_level = 110
y_level = 148
x_mario = 44
y_mario = 132
if (global.DSM_2 == 0)
{
    if (global.DSM_level == 0)
    {
        x_level = 110
        x_mario = 44
		y_mario = 132
        y_level = 148
    }
    else if (global.DSM_level == 1)
    {
        x_level = 156
        x_mario = 110
		y_mario = 132
        y_level = 104
    }
    else if (global.DSM_level == 2)
    {
        x_level = 201
        x_mario = 156
		y_mario = 87
        y_level = 148
    }
    else if (global.DSM_level == 3)
    {
        x_level = 246
        x_mario = 201
		y_mario = 132
        y_level = 104
    }
    else if (global.DSM_level == 4)
    {
        x_level = 293
        x_mario = 246
		y_mario = 87
        y_level = 148
    }
    else if (global.DSM_level == 5)
    {
        x_level = 352
        x_mario = 293		
		y_mario = 132
        y_level = 148
    }
}
global.powerup = 0
global.mariostart = 0
global.modojuego = 0
robot_rot = 0
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
difficulty = global.DSM_dificultad
level_name = ""
creator_name = ""
style_game = ""
course_theme = ""
dificultad = ("&dificultad=" + string(0))
tiempo = ""
historial = ""
reaccion = ""
orden = ""
search_advanced = ""
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

with (instance_create_depth(x_level, y_level, -10, obj_DSM_level)){
image_index = global.DSM_dificultad
}
instance_create_depth(x_mario, y_mario, -11, obj_DSM_mario)
instance_create((camera_get_view_x(view_get_camera(0)) + 360), (camera_get_view_y(view_get_camera(0)) + 4), obj_menu_editor_ext)
instance_create((camera_get_view_x(view_get_camera(0)) + 4), (camera_get_view_y(view_get_camera(0)) + 190), obj_button_back)
alarm[0] = 5
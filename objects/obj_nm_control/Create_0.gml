animx[0]=52
animx[1]=20
animx[2]=114
animx[3]=240
animx[4]=270
animx[5]=357
animy[0]=29
animy[1]=80
animy[2]=105
animy[3]=123
animy[4]=16
animy[5]=70
i=0
o=2
e=4
switch os_get_language()
{
    case "es":
        img_1 = spr_nm_course_es
        break
    default:
        img_1 = spr_nm_course_en
        break
}
audio_stop_sound(snd_niveles_mundiales)
audio_play_sound(snd_niveles_mundiales, 0, false)
instance_create((camera_get_view_x(view_get_camera(0)) + 360), (camera_get_view_y(view_get_camera(0)) + 4), obj_menu_editor_ext)
with (instance_create((camera_get_view_x(view_get_camera(0)) + 135), (camera_get_view_y(view_get_camera(0)) + 179), obj_nm_button_big))
    disabled = 0
with (instance_create((camera_get_view_x(view_get_camera(0)) + 14), (camera_get_view_y(view_get_camera(0)) + 179), obj_nm_button_big))
{
    image_index = 1
	disabled = 0
    text = "Desafio 10 Marios"
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 256), (camera_get_view_y(view_get_camera(0)) + 179), obj_nm_button_big))
{
    image_index = 2
	disabled = 0
	if (global.idioma == 0)
		text = "Creadores"
	else if (global.idioma == 1)
			text = "Makers"
	else if (global.idioma == 2)
			text = "Criadores"
}
i = irandom_range(0,5)
with (instance_create_depth(animx[i], animy[i],-10,obj_anim_cw)){
	image_index = irandom_range(0,3)
}
alarm[5] = 5
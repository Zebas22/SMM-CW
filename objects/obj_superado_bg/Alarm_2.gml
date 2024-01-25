mensaje = "Hubo un Problema al publicar el nivel"
codigo = "002"
loading = 0
with (obj_continue_btn)
    instance_destroy()
with (instance_create((camera_get_view_x(view_get_camera(0)) + 136), (camera_get_view_y(view_get_camera(0)) + 130), obj_continue_btn)){
					if global.idioma = 0
						text = "Salir"
					else if global.idioma = 1
						text = "Exit Course"
					else if global.idioma = 2
						text = "Esci dal livello"
}
instance_create((camera_get_view_x(view_get_camera(0)) + 236), (camera_get_view_y(view_get_camera(0)) + 130), obj_cursor)


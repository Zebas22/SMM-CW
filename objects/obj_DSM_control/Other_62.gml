var resultado, map;
if (ds_map_find_value(async_load, "id") == url )
{
    if (ds_map_find_value(async_load, "status") == 0)
    {
        var resultado = ds_map_find_value(async_load, "result")
        var map = json_decode(resultado)
        if (map == -1)
        {
            show_debug_message("Resultado invalido")
            exit
        }
        if (!(ds_map_exists(map, "false")))
        {
            loading = 0
            active = 1
			livess = real(ds_map_find_value(map, "vidas"))
			global.lives22 = livess
			nivel = real(ds_map_find_value(map, "niveles"))
			global.init_DSM = nivel
			record = real(ds_map_find_value(map, "record"))
			rank = real(ds_map_find_value(map, "rank"))
			switch nivel
			{
			case 0:
			x_mario = 38
			y_mario = 131
			break
			
			case 1:
			x_mario = 103
			y_mario = 131
			break
			
			case 2:
			x_mario = 148
			y_mario = 85
			break

			case 3:
			x_mario = 194
			y_mario = 131
			break

			case 4:
			x_mario = 239
			y_mario = 85
			break
					
			default:
			x_mario = 284
			y_mario = 131
			break
				
				
			}
			instance_create_depth((camera_get_view_x(view_get_camera(0)) + 190), (camera_get_view_y(view_get_camera(0)) + 195), -10, obj_DSM_button_conti)
			instance_create_depth((camera_get_view_x(view_get_camera(0)) + 285), (camera_get_view_y(view_get_camera(0)) + 195), -10, obj_DSM_button)
        }
        else if ds_map_exists(map, "false")
        {
            loading = 0
			active = 1
            with (obj_DSM_button_conti)
                instance_destroy()
			with (instance_create_depth((camera_get_view_x(view_get_camera(0)) + 285), (camera_get_view_y(view_get_camera(0)) + 195), -10, obj_DSM_button))
			{
				old = 0	
			}
        }
        ds_map_destroy(map)
    }
}
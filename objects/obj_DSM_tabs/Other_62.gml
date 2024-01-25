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
            obj_DSM_control.active = 1
			obj_DSM_control.livess = real(ds_map_find_value(map, "vidas"))
			global.lives22 = obj_DSM_control.livess
			obj_DSM_control.nivel = real(ds_map_find_value(map, "niveles"))
			global.init_DSM = obj_DSM_control.nivel
			obj_DSM_control.record = real(ds_map_find_value(map, "record"))
			obj_DSM_control.rank = real(ds_map_find_value(map, "rank"))
			switch obj_DSM_control.nivel
			{
			case 0:
			obj_DSM_control.x_mario = 38
			obj_DSM_control.y_mario = 124
			break
			
			case 1:
			obj_DSM_control.x_mario = 103
			obj_DSM_control.y_mario = 124
			break
			
			case 2:
			obj_DSM_control.x_mario = 148
			obj_DSM_control.y_mario = 78
			break

			case 3:
			obj_DSM_control.x_mario = 194
			obj_DSM_control.y_mario = 124
			break

			case 4:
			obj_DSM_control.x_mario = 239
			obj_DSM_control.y_mario = 78
			break
					
			default:
			obj_DSM_control.x_mario = 284
			obj_DSM_control.y_mario = 124
			break
				
				
			}
        }
        else if ds_map_exists(map, "false")
        {
            loading = 0
			obj_DSM_control.active = 1
            with (obj_nm_button_retry)
                instance_destroy()
        }
        ds_map_destroy(map)
    }
}
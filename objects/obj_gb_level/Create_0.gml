var mundos, _wrapper, _list, _map;
instance_create((camera_get_view_x(view_get_camera(0)) + 212), (camera_get_view_y(view_get_camera(0)) + 85), obj_bt_gb_play)
instance_create((camera_get_view_x(view_get_camera(0)) + 212), (camera_get_view_y(view_get_camera(0)) + 110), obj_bt_gb_edit)
instance_create((camera_get_view_x(view_get_camera(0)) + 212), (camera_get_view_y(view_get_camera(0)) + 136), obj_bt_gb_delete)
instance_create((camera_get_view_x(view_get_camera(0)) + 326), (camera_get_view_y(view_get_camera(0)) + 60), obj_bt_gb_close)
c_etiquetas = c_dkgray
user = 0
fecha = 0
hora = 0
entorno = 0
modo_noche = 0
entorno_image = 0
index_stamp = 0
cant_reads = "Can't read the level"
if file_exists((global.directorio + global.levelguardabot))
{
    mundos = LoadJSONFromFile((global.directorio + global.levelguardabot))
    if (mundos == 0 || mundos == 0)
    {
        scr_toast(1, cant_reads)
        global.levelguardabot = ""
        global.apariencia = 2
        global.condiciones = 0
        global.condiciones_type = 0
        global.condiciones_object = 0
        global.condiciones_count = 0
        instance_destroy()
        exit
    }
    _wrapper = ds_map_find_value(mundos, "INICIO")
    if(ds_map_exists(_wrapper, "AJUSTES"))
			_list = ds_map_find_value(_wrapper, "AJUSTES")
		else
			_list = ds_map_find_value(_wrapper, "CONF")
    _map = ds_list_find_value(_list, 0)
    global.apariencia = ds_map_find_value(_map, "apariencia")
    user = ds_map_find_value(_map, "user")
    fecha = ds_map_find_value(_map, "date")
    hora = ds_map_find_value(_map, "time")
    entorno = ds_map_find_value(_map, "entorno")
    modo_noche = ds_map_find_value(_map, "modo_noche")
	if(global.apariencia == 0){
		image_apa = spr_nm_0_apariencia_expand
	}else{
		if(global.apariencia == 1){
		image_apa = spr_nm_1_apariencia_expand
	}else{
		image_apa = spr_nm_2_apariencia_expand
	}
	}
	switch entorno
    {
        case "underground":
            entorno_image = 1
            break
        case "castle":
            entorno_image = 2
            break
        case "underwater":
            entorno_image = 3
            break
        case "ghost":
            entorno_image = 4
            break
        case "airship":
            entorno_image = 5
            break
        case "desert":
            entorno_image = 6
            break
        case "snow":
            entorno_image = 7
            break
        default:
            entorno_image = 0
    }
    global.condiciones = ds_map_find_value(_map, "condiciones")
    global.condiciones_type = ds_map_find_value(_map, "condiciones_type")
    global.condiciones_object = ds_map_find_value(_map, "condiciones_object")
    global.condiciones_count = ds_map_find_value(_map, "condiciones_count")
	global.user_gb = user
    ds_map_destroy(_wrapper)
    var btn_pub = instance_create((camera_get_view_x(view_get_camera(0)) + 274), (camera_get_view_y(view_get_camera(0)) + 136), obj_bt_pub)
    global.tag1_pub = ""
    global.tag2_pub = ""
}
with (obj_toast)
    instance_destroy()
with (instance_create(camera_get_view_x(view_get_camera(0)) + 134, camera_get_view_y(view_get_camera(0)) + 216, obj_toast))
    image_index = 0
if instance_exists(obj_nm_card_expand)
    var name = obj_nm_card_expand.name
else
    name = "Sin nombre"
var files = file_text_open_write(((global.directorio + name) + ".cw"))
file_text_write_string(files, archivo)
file_text_close(files)
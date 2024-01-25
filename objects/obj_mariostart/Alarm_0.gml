visible = true
if (global.lives22 == 0)
    var pos = 192
else
    pos = 176
if (global.apariencia == 3)
    var posyy = 124
else
    posyy = 100
instance_create((camera_get_view_x(view_get_camera(0)) + pos), (camera_get_view_y(view_get_camera(0)) + posyy), obj_mariostart_m)
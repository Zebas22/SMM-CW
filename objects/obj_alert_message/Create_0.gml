instance_create((camera_get_view_x(view_get_camera(0)) + 168), (camera_get_view_y(view_get_camera(0)) + 132), obj_alert_button)
instance_create((camera_get_view_x(view_get_camera(0)) + 310), (camera_get_view_y(view_get_camera(0)) + 57), obj_alert_close)
obj_guardabot.active = 0
with (obj_bt_pub)
    image_index = 0
text = "In order to publish the level, you must verify#that you can beat it. Do you want to try it now?"
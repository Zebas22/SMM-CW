if ((!instance_exists(obj_lava_water)) && ((global.bg_level == "Mountain y Volcano") && (global.modo_noche == 1)))
{
    instance_create(__view_get( e__VW.XView, 0 ), (room_height - 4), obj_lava_water)
}
if ((instance_exists(obj_lava_water)) && ((global.bg_level == "Mountain y Volcano") && (global.modo_noche == 0)))
{
instance_destroy(obj_lava_water)
}
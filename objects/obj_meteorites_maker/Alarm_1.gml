/// @description Generate rain
instance_create(__view_get( e__VW.XView, 0 )+random(__view_get( e__VW.WView, 0 ) + 54)/*960)*/,__view_get( e__VW.YView, 0 )-16,obj_meteorites)
alarm[2] = 30
//instance_create(camera_get_view_x(view_get_camera(0))+random(camera_get_view_width(view_get_camera(0)) + 768),camera_get_view_y(view_get_camera(0))-16,obj_meteorites_big)

//alarm[1] = 150
//Create more thunder after a random amount of time
//alarm[0] = 1//random(115)+70//random(120)+130


/* */
/*  */

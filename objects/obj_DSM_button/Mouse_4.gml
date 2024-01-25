if (has_internet() && obj_DSM_control.active == 1){
	if(old == 0){
		loading = 1
		audio_play_sound(snd_aceptar, 0, false)
		alarm[0] = 80
	}
	else{
		instance_create_depth((camera_get_view_x(view_get_camera(0)) + 84), (camera_get_view_y(view_get_camera(0)) + 55), -30, obj_alert_new_dsm)
	}
}
if (has_internet() && obj_DSM_control.active == 1){
	global.DSM_level = global.init_DSM
	room_goto(rm_DSM_game)
}
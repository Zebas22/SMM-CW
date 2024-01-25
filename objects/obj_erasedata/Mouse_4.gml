if(global.eraserdata == 1){
var file_path;
file_path = working_directory + "Settings.dat";

if (file_exists(file_path)) {
	global.eraserdata = 0
    file_delete(file_path);
	game_restart()
} else {
	audio_play_sound(snd_wrong, 0, false)
}
}
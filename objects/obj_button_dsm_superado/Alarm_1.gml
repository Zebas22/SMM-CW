if (type == 0)
{
   if(global.init_DSM == 6)
	room_goto(rm_win)   
   else
	room_goto(rm_DSM_game)
   
}
else
{
    modo_juego = global.modojuego
    global.apariencia = 0
    global.ms_check = 0
    global.keys = 0
    scr_init_globals()
    audio_stop_sound(scr_snd_dead)
    audio_stop_sound(scr_snd_starman())
    audio_stop_sound(scr_snd_clown_damage())
	room_goto(rm_desafio_super_mario)
}



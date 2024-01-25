if (visible == true)
{
    if (room == rm_niveles_mundiales || room == rm_makers)
    {
        if ((!instance_exists(obj_edit_menu)) && (!instance_exists(obj_nm_card_expand)) && (!instance_exists(obj_nm_card_expand2)))
        {
            audio_play_sound(snd_back, 0, false)
            scr_init_globals()
            audio_stop_sound(snd_niveles_mundiales)
            room_goto(rm_course_world)
        }
		else if (!instance_exists(obj_edit_menu) && instance_exists(obj_nm_play) && obj_nm_play.image_index == 0)
        {
           audio_play_sound(snd_item_deselect, 0, false)
			with (obj_nm_card_expand)
				instance_destroy()
			with (obj_nm_card_expand2)
				instance_destroy()
			with (obj_nm_card_makers)
				visible = true
			with (obj_nm_card)
				visible = true
			with (obj_nivelesmundiales)
			{
				active = 1
				loading = 0
				mensaje = ""
				codigo = ""
			}
			with (obj_makers)
			{
				active = 1
				loading = 0
				mensaje = ""
				codigo = ""
			}
        }
    }
    else
    {
        audio_play_sound(snd_back, 0, false)
        scr_init_globals()
        audio_stop_sound(snd_DSM_1)
        audio_stop_sound(snd_DSM_2)
        audio_stop_sound(snd_DSM_3)
        audio_stop_sound(snd_DSM_4)
        audio_stop_sound(snd_niveles_mundiales)
        audio_stop_sound(snd_guardabot)
        room_goto(rm_title)
    }
}




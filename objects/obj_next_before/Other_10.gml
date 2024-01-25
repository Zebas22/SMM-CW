if (obj_levelmanager.editor == 1)
{	
    if (image_index == 0)
    {
            audio_stop_sound(snd_circle_5)
            audio_play_sound(snd_circle_5, 0, false)
        if (obj_panel_expand.value == 1)
        {		
			obj_panel_expand.value--
            with (obj_card_expand)
                instance_destroy()
            with (obj_panel_expand)
            {
                event_user(value)
            }
        }
    }
    else if (image_index == 1)
    {
            audio_stop_sound(snd_circle_7)
            audio_play_sound(snd_circle_7, 0, false)
        if (obj_panel_expand.value == 0)
        {		
			obj_panel_expand.value++
            with (obj_card_expand)
                instance_destroy()
            with (obj_panel_expand)
            {
                event_user(value)
            }
        }
    }
}